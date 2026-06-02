#!/usr/bin/env python3
"""Compute UZH protocol epsilon tables from deposited ACWF JSON results."""

from __future__ import annotations

import argparse
import csv
import json
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
ACWF_UTILS = ROOT / "scripts" / "acwf-verification" / "upstream" / "acwf_paper_plots"
sys.path.insert(0, str(ACWF_UTILS))

from quantities_for_comparison import epsilon, get_volume_scaling_to_formula_unit  # noqa: E402


RESULT_FILE = "results/results-unaries-verification-PBE-v1-cp2k.json"

COMPARISONS = {
    "total_original": (
        "CP2K-GTH-UZH",
        "SIRIUS-FP-LAPW",
        "data/cp2k-gth-uzh/original-settings",
        "data/sirius-fp-lapw/reference",
    ),
    "basis_original": (
        "CP2K-GTH-UZH",
        "SIRIUS-GTH-UZH",
        "data/cp2k-gth-uzh/original-settings",
        "data/sirius-gth-uzh/original-settings",
    ),
    "pseudopotential_original": (
        "SIRIUS-GTH-UZH",
        "SIRIUS-FP-LAPW",
        "data/sirius-gth-uzh/original-settings",
        "data/sirius-fp-lapw/reference",
    ),
    "basis_improved_subset": (
        "CP2K-GTH-UZH-new",
        "SIRIUS-GTH-UZH-new",
        "data/cp2k-gth-uzh/improved-basis-settings",
        "data/sirius-gth-uzh/improved-pseudopotentials",
    ),
    "pseudopotential_improved": (
        "SIRIUS-GTH-UZH-new",
        "SIRIUS-FP-LAPW",
        "data/sirius-gth-uzh/improved-pseudopotentials",
        "data/sirius-fp-lapw/reference",
    ),
    "total_improved_subset": (
        "CP2K-GTH-UZH-new",
        "SIRIUS-FP-LAPW",
        "data/cp2k-gth-uzh/improved-basis-settings",
        "data/sirius-fp-lapw/reference",
    ),
}


def read_json(root: Path, rel_dir: str) -> dict:
    path = root / rel_dir / RESULT_FILE
    with path.open(encoding="utf-8") as handle:
        data = json.load(handle)
    return data


def split_system(system: str) -> tuple[str, str]:
    element, configuration = system.split("-", 1)
    return element, configuration


def scaled_fit(data: dict, system: str) -> dict | None:
    fit = data["BM_fit_data"].get(system)
    if fit is None:
        return None
    num_atoms = data["num_atoms_in_sim_cell"].get(system)
    if num_atoms is None:
        return None
    element, configuration = split_system(system)
    scaling = get_volume_scaling_to_formula_unit(
        num_atoms, element, configuration
    )
    return {
        "min_volume": fit["min_volume"] / scaling,
        "bulk_modulus_ev_ang3": fit["bulk_modulus_ev_ang3"],
        "bulk_deriv": fit["bulk_deriv"],
        "residuals": fit.get("residuals"),
    }


def epsilon_value(left: dict, right: dict) -> float:
    return float(
        epsilon(
            left["min_volume"],
            left["bulk_modulus_ev_ang3"],
            left["bulk_deriv"],
            right["min_volume"],
            right["bulk_modulus_ev_ang3"],
            right["bulk_deriv"],
            1.0,
            1.0,
            1.0,
        )
    )


def compute_table(root: Path, comparison: str, left_data: dict, right_data: dict) -> list[dict]:
    rows = []
    systems = sorted(set(left_data["BM_fit_data"]) | set(right_data["BM_fit_data"]))
    for system in systems:
        element, configuration = split_system(system)
        left_fit = scaled_fit(left_data, system)
        right_fit = scaled_fit(right_data, system)
        row = {
            "comparison": comparison,
            "element": element,
            "configuration": configuration,
            "system": system,
            "epsilon": "",
            "status": "ok",
            "left_min_volume": "",
            "left_bulk_modulus_ev_ang3": "",
            "left_bulk_deriv": "",
            "right_min_volume": "",
            "right_bulk_modulus_ev_ang3": "",
            "right_bulk_deriv": "",
        }
        if left_fit is None or right_fit is None:
            row["status"] = "missing_fit"
        else:
            row.update(
                {
                    "epsilon": f"{epsilon_value(left_fit, right_fit):.12g}",
                    "left_min_volume": f"{left_fit['min_volume']:.12g}",
                    "left_bulk_modulus_ev_ang3": f"{left_fit['bulk_modulus_ev_ang3']:.12g}",
                    "left_bulk_deriv": f"{left_fit['bulk_deriv']:.12g}",
                    "right_min_volume": f"{right_fit['min_volume']:.12g}",
                    "right_bulk_modulus_ev_ang3": f"{right_fit['bulk_modulus_ev_ang3']:.12g}",
                    "right_bulk_deriv": f"{right_fit['bulk_deriv']:.12g}",
                }
            )
        rows.append(row)
    return rows


def write_tsv(path: Path, rows: list[dict]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    fieldnames = [
        "comparison",
        "element",
        "configuration",
        "system",
        "epsilon",
        "status",
        "left_min_volume",
        "left_bulk_modulus_ev_ang3",
        "left_bulk_deriv",
        "right_min_volume",
        "right_bulk_modulus_ev_ang3",
        "right_bulk_deriv",
    ]
    with path.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(handle, fieldnames=fieldnames, delimiter="\t")
        writer.writeheader()
        writer.writerows(rows)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, default=ROOT, help="Repository root")
    parser.add_argument(
        "--output",
        type=Path,
        default=ROOT / "data" / "derived-epsilon-tables",
        help="Output directory for generated TSV files",
    )
    args = parser.parse_args()
    root = args.root.resolve()
    outdir = args.output.resolve()

    summary_rows = []
    all_rows = []
    for key, (left_label, right_label, left_dir, right_dir) in COMPARISONS.items():
        left_data = read_json(root, left_dir)
        right_data = read_json(root, right_dir)
        rows = compute_table(root, key, left_data, right_data)
        for row in rows:
            row["comparison"] = key
        write_tsv(outdir / f"{key}.tsv", rows)
        all_rows.extend(rows)
        ok = [float(row["epsilon"]) for row in rows if row["status"] == "ok"]
        summary_rows.append(
            {
                "comparison": key,
                "left": left_label,
                "right": right_label,
                "n_systems": str(len(rows)),
                "n_ok": str(len(ok)),
                "n_missing_fit": str(len(rows) - len(ok)),
                "max_epsilon": "" if not ok else f"{max(ok):.12g}",
                "mean_epsilon": "" if not ok else f"{sum(ok) / len(ok):.12g}",
            }
        )

    write_tsv(outdir / "all_comparisons.tsv", all_rows)
    with (outdir / "summary.tsv").open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(
            handle,
            fieldnames=[
                "comparison",
                "left",
                "right",
                "n_systems",
                "n_ok",
                "n_missing_fit",
                "max_epsilon",
                "mean_epsilon",
            ],
            delimiter="\t",
        )
        writer.writeheader()
        writer.writerows(summary_rows)

    print(f"Wrote epsilon tables to {outdir}")


if __name__ == "__main__":
    main()

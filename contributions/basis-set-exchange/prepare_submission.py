"""Prepare and verify the published UZH orbital bases for Basis Set Exchange."""

import argparse
import bz2
import collections
import csv
import hashlib
import json
import re
import shutil
from decimal import Decimal
from pathlib import Path

import basis_set_exchange as bse
from basis_set_exchange import curate, fileio, lut, readers, validator


HERE = Path(__file__).resolve().parent
RELEASE = HERE.parents[1]
SOURCE_COMMIT = "acb98bb0d465d0a731ffdeca48107b2e56c3ab91"
SOURCE_URL = "https://github.com/DCM-Uni-Paderborn/UZH-protocol"
REFERENCE = "mirhosseini2026a"
DATE = "2026-10-03"
FAMILY_NOTES = """UZH protocol molecularly optimized orbital bases
================================================

Published parameter set: mirhosseini2026a.

This family contains the orbital Gaussian bases from BASIS_MOLOPT_UZH,
not the original 2007 MOLOPT family. Names include UZH to distinguish
the published UZH parameter set; native CP2K names are retained as aliases.
Exponents and contraction coefficients are preserved at source precision.
The functions use spherical harmonics.

The -ae entries are all-electron bases (SVP, TZVPP, QZVPP; H--Kr).
They are distinct from the small-core GTH variants of those basis levels
for heavier elements. The latter retain -GTH-qN in their names.
SVP/TZVPP/QZVPP construction also follows weigend2005a.

For a -GTH-qN entry, N is the number of explicitly treated electrons, not
the atomic number or ionic charge. Select the same element, functional
and q value in POTENTIAL_UZH. PBE/GGA, SCAN/MGGA and PBE0/HYB are aliases
within this release, not claims of accuracy for arbitrary functionals.
Even qN = atomic number denotes the corresponding GTH potential, not
an all-electron Coulomb potential. All-electron entries instead use ALL.

These BSE entries contain orbital bases only. BSE does not currently
encode the separable GTH projector matrices. No semilocal ECP has been
substituted. The original GTH file and verified basis/potential pairing
are available at https://github.com/DCM-Uni-Paderborn/UZH-protocol
under cp2k-data/ and contributions/basis-set-exchange/, respectively.
"""
HEADER = re.compile(r"^[A-Za-z]{1,2}\s+\S+")
Q_VALUE = re.compile(r"-q(\d+)$")
ARTICLE = {
    "_entry_type": "article",
    "authors": ["Mirhosseini, Hossein", "Müller, Tiziano M. A.",
                "Krack, Matthias", "Kühne, Thomas D.", "Hutter, Jürg"],
    "title": "The UZH protocol: Separating errors and constructing improved CP2K basis sets and pseudopotentials",
    "journal": "J. Chem. Phys.",
    "volume": "165",
    "pages": "104103",
    "year": "2026",
    "doi": "10.1063/5.0347392",
}


def records(path):
    result = []
    for line in path.read_text().splitlines():
        line = line.split("#", 1)[0].split("!", 1)[0].strip()
        if not line:
            continue
        if HEADER.match(line):
            result.append([line])
        elif not result:
            raise ValueError(f"Data before the first record in {path}")
        else:
            result[-1].append(line)
    return result


def number(value):
    result = Decimal(value.replace("D", "E").replace("d", "e"))
    if not result.is_finite():
        raise ValueError(f"Nonfinite coefficient: {value}")
    return result


def contraction_signature(shells):
    contractions = []
    for shell in shells:
        if len(shell["angular_momentum"]) != 1:
            raise ValueError("Expected separately resolved angular momenta")
        for coefficients in shell["coefficients"]:
            terms = tuple(sorted((number(e), number(c))
                                 for e, c in zip(shell["exponents"], coefficients)
                                 if number(c) != 0))
            contractions.append((shell["angular_momentum"][0], terms))
    return sorted(contractions)


def parse_basis(record):
    element, *aliases = record[0].split()
    z = lut.element_Z_from_sym(element, as_str=True)
    element = lut.element_sym_from_Z(z, normalize=True)
    nblocks = int(record[1])
    cursor, shells = 2, []
    for _ in range(nblocks):
        _, lmin, lmax, nprim, *counts = map(int, record[cursor].split())
        cursor += 1
        if len(counts) != lmax - lmin + 1 or nprim < 1:
            raise ValueError(f"Invalid block in {record[0]}")
        matrix = [line.split() for line in record[cursor:cursor + nprim]]
        cursor += nprim
        if len(matrix) != nprim or any(len(row) != 1 + sum(counts) for row in matrix):
            raise ValueError(f"Invalid coefficient matrix in {record[0]}")
        exponents = [row[0] for row in matrix]
        if any(number(e) <= 0 for e in exponents):
            raise ValueError(f"Nonpositive exponent in {record[0]}")
        offset = 1
        for angular, count in zip(range(lmin, lmax + 1), counts):
            if count:
                shells.append({"angular_momentum": [angular], "exponents": exponents,
                               "coefficients": [[row[c] for row in matrix]
                                                for c in range(offset, offset + count)]})
            offset += count
    if cursor != len(record):
        raise ValueError(f"Unconsumed basis lines in {record[0]}")
    text = "\n".join(record) + "\n"
    parsed = readers.read_formatted_basis_str(text, "cp2k", validate=True, as_component=True)
    if contraction_signature(shells) != contraction_signature(parsed["elements"][z]["electron_shells"]):
        raise ValueError(f"CP2K reader disagrees with independently parsed data: {record[0]}")
    return {"element": element, "z": z, "aliases": aliases, "text": text,
            "shells": parsed["elements"][z]["electron_shells"], "nblocks": nblocks}


def parse_potential(record):
    element, *aliases = record[0].split()
    z = lut.element_Z_from_sym(element)
    element = lut.element_sym_from_Z(z, normalize=True)
    if record[1:] == ["NA"]:
        return {"element": element, "z": z, "aliases": aliases, "kind": "unavailable"}
    charges = list(map(int, record[1].split()))
    q = sum(charges)
    if any(n < 0 for n in charges) or not 0 < q <= z:
        raise ValueError(f"Invalid electron partition: {record[0]}")
    local = record[2].split()
    if number(local[0]) <= 0 or len(local[2:]) != int(local[1]):
        raise ValueError(f"Invalid local potential: {record[0]}")
    for coefficient in local[2:]:
        number(coefficient)
    if aliases[0] == "ALLELECTRON":
        if q != z or int(local[1]) != 0 or len(record) != 3:
            raise ValueError(f"Invalid all-electron entry: {record[0]}")
        return {"element": element, "z": z, "q": q, "aliases": aliases, "kind": "all-electron"}
    cursor = 4
    channel_count = int(record[3])
    for _ in range(channel_count):
        channel = record[cursor].split()
        cursor += 1
        projectors = int(channel[1])
        if number(channel[0]) <= 0 or len(channel[2:]) != projectors:
            raise ValueError(f"Invalid nonlocal channel: {record[0]}")
        for coefficient in channel[2:]:
            number(coefficient)
        for remaining in range(projectors - 1, 0, -1):
            if cursor >= len(record) or len(record[cursor].split()) != remaining:
                raise ValueError(f"Invalid projector coupling matrix: {record[0]}")
            for coefficient in record[cursor].split():
                number(coefficient)
            cursor += 1
    if cursor != len(record):
        raise ValueError(f"Unconsumed potential lines in {record[0]}")
    if any(int(match.group(1)) != q for a in aliases if (match := Q_VALUE.search(a))):
        raise ValueError(f"q alias disagrees with electron partition: {record[0]}")
    return {"element": element, "z": z, "q": q, "aliases": aliases, "kind": "GTH"}


def write_json(path, content):
    path.write_text(json.dumps(content, indent=2, ensure_ascii=False) + "\n")


def export_authoritative_sources(bases, bse_repo):
    sources = bse_repo / "basis_set_exchange/tests/sources"
    grouped = collections.defaultdict(list)
    for basis in bases:
        name = basis["aliases"][0].replace("-MOLOPT-", "-MOLOPT-UZH-", 1).lower()
        grouped[name].append(basis["text"])
    for name, entries in grouped.items():
        path = sources / f"{name}.1.cp2k.bz2"
        if path.exists():
            raise ValueError(f"Refusing to overwrite authoritative source: {path}")
        path.write_bytes(bz2.compress("\n".join(entries).encode()))
    native = sources / "uzh"
    native.mkdir(exist_ok=True)
    for filename, source in (("POTENTIAL_UZH", RELEASE / "cp2k-data/POTENTIAL_UZH"),
                             ("basis-potential-pairing.csv", HERE / "basis-potential-pairing.csv")):
        target = native / filename
        if target.exists():
            raise ValueError(f"Refusing to overwrite native GTH source: {target}")
        shutil.copy2(source, target)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--bse-repo", required=True, type=Path)
    parser.add_argument("--install", action="store_true", help="Install the validated data into the BSE checkout")
    args = parser.parse_args()
    upstream_data = args.bse_repo / "basis_set_exchange/data"
    staging = HERE / "bse-data"
    if staging.exists() and any(staging.iterdir()):
        raise ValueError(f"Output exists already: {staging}")
    staging.mkdir(exist_ok=True)
    bases = [parse_basis(record) for record in records(RELEASE / "cp2k-data/BASIS_MOLOPT_UZH")]
    potentials, invalid_potentials = [], []
    for record in records(RELEASE / "cp2k-data/POTENTIAL_UZH"):
        try:
            potentials.append(parse_potential(record))
        except ValueError as error:
            invalid_potentials.append({"header": record[0], "error": str(error)})
    potential_index = {}
    for potential in potentials:
        if potential["kind"] == "unavailable":
            continue
        for alias in potential["aliases"]:
            key = (potential["element"], alias)
            if key in potential_index:
                raise ValueError(f"Duplicate potential alias: {key}")
            potential_index[key] = potential

    groups, aliases_seen, pairings = {}, set(), []
    for basis in bases:
        source_name = basis["aliases"][0]
        qmatch = Q_VALUE.search(source_name)
        if source_name.endswith("-ae"):
            kind, potential_alias, q = "all-electron", "ALL", int(basis["z"])
        elif qmatch:
            kind, q = "GTH", int(qmatch.group(1))
            functional = source_name.split("-MOLOPT-", 1)[1].split("-GTH-", 1)[0]
            potential_alias = f"GTH-{functional}-q{q}"
        else:
            raise ValueError(f"Unclassified basis: {source_name}")
        matched = potential_index.get((basis["element"], potential_alias))
        if matched is None or matched["q"] != q or matched["kind"] != kind:
            raise ValueError(f"No matching potential for {basis['element']} {source_name}")
        display_name = source_name.replace("-MOLOPT-", "-MOLOPT-UZH-", 1)
        group = groups.setdefault(display_name, {"records": [], "aliases": basis["aliases"], "kind": kind})
        if group["aliases"] != basis["aliases"]:
            raise ValueError(f"Inconsistent aliases in {display_name}")
        for alias in basis["aliases"]:
            key = (basis["element"], alias)
            if key in aliases_seen:
                raise ValueError(f"Duplicate basis alias: {key}")
            aliases_seen.add(key)
        group["records"].append(basis)
        pairings.append({"element": basis["element"], "atomic_number": int(basis["z"]),
                         "bse_name": display_name, "cp2k_aliases": " | ".join(basis["aliases"]),
                         "kind": kind, "q": q, "core_electrons": int(basis["z"]) - q,
                         "potential_alias": potential_alias})

    references = {"molssi_bse_schema": {"schema_type": "references", "schema_version": "0.1"}}
    references[REFERENCE] = ARTICLE
    references["weigend2005a"] = fileio.read_references(str(upstream_data / "REFERENCES.json"))["weigend2005a"]
    fileio.write_references(str(staging / "REFERENCES.json"), references)
    validator.validate_data("references", references)
    counts, basis_manifest = collections.Counter(), []
    for name, group in sorted(groups.items()):
        text = "\n".join(record["text"] for record in group["records"])
        component = readers.read_formatted_basis_str(text, "cp2k", validate=True, as_component=True)
        if len(component["elements"]) != len(group["records"]):
            raise ValueError(f"Repeated element in {name}")
        refs = [REFERENCE]
        if name.startswith(("SVP-", "TZVPP-", "QZVPP-")):
            refs.append("weigend2005a")
        basename = name.lower()
        description = f"UZH protocol {group['kind']} orbital basis ({group['aliases'][0]})"
        curate.add_basis_from_dict(component, str(staging), "molopt_uzh", basename,
                                   name, "molopt_uzh", "orbital", description, "1",
                                   "Published UZH protocol parameter set (JCP 165, 104103, 2026)",
                                   f"{SOURCE_URL}/blob/{SOURCE_COMMIT}/cp2k-data/BASIS_MOLOPT_UZH", refs)
        metadata_path = staging / f"{basename}.metadata.json"
        metadata = fileio.read_json_basis(str(metadata_path))
        metadata["names"] = [name, *group["aliases"]]
        validator.validate_data("metadata", metadata)
        fileio.write_json_basis(str(metadata_path), metadata)
        table_path = staging / f"{basename}.1.table.json"
        table = fileio.read_json_basis(str(table_path))
        table["revision_date"] = DATE
        fileio.write_json_basis(str(table_path), table)
        if group["kind"] == "all-electron":
            usage = "All-electron orbital basis. Use an all-electron Hamiltonian (ALL in CP2K)."
        else:
            functional = group["aliases"][0].split("-MOLOPT-", 1)[1].split("-GTH-", 1)[0]
            q = Q_VALUE.search(group["aliases"][0]).group(1)
            usage = (f"GTH valence orbital basis. Use matching {functional} GTH-q{q} potentials.\n"
                     "No GTH pseudopotential is included in this BSE entry.")
        (staging / f"{basename}.notes").write_text(
            f"{name}\n{'=' * len(name)}\n\n{usage}\n\n"
            f"Native CP2K aliases: {', '.join(group['aliases'])}.\n"
            f"Published UZH protocol source: {REFERENCE}.\n"
            "See the molopt_uzh family notes for provenance and q-value matching.\n")
        basis_manifest.append({"name": name, "aliases": group["aliases"], "kind": group["kind"],
                               "elements": [record["element"] for record in group["records"]]})
        counts[group["kind"]] += len(group["records"])

    (staging / "NOTES.molopt_uzh").write_text(FAMILY_NOTES)
    curate.create_metadata_file(str(staging / "METADATA.json"), str(staging))
    validator.validate_data_dir(str(staging))
    for name, group in sorted(groups.items()):
        expected = {record["z"]: contraction_signature(record["shells"]) for record in group["records"]}
        composed = bse.get_basis(name, data_dir=str(staging))
        actual = {z: contraction_signature(element["electron_shells"]) for z, element in composed["elements"].items()}
        if actual != expected:
            raise ValueError(f"Changed numerical data in {name}")
        for alias in group["aliases"]:
            if bse.get_basis(alias, data_dir=str(staging))["elements"] != composed["elements"]:
                raise ValueError(f"Wrong alias resolution: {alias}")
        for fmt in ("cp2k", "nwchem", "gaussian94"):
            converted = bse.get_basis(name, fmt=fmt, header=False, data_dir=str(staging))
            reparsed = readers.read_formatted_basis_str(converted, fmt, validate=True)
            signature = {z: contraction_signature(element["electron_shells"])
                         for z, element in reparsed["elements"].items()}
            if signature != expected:
                raise ValueError(f"Round-trip numerical discrepancy: {name}, {fmt}")

    source_files = {}
    for filename in ("BASIS_MOLOPT_UZH", "POTENTIAL_UZH"):
        content = (RELEASE / "cp2k-data" / filename).read_bytes()
        source_files[filename] = {"sha256": hashlib.sha256(content).hexdigest(),
                                 "url": f"{SOURCE_URL}/blob/{SOURCE_COMMIT}/cp2k-data/{filename}"}
    report = {"source_commit": SOURCE_COMMIT, "article": ARTICLE, "date": DATE,
              "source_files": source_files, "basis_variants": len(groups), "bse_family": "molopt_uzh",
              "basis_element_records": len(bases), "basis_records_by_kind": dict(counts),
              "gth_potential_records": sum(p["kind"] == "GTH" for p in potentials),
              "all_electron_potential_records": sum(p["kind"] == "all-electron" for p in potentials),
              "unavailable_potential_records": [p for p in potentials if p["kind"] == "unavailable"],
              "invalid_potential_records": invalid_potentials,
              "checks": {"independent_cp2k_block_parse": "passed", "bse_schema": "passed",
                         "native_q_and_potential_pairing": "passed", "coefficient_and_exponent_preservation": "passed",
                         "alias_resolution": "passed", "cp2k_nwchem_gaussian94_roundtrip": "passed"},
              "gth_bse_status": "Native separable GTH projectors require BSE schema support; POTENTIAL_UZH is supplied unchanged.",
              "bases": basis_manifest}
    write_json(HERE / "validation.json", report)
    with (HERE / "basis-potential-pairing.csv").open("w", newline="") as stream:
        writer = csv.DictWriter(stream, fieldnames=list(pairings[0]), lineterminator="\n")
        writer.writeheader()
        writer.writerows(pairings)

    if args.install:
        for source in staging.rglob("*"):
            if source.is_file() and source.name not in ("REFERENCES.json", "METADATA.json"):
                target = upstream_data / source.relative_to(staging)
                if target.exists():
                    raise ValueError(f"Refusing to overwrite existing BSE data: {target}")
                target.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(source, target)
        existing = fileio.read_references(str(upstream_data / "REFERENCES.json"))
        if REFERENCE in existing and existing[REFERENCE] != ARTICLE:
            raise ValueError(f"Existing reference key differs: {REFERENCE}")
        existing[REFERENCE] = ARTICLE
        fileio.write_references(str(upstream_data / "REFERENCES.json"), existing)
        curate.create_metadata_file(str(upstream_data / "METADATA.json"), str(upstream_data))
        export_authoritative_sources(bases, args.bse_repo)
    summary = {key: report[key] for key in ("basis_variants", "basis_element_records", "basis_records_by_kind",
               "gth_potential_records", "all_electron_potential_records", "checks")}
    summary["unavailable_potential_records"] = len(report["unavailable_potential_records"])
    summary["invalid_potential_records"] = report["invalid_potential_records"]
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()

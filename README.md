# UZH protocol

This repository is the release location for data and supporting files associated with the manuscript

> The UZH protocol: Separating and reducing Gaussian-basis and pseudopotential errors in CP2K

The repository is organized around the three comparisons used in the manuscript:

- `CP2K-GTH-UZH` versus `SIRIUS-FP-LAPW`: total practical CP2K error.
- `CP2K-GTH-UZH` versus `SIRIUS-GTH-UZH`: Gaussian-basis contribution at fixed pseudopotential.
- `SIRIUS-GTH-UZH` versus `SIRIUS-FP-LAPW`: pseudopotential contribution in a systematic basis.

## Contents

- `cp2k-data/`: official CP2K UZH basis-set and pseudopotential files from `cp2k/cp2k:data`.
- `data/`: organized molecular-calibration data, numerical outputs, workflow diagnostics, derived epsilon tables, and equation-of-state plots.
- `figures/`: publication figures and representative plots used in the manuscript and Supplemental Material.
- `manuscript/`: manuscript and Supplemental Material sources, bibliography, and compiled PDFs.
- `manifests/`: file hashes, source provenance, and workflow-organization metadata.
- `scripts/`: ACWF verification scripts, UZH-specific epsilon-table generation, and plotting notes.

## Data layout

The release data are not a flat copy of the working Dropbox folders. They are sorted by the role they play in the error decomposition:

- `data/cp2k-gth-uzh/original-settings/`: CP2K/GTH-UZH production-basis verification data before basis improvement.
- `data/cp2k-gth-uzh/improved-basis-settings/`: CP2K/GTH-UZH reruns after basis-set improvement.
- `data/cp2k-gth-uzh/resubmissions/`: focused CP2K reruns used to repair or check individual equation-of-state entries.
- `data/cp2k-gth-uzh/noble-gas-augmented-basis/`: augmented noble-gas basis tests.
- `data/sirius-gth-uzh/original-settings/`: SIRIUS calculations with the original GTH-UZH pseudopotentials.
- `data/sirius-gth-uzh/improved-pseudopotentials/`: SIRIUS calculations with the improved pseudopotentials.
- `data/sirius-gth-uzh/pseudopotential-update-comparison/`: focused before/after pseudopotential comparisons.
- `data/sirius-gth-uzh/sr-diamond-test/`: explicit Sr diamond input/output test case.
- `data/sirius-fp-lapw/reference/`: all-electron FP-LAPW reference results generated with SIRIUS.
- `data/molecular-calibration/`: curated molecular structures, Gaussian16 reference inputs/logs, CP2K inputs, optimized-coordinate files, run scripts, and compact summary tables from the MolTest data set.
- `data/derived-epsilon-tables/`: epsilon tables regenerated from the deposited ACWF-style equation-of-state JSON files.

The JSON files contain the parsed equation-of-state data, Birch-Murnaghan fit data, UUID mappings, and workflow failure/missing-output diagnostics. The PDF files are per-element/per-structure equation-of-state diagnostics retained for traceability.

## Provenance

The CP2K UZH data files were updated from the public CP2K repository at commit `49523fb0eb1b233f3eed4b10a00c7e14f2de2007`.

The workflow outputs were reorganized from the local working directories:

- `potential-fitting/GTH-UZH`
- `potential-fitting/SIRIUS_UZH`
- `potential-fitting/SIRIUS_lapw`

The molecular-calibration data were curated from the MolTest record by J. Hutter and T. M. A. Muller, "CP2K calculations for structures of the Small Molecule Database with the revised MOLOPT Basis Sets and Pseudopotentials", Zenodo record 7841955. The repository mirrors the GitHub-friendly subset used for review and reuse, while `data/molecular-calibration/provenance/` records the upstream archive checksum.

The workflow and post-processing scripts under `scripts/acwf-verification/upstream/` were copied from the MIT-licensed `aiidateam/acwf-verification-scripts` repository associated with the AiiDA common-workflows verification study. The UZH-specific wrapper `scripts/epsilon/compute_uzh_epsilon_tables.py` uses the same epsilon implementation to regenerate `data/derived-epsilon-tables/`.

The file-level checksums are listed in `manifests/file_hashes.tsv`.

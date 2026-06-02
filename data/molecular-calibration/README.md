# Molecular calibration

This directory contains the curated molecular-calibration data used for the UZH protocol manuscript. The data were taken from the MolTest record by J. Hutter and T. M. A. Muller, "CP2K calculations for structures of the Small Molecule Database with the revised MOLOPT Basis Sets and Pseudopotentials", Zenodo record 7841955.

## Contents

- `structures/small-molecule-database/`: original small-molecule XYZ structures.
- `gaussian16/inputs/`: Gaussian16 input files for the PBE, PBE0, and TPSS reference calculations.
- `gaussian16/logs/`: Gaussian16 output logs used to extract reference energies, structures, dipoles, polarizabilities, and frequencies.
- `cp2k/inputs/`: CP2K molecular inputs sorted by basis level and functional.
- `cp2k/optimized-structures/`: CP2K XYZ coordinate outputs retained from the molecular calculations.
- `cp2k/run-scripts/`: run scripts distributed with the molecular data.
- `summaries/`: compact tabular summaries parsed from the raw CP2K and Gaussian16 outputs.
- `provenance/`: upstream record metadata and archive checksums.

## Curated scope

The full upstream MolTest archive is about 150 MB compressed and about 1.8 GB after extraction. To keep this repository reviewable through normal GitHub workflows, this directory mirrors the subset needed to inspect and reuse the calibration: structures, inputs, reference logs, optimized-coordinate files, run scripts, and summary tables. Large CP2K text outputs, restart files, Hessians, eigenvalue dumps, and other transient files remain in the upstream MolTest archive and are identified by the checksum recorded in `provenance/MolTest_archive_checksums.txt`.

The summary tables are:

- `summaries/cp2k_molecular_summary.tsv`: CP2K energies, dipoles, polarizability tensors, and frequency diagnostics parsed from the CP2K molecular output files.
- `summaries/gaussian16_molecular_summary.tsv`: Gaussian16 energies, dipoles, polarizability tensors, and frequency diagnostics parsed from the Gaussian16 reference logs.

These tables are intended as lightweight review files and do not replace the upstream raw-data archive.

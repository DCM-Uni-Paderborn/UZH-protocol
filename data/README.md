# Data release layout

The data directory follows the decomposition used by the UZH protocol:

- `cp2k-gth-uzh/`: CP2K calculations with Gaussian basis sets and GTH-UZH pseudopotentials.
- `sirius-gth-uzh/`: SIRIUS calculations with the same GTH-UZH pseudopotentials, used to isolate pseudopotential effects from Gaussian-basis effects.
- `sirius-fp-lapw/`: SIRIUS all-electron full-potential linearized augmented-plane-wave reference data.
- `molecular-calibration/`: curated molecular basis-set calibration data connected to the UZH basis construction.
- `derived-epsilon-tables/`: TSV tables generated from the deposited equation-of-state JSON files with `scripts/epsilon/compute_uzh_epsilon_tables.py`.

Each calculation directory keeps numerical JSON results separate from diagnostic equation-of-state plots. Original source notes from the working folders are retained as `source-notes.txt` files where available.

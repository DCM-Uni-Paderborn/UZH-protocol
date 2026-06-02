# UZH protocol

This repository is the release location for data and supporting files associated with the manuscript

> The UZH protocol: Separating and reducing Gaussian-basis and pseudopotential errors in CP2K

The repository is organized around the three comparisons used in the manuscript:

- `CP2K-GTH-UZH` versus `SIRIUS-FP-LAPW`: total practical CP2K error.
- `CP2K-GTH-UZH` versus `SIRIUS-GTH-UZH`: Gaussian-basis contribution at fixed pseudopotential.
- `SIRIUS-GTH-UZH` versus `SIRIUS-FP-LAPW`: pseudopotential contribution in a systematic basis.

## Contents

- `cp2k-data/`: official CP2K UZH basis-set and pseudopotential files from `cp2k/cp2k:data`.
- `data/`: organized numerical outputs, workflow diagnostics, and equation-of-state plots.
- `figures/`: publication figures and representative plots used in the manuscript and Supplemental Material.
- `manuscript/`: manuscript and Supplemental Material sources, bibliography, and compiled PDFs.
- `manifests/`: file hashes, software/source provenance, and workflow-organization metadata.
- `scripts/`: placeholders for post-processing and plotting scripts used to reproduce the figures.

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

The JSON files contain the parsed equation-of-state data, Birch-Murnaghan fit data, UUID mappings, and workflow failure/missing-output diagnostics. The PDF files are per-element/per-structure equation-of-state diagnostics retained for traceability.

## Provenance

The CP2K UZH data files were updated from the public CP2K repository at commit `49523fb0eb1b233f3eed4b10a00c7e14f2de2007`.

The workflow outputs were reorganized from the local working directories:

- `potential-fitting/GTH-UZH`
- `potential-fitting/SIRIUS_UZH`
- `potential-fitting/SIRIUS_lapw`

The file-level checksums are listed in `manifests/file_hashes.tsv`.

# UZH protocol

This repository is the release location for data and supporting files associated with the manuscript

> The UZH protocol: Separating and reducing Gaussian-basis and pseudopotential errors in CP2K

The repository is organized around the three comparisons used in the manuscript:

- `CP2K-GTH-UZH` versus `SIRIUS-FP-LAPW`: total practical CP2K error.
- `CP2K-GTH-UZH` versus `SIRIUS-GTH-UZH`: Gaussian-basis contribution at fixed pseudopotential.
- `SIRIUS-GTH-UZH` versus `SIRIUS-FP-LAPW`: pseudopotential contribution in a systematic basis.

## Current contents

- `cp2k-data/`: CP2K UZH basis and pseudopotential files copied from the local CP2K data tree.
- `figures/`: publication figures and representative equation-of-state plots used in the manuscript and Supplemental Material.
- `manuscript/`: current manuscript and Supplemental Material sources, bibliography, and compiled PDFs.
- `manifests/`: preliminary provenance records and workflow-organization metadata.
- `data/`: target locations for workflow inputs, parsed outputs, and raw numerical data.

## Data still to be added before archival

The Overleaf project and local manuscript folders contain the publication figures and CP2K data files, but not the complete raw AiiDA workflow archives. Before final publication or archival release, the following items should be added:

- CP2K-GTH-UZH AiiDA workflow inputs and parsed results.
- SIRIUS-GTH-UZH AiiDA workflow inputs and parsed results.
- SIRIUS-FP-LAPW all-electron workflow inputs and parsed results.
- Molecular-calibration input/output tables.
- Post-processing scripts used to evaluate the epsilon metric and generate the periodic-table maps.
- Final software-version and file-hash manifests.

The directory layout already follows the organization described in the Supplemental Material so that the missing workflow exports can be dropped in without changing the published structure.


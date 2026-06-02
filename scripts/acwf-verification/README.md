# ACWF verification scripts

This directory contains the reusable workflow and post-processing scripts from the AiiDA common-workflows verification project.

Source repository: https://github.com/aiidateam/acwf-verification-scripts

Reference paper: E. Bosoni et al., "How to verify the precision of density-functional-theory implementations via reproducible and universal workflows", Nature Reviews Physics 6, 45 (2024), doi:10.1038/s42254-023-00655-3.

The upstream scripts are released under the MIT license; the upstream license file is included as `upstream/LICENSE`. The copied subset contains submission templates, result extraction scripts, equation-of-state fitting utilities, epsilon/nu metric utilities, plotting scripts, and export scripts. Large upstream example result data from the Nature Reviews Physics paper were not copied because this repository already deposits the UZH-specific result JSON files under `data/`.

The UZH-specific wrapper in `../epsilon/compute_uzh_epsilon_tables.py` uses the upstream epsilon implementation and the ACWF JSON schema to regenerate the tabular comparisons used in the UZH protocol manuscript.

# Epsilon-metric scripts

This directory contains UZH-specific wrappers for evaluating the equation-of-state epsilon metric from the deposited AiiDA common-workflows result JSON files.

- `compute_uzh_epsilon_tables.py` reads the CP2K-GTH-UZH, SIRIUS-GTH-UZH, and SIRIUS-FP-LAPW result files under `data/`, computes the epsilon values with the same metric implementation used by the ACWF verification scripts, and writes TSV tables under `data/derived-epsilon-tables/`.

The upstream ACWF scripts and MIT license are vendored under `scripts/acwf-verification/`.

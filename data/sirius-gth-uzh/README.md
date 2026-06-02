# SIRIUS/GTH-UZH data

This directory contains SIRIUS verification data with GTH-UZH pseudopotentials.

- `original-settings/`: SIRIUS/GTH-UZH calculations with the original pseudopotentials.
- `improved-pseudopotentials/`: SIRIUS/GTH-UZH calculations with the updated pseudopotential file `POTENTIAL_NEW`.
- `pseudopotential-update-comparison/`: focused old/new pseudopotential equation-of-state comparisons.
- `sr-diamond-test/`: explicit Sr diamond input/output test case, including CP2K-style inputs and SIRIUS workflow files.

These data are used with the SIRIUS FP-LAPW reference to isolate the pseudopotential contribution to the total error.

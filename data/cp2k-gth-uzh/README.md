# CP2K/GTH-UZH data

This directory contains CP2K verification data obtained with UZH Gaussian basis sets and GTH-UZH pseudopotentials.

- `original-settings/`: original CP2K/GTH-UZH equation-of-state results and diagnostics.
- `improved-basis-settings/`: reruns after the production basis was improved.
- `resubmissions/`: focused reruns used to complete or check selected entries.
- `noble-gas-augmented-basis/`: tests of augmented noble-gas basis sets.

The `results/` subdirectories contain parsed JSON workflow output. The `plots/` subdirectories contain equation-of-state PDFs. The original plotting directory names used `vs-fleur`; in this release they are grouped according to the SIRIUS FP-LAPW reference role used in the manuscript.

# CP2K UZH data files

This directory contains CP2K basis and pseudopotential files relevant for the UZH protocol.

Files currently deposited:

- `BASIS_MOLOPT_UZH`
- `BASIS_ADMM_UZH`
- `BASIS_TB_UZH`
- `BASIS_ccGRB_UZH`
- `POTENTIAL_UZH`

The files were copied from the public CP2K repository, `cp2k/cp2k`, directory `data/`, at commit `49523fb0eb1b233f3eed4b10a00c7e14f2de2007`.

`BASIS_MOLOPT_UZH` is now byte-identical to CP2K's `BASIS_MOLOPT_UZH_2026.2`
(Git blob `3b09dde1d0ee05e962553d2158f0c1b84a1d460b`). Three header/comment
corrections were applied without modifying numerical parameters; see the root README.
Basis Set Exchange conversion and exact basis/potential matching are documented
under `contributions/basis-set-exchange/`, with the published JCP reference
[10.1063/5.0347392](https://doi.org/10.1063/5.0347392).

The unchanged native `POTENTIAL_UZH` contains explicit unavailable (`NA`) entries
and one incomplete `Bi GTH-PBE0-q15` coupling matrix. These are listed in the
conversion validation report; no imported orbital entry uses them.

Source:

- https://github.com/cp2k/cp2k/tree/master/data

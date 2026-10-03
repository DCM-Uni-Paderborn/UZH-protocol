## Published UZH orbital bases

This contribution adds the orbital Gaussian parameter set accompanying:

H. Mirhosseini, T. M. A. Müller, M. Krack, T. D. Kühne, and J. Hutter,
**The UZH protocol: Separating errors and constructing improved CP2K basis sets
and pseudopotentials**, *J. Chem. Phys.* **165**, 104103 (2026),
[DOI: 10.1063/5.0347392](https://doi.org/10.1063/5.0347392).

### Included data

- 228 basis variants containing 882 element/basis records.
- DZVP, TZVP and TZV2P GTH-valence bases for PBE, SCAN and PBE0.
- SVP, TZVPP and QZVPP all-electron bases for every element H--Kr (108 records).
- The separate small-core GTH variants of SVP/TZVPP/QZVPP for heavier elements.
- All functional and explicit-electron-count `q` variants retained without selecting an implicit default core.
- The JCP reference on every imported record; the original def2 reference additionally retained for derived SVP/TZVPP/QZVPP entries.

Canonical names contain `MOLOPT-UZH` to distinguish these parameters from
the original 2007 MOLOPT family. Native CP2K names are also aliases.
The naming is open to the maintainers' preferred conventions, provided that
the AE/GTH distinction and functional/core variants remain unambiguous.

The numerical source is pinned to
[UZH release commit acb98bb](https://github.com/DCM-Uni-Paderborn/UZH-protocol/tree/acb98bb0d465d0a731ffdeca48107b2e56c3ab91/cp2k-data).
`BASIS_MOLOPT_UZH` is byte-identical to CP2K's `BASIS_MOLOPT_UZH_2026.2`
(Git blob `3b09dde1d0ee05e962553d2158f0c1b84a1d460b`).
No exponent or contraction coefficient has been refitted or rounded.
Existing BSE datasets and references are unchanged.

### Separable GTH source material

The native `POTENTIAL_UZH` file and an explicit element/basis/potential pairing
table are included under `basis_set_exchange/tests/sources/uzh/` for curation.
They are not registered as BSE ECP data: the current semilocal-ECP schema
cannot faithfully represent the separable GTH projector coupling matrices.
No semilocal substitute is introduced. Family and per-basis notes explain
this limitation and how to select the matching native CP2K potential.

The original file retains its unavailable placeholders and the documented
incomplete Bi-PBE0-q15 record. None of the imported bases is paired with
an unavailable or incomplete potential. Native GTH integration is requested in
[#385](https://github.com/MolSSI-BSE/basis_set_exchange/issues/385);
this does not prevent integration of the Gaussian orbital bases.

### Verification

- Independent CP2K block/dimension parsing and exact decimal checks of every contracted function.
- Valid BSE schemas, aliases, and functional/`q` pairing for all 882 records.
- Exact numerical round trips through CP2K, NWChem and Gaussian94 for every variant.
- 8,505 existing BSE validation/API/unused-data tests passed.
- 228 authoritative-source tests passed against native CP2K records (included as `*.1.cp2k.bz2`).
- Published provenance, checksums and full coverage are recorded in the
  [conversion report](https://github.com/DCM-Uni-Paderborn/UZH-protocol/tree/main/contributions/basis-set-exchange).

This is related to #172 (MOLOPT additions), but represents the distinct
published 2026 UZH protocol release, not a replacement for the original 2007 bases.

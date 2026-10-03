# Basis Set Exchange contribution

The contribution imports the published UZH orbital parameter set and cites:

H. Mirhosseini, T. M. A. Müller, M. Krack, T. D. Kühne, and J. Hutter,
"The UZH protocol: Separating errors and constructing improved CP2K basis sets
and pseudopotentials", *J. Chem. Phys.* **165**, 104103 (2026),
[doi:10.1063/5.0347392](https://doi.org/10.1063/5.0347392).

## Coverage

- 228 distinct basis variants, preserving every functional and `q` variant.
- 774 GTH-valence element/basis records (225 variants).
- 108 all-electron records: SVP, TZVPP, and QZVPP for H--Kr (3 variants).
- PBE, SCAN, and PBE0 orbital bases, retaining their native GGA/MGGA/HYB aliases.
- SVP/TZVPP/QZVPP GTH variants for heavier elements remain separate from the AE entries.

Canonical BSE names insert `UZH`, for example `TZV2P-MOLOPT-UZH-PBE-GTH-q4`
and `TZVPP-MOLOPT-UZH-PBE-ae`. Native CP2K names are also searchable aliases.
The Weigend--Ahlrichs def2 reference is retained for the derived SVP/TZVPP/QZVPP
bases in addition to the UZH JCP article.

## Reproduction

Use a separate BSE checkout and install its Python package before running:

```sh
python prepare_submission.py --bse-repo /path/to/basis_set_exchange --install
```

The generator refuses to overwrite an existing staging tree or BSE entry.
Its generated `bse-data/` directory is ignored here because the native BSE
JSON files are submitted to the BSE repository. Native compressed per-variant
orbital sources are included in BSE's authoritative-source test collection.

`validation.json` records the pinned input commit, source SHA-256 hashes,
element coverage, numerical checks, and native-potential diagnostics.
`basis-potential-pairing.csv` gives the element, explicit-electron count,
core-electron count, functional-specific potential alias, and AE/PP distinction
for every imported orbital record.

The independent CP2K-block parser checks primitive and contraction dimensions.
Every contraction and exponent is compared using exact decimal values before
and after conversion, alias lookup, and CP2K/NWChem/Gaussian94 round trips.
Changes to primitive ordering and splitting combined angular-momentum blocks
are permitted only when the contracted functions remain numerically identical.

## Separable GTH potentials

The BSE schema currently supports semilocal ECPs but not the separable GTH
projector matrices. The original `POTENTIAL_UZH` and the explicit basis/potential
pairing are supplied as source material, without a lossy conversion or fictitious
semilocal ECP. Integration requires a schema/reader/writer extension by BSE.

The raw file contains 488 complete GTH records, 36 all-electron definitions,
90 explicit unavailable (`NA`) records, and one incomplete `Bi GTH-PBE0-q15`
entry. The missing final diagonal projector coefficient is not reconstructed.
All 882 imported basis records are paired with syntactically complete potentials.
The raw pseudopotential source is preserved unchanged, including these diagnostics.

The orbital source differs from the earlier repository copy only by the repaired
Calcium PBE0 TZV2P header, normalized Sodium capitalization, and one comment typo.
It matches CP2K's `BASIS_MOLOPT_UZH_2026.2` Git blob
`3b09dde1d0ee05e962553d2158f0c1b84a1d460b`; no numerical parameters were changed.

## Curation status

- [Orbital Gaussian bases and native GTH source: BSE pull request #384](https://github.com/MolSSI-BSE/basis_set_exchange/pull/384).
- [Separable-GTH format support: BSE issue #385](https://github.com/MolSSI-BSE/basis_set_exchange/issues/385).

Local BSE checks passed: 8,505 validation/API/unused-data tests and 228
authoritative-source comparisons. The JCP citation metadata also passed
CFF 1.2.0 validation. No existing BSE dataset or reference was changed.

A submitted contribution is not yet available on the public BSE website:
maintainers must review, merge, and deploy it first. The native GTH data
are supplied for curation but are not yet downloadable as a BSE-supported
pseudopotential format.

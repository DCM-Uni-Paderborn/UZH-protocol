We would like to make the published UZH GTH pseudopotentials available through
Basis Set Exchange alongside their orbital Gaussian bases, including the
all-electron variants. The associated paper is:

H. Mirhosseini, T. M. A. Müller, M. Krack, T. D. Kühne, and J. Hutter,
**The UZH protocol: Separating errors and constructing improved CP2K basis sets
and pseudopotentials**, *J. Chem. Phys.* **165**, 104103 (2026),
[DOI: 10.1063/5.0347392](https://doi.org/10.1063/5.0347392).

### Required representation

The native GTH file stores:

- element and functional-specific aliases;
- the explicit-electron partition (whose sum must equal the alias's `q` value);
- the local Gaussian radius and polynomial coefficients;
- a projector radius for each nonlocal angular-momentum channel;
- the upper triangle of its symmetric projector coupling matrix.

This is a separable nonlocal pseudopotential, not a semilocal radial ECP.
The present `ecp_potentials` representation of radial powers, exponents and
coefficients does not encode its off-diagonal projector couplings. A faithful
integration therefore needs a separable-GTH schema and compatible native
CP2K reader/writer support, or an explicitly labeled native-format download.
We have not attempted a lossy semilocal conversion.

### Data supplied for curation

Pinned [native POTENTIAL_UZH](https://github.com/DCM-Uni-Paderborn/UZH-protocol/blob/acb98bb0d465d0a731ffdeca48107b2e56c3ab91/cp2k-data/POTENTIAL_UZH).
Its SHA-256 is `8ab49093391f67f2705679f0b3bfc5b84bbeb4003955b556ded322e9d1d6093d`.
The original file and a basis/potential pairing CSV are also supplied as
source material in the associated orbital-basis contribution.

The file contains 488 syntactically complete GTH records spanning PBE, SCAN
and PBE0, 36 `ALL` definitions, and 90 explicit `NA` placeholders. One further
entry, `Bi GTH-PBE0-q15`, lacks the final diagonal coupling coefficient of
its last projector channel. That defect is retained and documented, not
reconstructed; none of the submitted orbital records uses that potential.
All imported Gaussian records have checked matches to complete potential
entries, preserving functional and `q`. An AE basis instead maps to `ALL`.

Would you prefer a new separable-GTH schema/function type, or a native-format
attachment/download until readers and writers are available? We would welcome
your guidance on integrating the GTH data without implying semilocal ECP
equivalence or mislabeling valence bases as all-electron bases.

The orbital Gaussian data can be curated independently of this extension.

Orbital-basis contribution (including the native GTH source file and pairing
table): https://github.com/MolSSI-BSE/basis_set_exchange/pull/384.

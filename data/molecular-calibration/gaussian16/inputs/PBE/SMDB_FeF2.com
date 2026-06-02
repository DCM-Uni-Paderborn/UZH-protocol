%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 5
Fe       8.50000000       8.50000000       8.50000000      
F      10.24622350       8.50000000       8.50000000      
F       6.75377650       8.50000000       8.50000000     



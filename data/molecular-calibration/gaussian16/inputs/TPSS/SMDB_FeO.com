%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 5
Fe       6.70500742       7.50000000       7.50000000     
O       8.29499258       7.50000000       7.50000000     



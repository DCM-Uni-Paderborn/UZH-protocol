%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 3
Ni       7.50000000       7.50000000       6.69697838       
O       7.50000000       7.50000000       8.30302162       



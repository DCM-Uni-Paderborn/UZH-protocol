%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ti       7.50000000       7.50000000       6.69212363      
O       7.50000000       7.50000000       8.30787637      



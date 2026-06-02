%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Cl       7.50000000       7.50000000       6.85159555       
H       7.50000000       7.50000000       8.14840445       



%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Se       7.50000000       7.50000000       8.02167780      
H       6.44459470       7.50000000       6.97832220      
H       8.55540530       7.50000000       6.97832220     




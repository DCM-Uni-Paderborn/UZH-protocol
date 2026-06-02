%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
H       7.00000000       7.00000000       7.38360465        
H       7.00000000       7.00000000       6.61639535       



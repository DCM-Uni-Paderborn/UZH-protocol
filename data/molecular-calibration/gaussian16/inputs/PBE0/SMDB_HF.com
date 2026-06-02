%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
H       7.00000000       7.00000000       7.46643326      
F       7.00000000       7.00000000       6.53356674     



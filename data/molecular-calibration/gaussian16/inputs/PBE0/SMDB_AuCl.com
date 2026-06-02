%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Au       8.00000000       8.00000000       6.86226550       
Cl       8.00000000       8.00000000       9.13773450      



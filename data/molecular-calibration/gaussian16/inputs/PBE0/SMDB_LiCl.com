%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Li       8.00000000       8.00000000       6.97419294      
Cl       8.00000000       8.00000000       9.02580706     



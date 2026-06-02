%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Zn       9.00000000       9.00000000       9.00000000      
Cl       9.00000000       9.00000000      11.10220431     
Cl       9.00000000       9.00000000       6.89779569    



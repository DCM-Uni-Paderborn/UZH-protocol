%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ca       9.50000000       9.50000000       9.50000000       
Cl       9.50000000       9.50000000       6.92189176      
Cl       9.50000000       9.50000000      12.07810824     



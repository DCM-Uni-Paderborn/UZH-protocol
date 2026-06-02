%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ag       8.00000000       8.00000000       6.84942470     
Cl       8.00000000       8.00000000       9.15057530    



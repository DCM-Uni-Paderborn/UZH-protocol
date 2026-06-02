%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
K       9.00000000       9.00000000       7.62780588   
Cl       9.00000000       9.00000000      10.37219412 



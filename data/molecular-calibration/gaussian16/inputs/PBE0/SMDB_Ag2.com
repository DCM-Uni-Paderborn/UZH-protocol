%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ag       8.50000000       8.50000000       7.21259135      
Ag       8.50000000       8.50000000       9.78740865     



%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Zn       8.00000000       8.00000000       8.00000000      
H       8.00000000       8.00000000       6.45103708      
H       8.00000000       8.00000000       9.54896292     



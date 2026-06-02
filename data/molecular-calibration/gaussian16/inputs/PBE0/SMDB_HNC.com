%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
H       8.00000000       8.00000000       6.90139407      
N       8.00000000       8.00000000       7.91411041     
C       8.00000000       8.00000000       9.09860593    




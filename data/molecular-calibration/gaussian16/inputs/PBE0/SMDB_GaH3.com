%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ga       8.39484762       8.00000000       8.00000000     
H       9.18454286       6.63220772       8.00000000     
H       9.18454286       9.36779228       8.00000000    
H       6.81545714       8.00000000       8.00000000   



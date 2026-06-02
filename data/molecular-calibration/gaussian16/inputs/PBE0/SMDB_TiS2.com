%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ti       9.00000000       9.00000000       9.58503995     
S       7.27237354       9.00000000       8.41496005     
S      10.72762646       9.00000000       8.41496005    



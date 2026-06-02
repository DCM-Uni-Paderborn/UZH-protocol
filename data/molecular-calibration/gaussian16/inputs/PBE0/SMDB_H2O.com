%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
O       6.99999927       7.30615195       7.00000000       
H       7.75888482       6.69384876       7.00000000      
H       6.24111518       6.69384805       7.00000000     



%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Bi       7.87265627       7.50000000       8.01995814   
H       8.61796882       6.20908080       6.98004186   
H       8.61796882       8.79091920       6.98004186  
H       6.38203118       7.50000000       6.98004186 



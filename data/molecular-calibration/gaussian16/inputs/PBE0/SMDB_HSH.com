%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
S       7.49999292       7.97488698       7.50000000     
H       8.47530871       7.02511810       7.50000000   
H       6.52469129       7.02511302       7.50000000  




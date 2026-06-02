%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Sb       8.50000000       8.50000000       8.96880150      
O      10.13515101       8.50000000       8.03119850      
O       6.86484899       8.50000000       8.03119850     



%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Re       7.50000000       7.50000000       6.61169965      
O       7.50000000       7.50000000       8.38830035      




%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Sn       8.50000000       8.50000000       8.50064910     
O       6.64014933       8.50000000       8.49935090     
O      10.35985067       8.50000000       8.49935090    




%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Bi       8.50000000       8.50000000       9.04487693    
O       6.83287449       8.50000000       7.95512307    
O      10.16712551       8.50000000       7.95512307   



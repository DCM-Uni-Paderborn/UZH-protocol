%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Hf       8.00000000       8.00000000       7.12036813     
O       8.00000000       8.00000000       8.87963187     



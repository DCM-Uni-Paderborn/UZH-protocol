%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Hf       8.00000000       8.00000000       8.54734166      
O       9.44063390       8.00000000       7.45265834      
O       6.55936610       8.00000000       7.45265834     



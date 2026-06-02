%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Mo       7.59521921       8.00000000       7.69132379    
O       6.78565762       9.40220180       8.30867621    
O       6.78565762       6.59779820       8.30867621   
O       9.21434238       8.00000000       8.30867621  




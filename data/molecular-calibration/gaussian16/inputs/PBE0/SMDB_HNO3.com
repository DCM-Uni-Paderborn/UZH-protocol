%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
N       7.45587789       7.87639850       8.00000000     
O       7.22305931       9.07132824       8.00000000    
O       8.84735180       7.52021744       8.00000000   
O       6.71418878       6.92867176       8.00000000  
H       9.28581122       8.40249119       8.00000000 




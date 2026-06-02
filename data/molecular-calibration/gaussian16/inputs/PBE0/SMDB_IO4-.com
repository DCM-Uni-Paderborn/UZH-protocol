%mem=32GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

-1 1
I       8.00000000       8.00000000       8.00000000      
O       9.07485958       6.92514042       9.07485958     
O       6.92514042       9.07485958       9.07485958    
O       6.92514042       6.92514042       6.92514042   
O       9.07485958       9.07485958       6.92514042  



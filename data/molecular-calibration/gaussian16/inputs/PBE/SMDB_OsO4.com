%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Os       8.00000000       8.00000000       8.00000000      
O       9.00561138       6.99438862       9.00561138      
O       6.99438862       9.00561138       9.00561138     
O       6.99438862       6.99438862       6.99438862    
O       9.00561138       9.00561138       6.99438862   



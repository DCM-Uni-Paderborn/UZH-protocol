%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Tc       8.40002920       8.00000000       7.36437706      
F       8.40002920       8.00000000       9.22394563      
O       9.20008761       6.61425819       6.77605437     
O       9.20008761       9.38574181       6.77605437    
O       6.79991239       8.00000000       6.77605437   



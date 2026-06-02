%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Cr       7.60295009       8.00000000       8.00000000      
O       6.80885028       9.37542122       8.00000000      
O       6.80885028       6.62457878       8.00000000     
O       9.19114972       8.00000000       8.00000000    



%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ta       8.00000000       8.00000000       7.52677391     
F       8.00000000       8.00000000       9.48331802     
O       9.45139619       8.00000000       6.51668198    
O       6.54860381       8.00000000       6.51668198   



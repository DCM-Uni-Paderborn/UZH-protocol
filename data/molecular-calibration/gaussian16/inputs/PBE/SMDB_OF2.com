%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
O       8.00000000       8.00000000       8.43246925        
F       6.87477850       8.00000000       7.56753075       
F       9.12522150       8.00000000       7.56753075      



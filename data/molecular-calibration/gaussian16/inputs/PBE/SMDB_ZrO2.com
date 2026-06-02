%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Zr       8.00000000       8.00000000       8.54014184      
O       6.56502077       8.00000000       7.45985816      
O       9.43497923       8.00000000       7.45985816     



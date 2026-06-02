%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Mn       8.00000000       8.00000000       8.36255395  
O       9.41181933       8.00000000       7.63744605  
O       6.58818067       8.00000000       7.63744605 




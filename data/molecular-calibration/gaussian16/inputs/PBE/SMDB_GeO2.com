%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ge       8.50000000       8.50000000       8.50000000      
O       8.50000000       8.50000000      10.13813374      
O       8.50000000       8.50000000       6.86186626     




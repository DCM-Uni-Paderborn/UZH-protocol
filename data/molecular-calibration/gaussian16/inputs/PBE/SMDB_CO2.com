%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
C       8.00000000       8.00000000       8.00002227       
O       8.00000000       8.00000000       9.17475297      
O       8.00000000       8.00000000       6.82524703     



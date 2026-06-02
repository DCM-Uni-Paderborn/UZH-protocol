%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
W       8.94190270       8.50000000       8.50000000      
O       9.82570810       6.96920415       8.50000000     
O       9.82570810      10.03079585       8.50000000    
O       7.17429190       8.50000000       8.50000000   



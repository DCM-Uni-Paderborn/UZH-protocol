%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Sc       8.95827290       8.50000000       8.50000000       
F       9.87481871       6.91249610       8.50000000       
F       9.87481871      10.08750390       8.50000000      
F       7.12518129       8.50000000       8.50000000     




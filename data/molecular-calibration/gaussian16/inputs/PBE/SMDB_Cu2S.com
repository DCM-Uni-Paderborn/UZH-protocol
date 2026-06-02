%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
S       8.00000000       8.00000000       8.86949200      
Cu       6.79144319       8.00000000       7.13050800    
Cu       9.20855681       8.00000000       7.13050800   



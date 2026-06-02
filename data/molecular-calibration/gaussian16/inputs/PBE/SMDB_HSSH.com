%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
S       9.04882108       7.96008000       8.47819940     
S       6.95117892       8.03992000       8.47819940    
H       9.28551116       8.91219997       7.52180060   
H       6.71448884       7.08780003       7.52180060  




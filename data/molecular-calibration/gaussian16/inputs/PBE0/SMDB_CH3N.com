%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
N       7.35460612       6.76981218       7.50000000      
C       7.47578901       8.04136678       7.50000000     
H       8.29468013       6.32895845       7.50000000    
H       8.44002242       8.60510200       7.50000000   
H       6.55997758       8.67104155       7.50000000  



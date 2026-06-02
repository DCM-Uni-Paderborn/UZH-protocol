%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
In       7.56152447       8.00000000       8.00000000    
H       6.68457342       9.51892378       8.00000000    
H       6.68457342       6.48107622       8.00000000   
H       9.31542658       8.00000000       8.00000000  



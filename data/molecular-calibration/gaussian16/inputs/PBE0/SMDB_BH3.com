%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
B       7.50000000       7.50000000       7.19670081       
H       7.50000000       7.50000000       8.40986124      
H       8.55060808       7.50000000       6.59013876     
H       6.44939192       7.50000000       6.59013876    



%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 5
Re       7.50000000       7.50000000       6.67166606      
H       7.50000000       7.50000000       8.32833394      



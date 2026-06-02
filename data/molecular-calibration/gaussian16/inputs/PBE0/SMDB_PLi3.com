%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
P       8.04064370       9.19276887       8.50000000     
Li       9.87721145       7.80723113       8.50000000   
Li       7.12278855       7.80871424      10.09105640  
Li       7.12278855       7.80871424       6.90894360 



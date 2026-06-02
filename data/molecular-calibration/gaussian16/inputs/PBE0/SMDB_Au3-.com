%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

-1 1
Au       9.50000000       9.50000000       9.50000000     
Au       9.50000000       9.50000000      12.13078468    
Au       9.50000000       9.50000000       6.86921532   



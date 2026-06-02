%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Cr       8.43164401       8.00000000       8.00000000       
F       9.29493203       6.50474129       8.00000000       
F       9.29493203       9.49525871       8.00000000      
F       6.70506797       8.00000000       8.00000000     



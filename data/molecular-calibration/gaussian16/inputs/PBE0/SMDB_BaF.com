%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Ba       8.50000000       8.50000000       7.40423332      
F       8.50000000       8.50000000       9.59576668      


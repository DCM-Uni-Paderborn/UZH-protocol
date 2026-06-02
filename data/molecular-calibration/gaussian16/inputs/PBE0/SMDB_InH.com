%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
In       8.00000000       8.00000000       7.06164195   
H       8.00000000       8.00000000       8.93835805   



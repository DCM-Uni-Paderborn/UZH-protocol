%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Pd       8.00000000       8.00000000       7.03641793       
F       8.00000000       8.00000000       8.96358207       



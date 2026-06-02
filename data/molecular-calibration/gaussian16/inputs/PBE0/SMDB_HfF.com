%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Hf       8.00000000       8.00000000       8.94229918       
F       8.00000000       8.00000000       7.05770082       



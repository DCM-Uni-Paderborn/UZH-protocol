%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Be       8.00000000       8.00000000       7.11498145       
S       8.00000000       8.00000000       8.88501855       



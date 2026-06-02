%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 3
Ni       8.00000000       8.00000000       7.01741574     
S       8.00000000       8.00000000       8.98258426     



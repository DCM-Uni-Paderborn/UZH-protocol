%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
O       9.00000000       9.00000000       7.69697799       
Rb       9.00000000       9.00000000      10.30302201     



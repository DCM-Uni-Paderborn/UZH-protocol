%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Br       8.00000000       8.00000000       6.90118944       
Cl       8.00000000       8.00000000       9.09881056      



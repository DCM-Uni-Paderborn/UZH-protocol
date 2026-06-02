%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Rb       8.50000000       8.50000000       7.26312758       
H       8.50000000       8.50000000       9.73687242       



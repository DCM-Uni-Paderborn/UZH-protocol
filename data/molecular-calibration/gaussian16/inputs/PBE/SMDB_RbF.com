%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
F       8.50000000       8.50000000       7.28456203        
Rb       8.50000000       8.50000000       9.71543797       



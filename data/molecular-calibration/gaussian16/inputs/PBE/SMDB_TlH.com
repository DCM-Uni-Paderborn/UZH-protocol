%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Tl       8.00000000       8.00000000       7.04034943      
H       8.00000000       8.00000000       8.95965057      



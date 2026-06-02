%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Cs       9.00000000       9.00000000       7.66964173       
H       9.00000000       9.00000000      10.33035827       



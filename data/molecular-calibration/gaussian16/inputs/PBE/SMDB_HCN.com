%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
H       8.00000000       8.00000000       6.87291363       
C       8.00000000       8.00000000       7.95985808      
N       8.00000000       8.00000000       9.12708637     



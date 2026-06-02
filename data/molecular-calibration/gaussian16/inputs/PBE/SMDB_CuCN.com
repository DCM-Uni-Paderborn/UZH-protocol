%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Cu       8.00000000       8.00000000       6.50685942      
C       8.00000000       8.00000000       8.31442293      
N       8.00000000       8.00000000       9.49314058     



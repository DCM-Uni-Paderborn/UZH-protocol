%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Tl       7.56465407       8.00000000       8.00000000      
H       6.69396222       9.50808252       8.00000000      
H       6.69396222       6.49191748       8.00000000     
H       9.30603778       8.00000000       8.00000000    



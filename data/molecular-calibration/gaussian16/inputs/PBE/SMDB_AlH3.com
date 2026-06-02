%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Al       8.39982256       8.00000000       8.00000000       
H       9.19946768       6.61497402       8.00000000       
H       9.19946768       9.38502598       8.00000000      
H       6.80053232       8.00000000       8.00000000     



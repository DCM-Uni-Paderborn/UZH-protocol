%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Mg       9.00000000       9.00000000       9.00000000     
Cl       9.00000000       9.00000000      11.19197585    
Cl       9.00000000       9.00000000       6.80802415   



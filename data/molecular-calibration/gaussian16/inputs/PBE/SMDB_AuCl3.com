%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Au       9.58488631       9.00000000       9.00000000      
Cl      10.75465894       6.97389438       9.00000000     
Cl      10.75465894      11.02610562       9.00000000    
Cl       7.24534106       9.00000000       9.00000000   



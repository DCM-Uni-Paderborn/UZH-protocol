%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Si       8.00000000       8.00000000       8.00000000      
Cl       9.18631048       6.81368952       9.18631048     
Cl       6.81368952       9.18631048       9.18631048    
Cl       6.81368952       6.81368952       6.81368952   
Cl       9.18631048       9.18631048       6.81368952  



%mem=32GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ge       8.00000000       8.00000000       8.00000000      
Cl       9.24208697       6.75791303       9.24208697     
Cl       6.75791303       9.24208697       9.24208697    
Cl       6.75791303       6.75791303       6.75791303   
Cl       9.24208697       9.24208697       6.75791303  



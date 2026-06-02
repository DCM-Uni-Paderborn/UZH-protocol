%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
As       8.00964648       8.50000000       9.01282175      
Cl       7.02893943      10.19863444       7.98717825     
Cl       7.02893943       6.80136556       7.98717825    
Cl       9.97106057       8.50000000       7.98717825   



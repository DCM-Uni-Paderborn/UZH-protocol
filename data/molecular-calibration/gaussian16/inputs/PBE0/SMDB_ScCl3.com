%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Sc       9.56996796       9.00000000       9.00000000     
Cl      10.70990388       7.02557307       9.00000000    
Cl      10.70990388      10.97442693       9.00000000   
Cl       7.29009612       9.00000000       9.00000000  




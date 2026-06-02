%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ti       8.50000000       8.50000000       8.50000000      
Cl       9.76063727       7.23936273       9.76063727     
Cl       7.23936273       9.76063727       9.76063727    
Cl       7.23936273       7.23936273       7.23936273   
Cl       9.76063727       9.76063727       7.23936273  



%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Sc       8.45336520       8.00000000       8.00000000      
H       9.36009561       6.42949686       8.00000000      
H       9.36009561       9.57050314       8.00000000     
H       6.63990439       8.00000000       8.00000000    



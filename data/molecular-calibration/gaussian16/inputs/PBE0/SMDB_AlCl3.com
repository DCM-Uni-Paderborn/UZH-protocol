%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Al       9.52391411       9.00000000       9.00000000      
Cl      10.57174234       7.18510828       9.00000000     
Cl      10.57174234      10.81489172       9.00000000    
Cl       7.42825766       9.00000000       9.00000000   



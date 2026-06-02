%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ga       9.53543131       9.00000000       9.00000000       
Cl      10.60629394       7.14521152       9.00000000      
Cl      10.60629394      10.85478848       9.00000000     
Cl       7.39370606       9.00000000       9.00000000    



%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
P       7.64970282       8.00000673       7.59863750      
F       9.05493061       8.00000668       8.40136250     
F       6.94507415       9.21694566       8.39874280    
F       6.94506939       6.78305434       8.39874266   



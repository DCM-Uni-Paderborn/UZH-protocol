%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
P      11.18417413      10.50000000      11.16940712      
K      12.55252240       8.12995128       9.83059288     
K      12.55252240      12.87004872       9.83059288    
K       8.44747760      10.50000000       9.83059288   



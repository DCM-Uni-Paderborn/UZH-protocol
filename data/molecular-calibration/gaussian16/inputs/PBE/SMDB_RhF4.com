%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Rh       8.00000000       8.00000000       8.00000000       
F       9.11706813       6.88293187       9.11706813       
F       6.88293187       9.11706813       9.11706813      
F       6.88293187       6.88293187       6.88293187     
F       9.11706813       9.11706813       6.88293187    



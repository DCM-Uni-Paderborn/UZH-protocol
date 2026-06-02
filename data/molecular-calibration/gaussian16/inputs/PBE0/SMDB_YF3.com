%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Y       7.99748544       8.50000000       8.50344710      
F       6.99245632      10.24076150       8.49655290     
F       6.99245632       6.75923850       8.49655290    
F      10.00754368       8.50000000       8.49655290   



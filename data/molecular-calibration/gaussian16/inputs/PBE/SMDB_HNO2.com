%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
N       8.00008691       8.26876564       8.00000000     
H       8.00038756       7.20313331       8.00000000    
O       9.10445308       8.79686669       8.00000000   
O       6.89554692       8.79640890       8.00000000  



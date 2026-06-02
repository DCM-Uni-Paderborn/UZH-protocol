%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
O       6.67483038       7.88849535       7.50000000       
N       7.87667440       7.99977160       7.50000000      
H       8.32516962       7.00022840       7.50000000     



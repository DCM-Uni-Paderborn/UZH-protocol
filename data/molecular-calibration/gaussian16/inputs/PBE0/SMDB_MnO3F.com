%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Mn       8.37233368       8.00000000       7.39619809     
F       8.37233368       8.00000000       9.11062663     
O       9.11700104       6.71019830       6.88937337    
O       9.11700104       9.28980170       6.88937337   
O       6.88299896       8.00000000       6.88937337  




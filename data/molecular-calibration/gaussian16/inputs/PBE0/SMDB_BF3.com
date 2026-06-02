%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
B       7.66928680       8.00000212       8.00000000        
F       8.99335501       8.00000398       8.00000000       
F       7.00665045       9.14597724       8.00000000      
F       7.00664499       6.85402276       8.00000000     



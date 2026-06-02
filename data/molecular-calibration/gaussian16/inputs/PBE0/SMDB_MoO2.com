%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Mo       8.00000000       8.00000000       8.47756544     
O       9.43106704       8.00000000       7.52243456     
O       6.56893296       8.00000000       7.52243456    



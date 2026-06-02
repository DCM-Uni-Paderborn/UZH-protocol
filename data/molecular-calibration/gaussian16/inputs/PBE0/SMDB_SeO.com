%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Se       8.00000000       8.00000000       7.16327633      
O       8.00000000       8.00000000       8.83672367      



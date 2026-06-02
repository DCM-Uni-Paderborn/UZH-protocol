%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Mg       8.50000000       8.50000000       8.50000000     
F       8.50000000       8.50000000      10.25813535     
F       8.50000000       8.50000000       6.74186465    



%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 3
Ni       9.00000000       9.00000000       9.00092111       
Cl       6.90091203       9.00000000       8.99907889      
Cl      11.09908797       9.00000000       8.99907889     



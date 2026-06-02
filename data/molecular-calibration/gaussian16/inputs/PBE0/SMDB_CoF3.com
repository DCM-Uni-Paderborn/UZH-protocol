%mem=32GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 5
Co       8.43689705       8.00000000       8.00000000      
F       9.31069116       6.48654421       8.00000000      
F       9.31069116       9.51345579       8.00000000     
F       6.68930884       8.00000000       8.00000000    



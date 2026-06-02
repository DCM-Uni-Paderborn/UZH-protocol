%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Rh       7.50000000       7.50000000       6.54587531      
F       7.50000000       7.50000000       8.45412469      



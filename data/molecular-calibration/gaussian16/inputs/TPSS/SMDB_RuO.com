%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 3
Ru       7.50000000       7.50000000       6.63547827      
O       7.50000000       7.50000000       8.36452173      



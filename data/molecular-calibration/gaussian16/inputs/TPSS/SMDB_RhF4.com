%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT=cartesian FREQ

Mol job 1

0 2
Rh       8.00000000       8.00000000       8.00100000       
F       9.11706813       6.88293187       9.11706813       
F       6.88293187       9.11706813       9.11706813      
F       6.88293187       6.88293187       6.88293187     
F       9.11706813       9.11706813       6.88293187    



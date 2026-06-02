%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Mn       8.50000000       8.50000000       8.50000000     
F       8.50000000       8.50000000      10.27891343     
F       8.50000000       8.50000000       6.72108657    



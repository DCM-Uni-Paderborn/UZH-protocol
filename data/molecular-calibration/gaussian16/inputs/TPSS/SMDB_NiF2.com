%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 3
Ni       8.50000000       8.50000000       8.50000000     
F       8.50000000       8.50000000       6.77168626     
F       8.50000000       8.50000000      10.22831374    



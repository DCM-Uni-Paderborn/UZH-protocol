%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Re       8.50000000       8.50000000       8.50000000      
O       8.50000000       8.50000000       6.71901640      
O       8.50000000       8.50000000      10.28098360     



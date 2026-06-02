%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 5
Pd       8.50000000       8.50000000       8.50146363      
O       6.61455762       8.50000000       8.49853637      
O      10.38544238       8.50000000       8.49853637     



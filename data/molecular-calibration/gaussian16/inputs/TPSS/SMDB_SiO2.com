%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Si       8.50000000       8.50000000       8.50000000      
O       8.50000000       8.50000000       6.96081422      
O       8.50000000       8.50000000      10.03918578     



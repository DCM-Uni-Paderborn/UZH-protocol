%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ru       8.50000000       8.50000000       8.50000000     
O       8.50000000       8.50000000      10.20890819     
O       8.50000000       8.50000000       6.79109181    




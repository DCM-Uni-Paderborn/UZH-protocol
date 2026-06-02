%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Pb       8.50000000       8.50000000       8.50000000       
O       8.50000000       8.50000000      10.41222346       
O       8.50000000       8.50000000       6.58777654      



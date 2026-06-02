%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Cd       8.50000000       8.50000000       8.50000000      
F       8.50000000       8.50000000      10.43361194      
F       8.50000000       8.50000000       6.56638806     



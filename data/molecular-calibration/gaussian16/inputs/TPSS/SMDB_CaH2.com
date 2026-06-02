%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ca       8.50000000       8.50000000       8.50000000      
H       8.50000000       8.50000000      10.63979355      
H       8.50000000       8.50000000       6.36020645     



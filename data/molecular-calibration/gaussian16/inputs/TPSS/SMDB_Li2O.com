%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT=cartesian FREQ

Mol job 1

0 1
O       8.50000000       8.50000000       8.50000000      
Li       8.50000000       8.50000000      10.12926740    
Li       8.50000000       8.50000000       6.87073260   



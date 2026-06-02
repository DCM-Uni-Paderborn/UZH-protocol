%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
P       8.00000000       8.00000000       6.67598518     
H       8.00000000       8.00000000       9.32401482    
C       8.00000000       8.00000000       8.23259639   




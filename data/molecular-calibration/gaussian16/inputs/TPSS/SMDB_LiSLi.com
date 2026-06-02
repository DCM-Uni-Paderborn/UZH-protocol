%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
S       9.00000000       9.00000000       9.00000000       
Li       9.00000000       9.00000000      11.08874839     
Li       9.00000000       9.00000000       6.91125161    



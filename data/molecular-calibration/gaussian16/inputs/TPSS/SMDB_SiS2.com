%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Si       9.00000000       9.00000000       9.00000000      
S       9.00000000       9.00000000       7.05181730      
S       9.00000000       9.00000000      10.94818270     



%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
S      10.00000000      10.00000000      10.00000000       
Na      10.00000000      10.00000000       7.59401767     
Na      10.00000000      10.00000000      12.40598233    



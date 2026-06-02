%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Be       8.00000000       8.00000000       8.00000000       
H       8.00000000       8.00000000       9.34441272       
H       8.00000000       8.00000000       6.65558728      



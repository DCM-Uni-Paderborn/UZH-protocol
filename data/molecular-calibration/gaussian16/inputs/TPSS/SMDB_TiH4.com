%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ti       7.50000000       7.50000000       7.50000000      
H       8.48110341       6.51889659       8.48110341      
H       6.51889659       8.48110341       8.48110341     
H       6.51889659       6.51889659       6.51889659    
H       8.48110341       8.48110341       6.51889659   




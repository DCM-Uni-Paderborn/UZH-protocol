%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Si       7.50000000       7.50000000       7.50000000      
H       8.36682528       6.63317472       8.36682528      
H       6.63317472       8.36682528       8.36682528     
H       6.63317472       6.63317472       6.63317472    
H       8.36682528       8.36682528       6.63317472   




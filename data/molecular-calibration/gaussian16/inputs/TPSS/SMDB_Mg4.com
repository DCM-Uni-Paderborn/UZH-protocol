%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Mg       9.13513298       6.86486702       9.13513298      
Mg       6.86486702       9.13513298       9.13513298     
Mg       6.86486702       6.86486702       6.86486702    
Mg       9.13513298       9.13513298       6.86486702   



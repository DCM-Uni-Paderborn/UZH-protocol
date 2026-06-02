%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ge       7.50000000       7.50000000       7.50000000      
H       8.39580971       6.60419029       8.39580971      
H       6.60419029       8.39580971       8.39580971     
H       6.60419029       6.60419029       6.60419029    
H       8.39580971       8.39580971       6.60419029   



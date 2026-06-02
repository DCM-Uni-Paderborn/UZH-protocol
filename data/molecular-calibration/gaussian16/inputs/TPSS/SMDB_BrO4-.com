%mem=32GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

-1 1
Br       7.50000000       7.50000000       7.50000000    
O       8.45502884       6.54497116       8.45502884    
O       6.54497116       8.45502884       8.45502884   
O       6.54497116       6.54497116       6.54497116  
O       8.45502884       8.45502884       6.54497116 



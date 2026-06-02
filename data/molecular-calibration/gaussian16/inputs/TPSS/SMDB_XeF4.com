%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Xe       8.00000000       8.00000000       8.00000000      
F       9.44061142       6.55938858       8.00000000      
F       9.44061142       9.44061142       8.00000000     
F       6.55938858       9.44061142       8.00000000    
F       6.55938858       6.55938858       8.00000000   



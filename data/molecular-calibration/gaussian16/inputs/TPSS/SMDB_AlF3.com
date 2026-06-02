%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Al       8.41446009       8.00000000       8.00000000      
F       9.24338027       6.56426814       8.00000000      
F       9.24338027       9.43573186       8.00000000    
F       6.75661973       8.00000000       8.00000000   




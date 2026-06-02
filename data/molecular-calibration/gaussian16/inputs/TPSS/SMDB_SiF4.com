%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Si       7.50000000       7.50000000       7.50000000      
F       8.42473047       6.57526953       8.42473047      
F       6.57526953       8.42473047       8.42473047     
F       6.57526953       6.57526953       6.57526953    
F       8.42473047       8.42473047       6.57526953   



%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
S      10.50000000      10.50000000      11.86857990       
S       7.29487744      10.50000000       9.13142010      
S      13.70512256      10.50000000       9.13142010     
Al       8.84813770      10.50000000      10.42478651   
Al      12.15186230      10.50000000      10.42478651  




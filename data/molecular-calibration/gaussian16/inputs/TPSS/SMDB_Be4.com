%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Be       9.04903988       7.25822556       8.00000000        
Be       6.95096012       7.25821808       8.00000000       
Be       8.00000497       8.74178192       6.95096921      
Be       8.00000497       8.74178192       9.04903079     



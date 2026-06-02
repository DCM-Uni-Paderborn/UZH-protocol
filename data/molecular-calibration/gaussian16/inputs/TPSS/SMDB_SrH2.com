%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Sr       8.50000000       8.50000000       9.04285961     
H       6.63495063       8.50000000       7.95714039     
H      10.36504937       8.50000000       7.95714039    



%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Nb       8.00000000       8.00000000       8.53615074      
O       9.36911438       8.00000000       7.46384926      
O       6.63088562       8.00000000       7.46384926     



%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
O       8.00000000       8.00000000       8.64815818      
Cu       9.21104505       8.00000000       7.35184182    
Cu       6.78895495       8.00000000       7.35184182   



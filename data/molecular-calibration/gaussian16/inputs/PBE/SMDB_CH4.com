%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
C       7.00000249       6.99999521       6.99999858      
H       7.63837599       7.63838738       7.63837740     
H       6.36161484       7.63837613       6.36162495    
H       6.36162430       6.36161262       7.63838073   
H       7.63838516       6.36161610       6.36161927  



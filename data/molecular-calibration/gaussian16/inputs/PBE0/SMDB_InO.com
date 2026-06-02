%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
In       8.00000000       8.00000000       7.06311092    
O       8.00000000       8.00000000       8.93688908    



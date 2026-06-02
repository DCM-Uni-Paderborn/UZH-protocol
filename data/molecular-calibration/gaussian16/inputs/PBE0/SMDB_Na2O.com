%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
O       9.50000000       9.50000000       9.49949998       
Na      11.49296980       9.50000000       9.50050002     
Na       7.50703020       9.50000000       9.50050002    



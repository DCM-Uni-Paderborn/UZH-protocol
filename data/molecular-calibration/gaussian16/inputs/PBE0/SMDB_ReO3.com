%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Re       8.06359968       8.50000000       8.50000000      
O       7.19079905      10.01173504       8.50000000      
O       7.19079905       6.98826496       8.50000000     
O       9.80920095       8.50000000       8.50000000    



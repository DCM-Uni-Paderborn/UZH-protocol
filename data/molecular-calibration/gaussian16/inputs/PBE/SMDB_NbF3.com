%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Nb       8.03399732       8.50000000       8.50000000      
F       7.10199197      10.11428062       8.50000000      
F       7.10199197       6.88571938       8.50000000     
F       9.89800803       8.50000000       8.50000000    



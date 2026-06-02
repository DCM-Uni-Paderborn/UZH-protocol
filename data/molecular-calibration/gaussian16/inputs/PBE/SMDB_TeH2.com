%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Te       7.50000000       7.50000000       8.09461074      
H       6.30984412       7.50000000       6.90538926      
H       8.69015588       7.50000000       6.90538926     



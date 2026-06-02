%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Li       7.50000000       7.50000000       6.71312864      
F       7.50000000       7.50000000       8.28687136      



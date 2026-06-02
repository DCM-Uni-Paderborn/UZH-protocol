%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Hg       8.50000000       8.50000000       8.50000000      
F       8.50000000       8.50000000       6.54350737      
F       8.50000000       8.50000000      10.45649263     



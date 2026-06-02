%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Zn       8.50000000       8.50000000       8.50000000      
F       8.50000000       8.50000000      10.23722328      
F       8.50000000       8.50000000       6.76277672     



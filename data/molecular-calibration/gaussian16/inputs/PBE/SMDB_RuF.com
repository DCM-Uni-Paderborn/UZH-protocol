%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Ru       7.50000000       7.50000000       6.54981114     
F       7.50000000       7.50000000       8.45018886     




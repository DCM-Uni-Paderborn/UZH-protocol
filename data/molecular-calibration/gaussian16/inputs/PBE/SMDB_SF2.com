%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
S       8.00000000       8.00000000       8.52494254      
F       9.25881104       8.00000000       7.47505746     
F       6.74118896       8.00000000       7.47505746    



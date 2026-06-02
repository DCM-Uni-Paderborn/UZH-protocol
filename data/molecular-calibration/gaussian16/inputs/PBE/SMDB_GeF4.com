%mem=32GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ge       7.50000000       7.50000000       7.50000000      
F       8.49211455       6.50788545       8.49211455      
F       6.50788545       8.49211455       8.49211455     
F       6.50788545       6.50788545       6.50788545    
F       8.49211455       8.49211455       6.50788545   




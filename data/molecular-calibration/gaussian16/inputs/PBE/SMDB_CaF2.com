%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ca       9.00000000       9.00000000       9.00000000      
F       9.00000000       9.00000000       6.89840952     
F       9.00000000       9.00000000      11.10159048    



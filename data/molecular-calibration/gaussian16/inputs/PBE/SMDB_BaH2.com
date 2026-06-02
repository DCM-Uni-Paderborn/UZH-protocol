%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ba       8.50000000       8.50000000       9.16889179       
H      10.34446359       8.50000000       7.83110821        
H       6.65553641       8.50000000       7.83110821        



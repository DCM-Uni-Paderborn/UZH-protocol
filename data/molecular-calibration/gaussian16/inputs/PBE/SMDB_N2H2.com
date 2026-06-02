%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
N       6.87727333       7.98889648       7.50000000        
N       8.12261080       7.98894925       7.50000000       
H       6.46522307       7.01105075       7.50000000      
H       8.53477693       7.01114598       7.50000000     




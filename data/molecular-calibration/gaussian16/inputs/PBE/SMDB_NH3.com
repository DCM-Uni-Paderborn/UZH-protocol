%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
N       7.26521099       7.71316860       7.50000000       
H       8.20430360       7.28683140       7.50000000      
H       6.79569640       7.28688396       8.31335641     
H       6.79569640       7.28688396       6.68664359    



%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
C       7.50001200       7.79863195       7.50000000      
O       7.50001194       6.58968746       7.50000000     
H       6.54774755       8.41031254       7.50000000    
H       8.45225245       8.41029325       7.50000000   



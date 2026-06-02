%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Hg      10.49952604       9.17700906      10.50000000      
Hg      10.50047396      11.82218607      10.50000000     
Cl      10.50004307       6.80917540      10.50000000    
Cl      10.50001456      14.19082460      10.50000000   



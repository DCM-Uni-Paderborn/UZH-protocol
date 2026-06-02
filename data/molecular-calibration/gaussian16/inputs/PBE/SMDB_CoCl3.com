%mem=32GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 5
Co       9.53050735       9.00000000       9.00000000      
Cl      10.59152205       7.16226864       9.00000000     
Cl      10.59152205      10.83773136       9.00000000    
Cl       7.40847795       9.00000000       9.00000000   



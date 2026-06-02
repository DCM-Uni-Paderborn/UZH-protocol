%mem=32GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Cr       9.53577892       9.00000000       9.00000000       
Cl      10.60733676       7.14400738       9.00000000      
Cl      10.60733676      10.85599262       9.00000000     
Cl       7.39266324       9.00000000       9.00000000    



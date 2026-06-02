%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Hf       8.98141133       8.50000000       8.50000000      
F       9.94423398       6.83234224       8.50000000      
F       9.94423398      10.16765776       8.50000000     
F       7.05576602       8.50000000       8.50000000    



%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Ti       8.94223704       8.50000000       8.50000000      
F       9.82671113       6.96804595       8.50000000      
F       9.82671113      10.03195405       8.50000000     
F       7.17328887       8.50000000       8.50000000    



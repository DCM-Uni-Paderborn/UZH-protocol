%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Fe       8.94281707       8.50000000       8.50000000       
F       9.82845122       6.96603666       8.50000000       
F       9.82845122      10.03396334       8.50000000      
F       7.17154878       8.50000000       8.50000000     



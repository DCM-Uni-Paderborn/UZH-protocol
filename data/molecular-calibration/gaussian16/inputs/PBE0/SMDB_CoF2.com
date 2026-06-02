%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Co       8.50000000       8.50000000       8.49368409      
F      10.22700046       8.50000000       8.50631591      
F       6.77299954       8.50000000       8.50631591     



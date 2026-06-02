%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
W       8.02552754       8.50000000       8.50066029      
F       7.07658261      10.14362083       8.49933971     
F       7.07658261       6.85637917       8.49933971    
F       9.92341739       8.50000000       8.49933971   




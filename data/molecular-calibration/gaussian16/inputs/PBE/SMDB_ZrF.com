%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Zr       8.00000000       8.00000000       7.05780503      
F       8.00000000       8.00000000       8.94219497      



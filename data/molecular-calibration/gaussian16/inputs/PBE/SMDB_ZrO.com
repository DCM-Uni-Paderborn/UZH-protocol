%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Zr       8.00000000       8.00000000       7.11892628      
O       8.00000000       8.00000000       8.88107372      



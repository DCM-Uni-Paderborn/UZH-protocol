%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Pb       7.50000000       7.50000000       7.50000000       
H       8.51232421       6.48767579       8.51232421       
H       6.48767579       8.51232421       8.51232421      
H       6.48767579       6.48767579       6.48767579     
H       8.51232421       8.51232421       6.48767579    



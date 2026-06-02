%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Cl       8.49998669       7.65616901       8.50000000      
F       6.73800883       7.69854759       8.50000000      
F      10.26199117       7.69859235       8.50000000     
F       8.50002499       9.34383099       8.50000000    



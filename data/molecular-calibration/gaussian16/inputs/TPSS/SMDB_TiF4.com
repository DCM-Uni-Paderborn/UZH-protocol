%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ti       7.50000000       7.50000000       7.50000000       
F       8.51098778       6.48901222       8.51098778       
F       6.48901222       8.51098778       8.51098778      
F       6.48901222       6.48901222       6.48901222     
F       8.51098778       8.51098778       6.48901222    




%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Sn       7.50000000       7.50000000       7.50000000      
H       8.50037870       6.49962130       8.50037870      
H       6.49962130       8.50037870       8.50037870     
H       6.49962130       6.49962130       6.49962130    
H       8.50037870       8.50037870       6.49962130   




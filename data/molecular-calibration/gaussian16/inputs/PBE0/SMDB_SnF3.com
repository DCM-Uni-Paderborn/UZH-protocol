%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Sn       8.95309072       8.50000000       8.87909133     
F       9.85927217       6.93044769       8.12090867     
F       9.85927217      10.06955231       8.12090867    
F       7.14072783       8.50000000       8.12090867   




%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Se       8.00000000       8.00000000       8.43693614      
O       6.61747157       8.00000000       7.56306386      
O       9.38252843       8.00000000       7.56306386     



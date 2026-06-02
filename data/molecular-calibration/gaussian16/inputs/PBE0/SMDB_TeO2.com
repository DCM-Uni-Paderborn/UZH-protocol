%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Te       8.50000000       8.50000000       9.01588544      
O       6.97333076       8.50000000       7.98411456      
O      10.02666924       8.50000000       7.98411456     



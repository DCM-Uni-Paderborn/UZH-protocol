%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Sr       8.50000000       8.50000000       7.27403570      
S       8.50000000       8.50000000       9.72596430      



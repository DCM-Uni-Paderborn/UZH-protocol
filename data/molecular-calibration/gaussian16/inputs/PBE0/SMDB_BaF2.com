%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ba       8.50000000       8.50000000       9.11853327       
F      10.35427009       8.50000000       7.88146673       
F       6.64572991       8.50000000       7.88146673      



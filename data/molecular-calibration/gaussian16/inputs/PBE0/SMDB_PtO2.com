%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 3
Pt       8.50000000       8.50000000       8.50000000       
O       8.50000000       8.50000000       6.75969703       
O       8.50000000       8.50000000      10.24030297      




%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 3
Pt       8.00000000       8.00000000       7.11590822     
O       8.00000000       8.00000000       8.88409178     



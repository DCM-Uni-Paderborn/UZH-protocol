%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
K       9.00000000       9.00000000       7.40879961   
I       9.00000000       9.00000000      10.59120039  



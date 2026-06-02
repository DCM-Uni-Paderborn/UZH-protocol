%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
W       8.00000000       8.00000000       8.48080672      
O       6.54898909       8.00000000       7.51919328     
O       9.45101091       8.00000000       7.51919328    




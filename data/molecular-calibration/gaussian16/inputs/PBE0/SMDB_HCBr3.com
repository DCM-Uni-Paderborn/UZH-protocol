%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
C       8.96701785       8.50000000       8.23261525       
H       8.96701785       8.50000000       9.33348420      
Br       9.90105356       6.88220270       7.66651580    
Br       9.90105356      10.11779730       7.66651580   
Br       7.09894644       8.50000000       7.66651580  




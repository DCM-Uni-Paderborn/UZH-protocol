%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

-1 1
Mn       7.50000000       7.50000000       7.50000000    
O       8.43102670       6.56897330       8.43102670    
O       6.56897330       8.43102670       8.43102670   
O       6.56897330       6.56897330       6.56897330  
O       8.43102670       8.43102670       6.56897330 




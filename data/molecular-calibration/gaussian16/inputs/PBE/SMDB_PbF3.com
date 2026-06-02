%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Pb       8.02893639       8.50000000       8.88922684      
F       7.08680917      10.13181222       8.11077316      
F       7.08680917       6.86818778       8.11077316     
F       9.91319083       8.50000000       8.11077316    



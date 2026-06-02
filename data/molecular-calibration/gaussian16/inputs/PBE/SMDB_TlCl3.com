%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Tl       8.40171786       9.00000000       8.99490636       
Cl       7.20515357      11.07251013       9.00509364      
Cl       7.20515357       6.92748987       9.00509364     
Cl      10.79484643       9.00000000       9.00509364    



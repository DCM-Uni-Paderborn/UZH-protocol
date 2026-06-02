%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
V       7.59028138       8.00000000       7.48499960      
O       7.59028138       8.00000000       9.05829179     
F       6.77084413       9.41930695       6.94170821    
F       6.77084413       6.58069305       6.94170821   
F       9.22915587       8.00000000       6.94170821  



%mem=8GB
%NProcShare=8
#N uPBE1PBE/Def2QZVPP scf=tight scf=XQC Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Ni       7.55985218       8.00000000       8.00053731       
F       6.67955654       9.52471677       7.99946269       
F       6.67955654       6.47528323       7.99946269      
F       9.32044346       8.00000000       7.99946269     




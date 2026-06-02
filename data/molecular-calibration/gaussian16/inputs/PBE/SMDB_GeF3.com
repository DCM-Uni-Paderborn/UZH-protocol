%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Ge       8.40574231       8.00000000       8.33106899     
F       9.21722692       6.59446743       7.66893101     
F       9.21722692       9.40553257       7.66893101    
F       6.78277308       8.00000000       7.66893101   



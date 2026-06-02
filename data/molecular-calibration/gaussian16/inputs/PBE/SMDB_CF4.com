%mem=32GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
C       7.50000070       7.50000106       7.50000180    
F       8.27054723       8.27054928       8.27055016   
F       6.72945277       8.27055096       6.72945750  
F       6.72945848       6.72945717       8.27054613 
F       8.27054239       6.72944904       6.72944984



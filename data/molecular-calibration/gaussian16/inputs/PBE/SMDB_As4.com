%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
As       8.87261702       7.12738298       8.87261702      
As       7.12738298       8.87261702       8.87261702     
As       7.12738298       7.12738298       7.12738298    
As       8.87261702       8.87261702       7.12738298   



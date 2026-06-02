%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
N       8.01516705       8.01516709       8.01515759      
N       6.98486037       8.01512763       6.98485058     
N       6.98483295       6.98483291       8.01514562    
N       8.01513594       6.98485211       6.98484241   



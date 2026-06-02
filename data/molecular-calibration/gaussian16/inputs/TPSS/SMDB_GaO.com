%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Ga       8.00000000       8.00000000       7.14432764    
O       8.00000000       8.00000000       8.85567236    



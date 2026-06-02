%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Mg       7.50000000       7.50000000       6.61142970      
F       7.50000000       7.50000000       8.38857030      



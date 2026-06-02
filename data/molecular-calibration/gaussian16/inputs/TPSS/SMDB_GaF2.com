%mem=8GB
%NProcShare=8
#N UTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Ga       8.00000000       8.00000000       8.46122992       
F       6.47989882       8.00000000       7.53877008       
F       9.52010118       8.00000000       7.53877008      



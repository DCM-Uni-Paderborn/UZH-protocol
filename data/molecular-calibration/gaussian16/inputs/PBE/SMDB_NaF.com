%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Na       8.00000000       8.00000000       7.03876048       
F       8.00000000       8.00000000       8.96123952       



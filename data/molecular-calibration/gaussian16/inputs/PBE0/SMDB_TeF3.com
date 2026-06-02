%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Te       8.00330021       8.50000000       8.62515276       
F       7.00990064      10.22061853       8.37484724       
F       7.00990064       6.77938147       8.37484724      
F       9.99009936       8.50000000       8.37484724     



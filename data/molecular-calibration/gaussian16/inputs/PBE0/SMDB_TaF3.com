%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ta       8.03304950       8.50000000       8.49968953      
F       7.09914849      10.11756400       8.50031047      
F       7.09914849       6.88243600       8.50031047     
F       9.90085151       8.50000000       8.50031047    



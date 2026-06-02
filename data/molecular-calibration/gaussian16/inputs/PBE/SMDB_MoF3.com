%mem=8GB
%NProcShare=8
#N UPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Mo       8.97000957       8.50000000       8.49943670 
F       9.91002871       6.87183909       8.50056330 
F       9.91002871      10.12816091       8.50056330
F       7.08997129       8.50000000       8.50056330  



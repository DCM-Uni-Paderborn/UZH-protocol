%mem=8GB
%NProcShare=8
#N UPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 2
Zr       8.01826285       8.50000000       8.50156868       
F       7.05478854      10.16878646       8.49843132       
F       7.05478854       6.83121354       8.49843132     
F       9.94521146       8.50000000       8.49843132    




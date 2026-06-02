%mem=8GB
%NProcShare=8
#N RTPSSTPSS/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
Ru       7.99997067       7.99998729       8.00002482      
O       8.99030863       8.99035806       8.99035738      
O       7.00967727       7.00972561       8.99032133     
O       8.99035593       7.00964194       7.00964262    
O       7.00964407       8.99035520       7.00969396   




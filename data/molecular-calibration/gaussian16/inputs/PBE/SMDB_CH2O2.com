%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
C       7.50369969       7.50059092       7.78795997       
O       7.99089983       8.08347895       6.62061273      
O       7.03071727       6.91967615       6.61372714     
H       8.22380346       6.90185151       8.38627286    
H       6.77619654       8.09814849       8.37851012   



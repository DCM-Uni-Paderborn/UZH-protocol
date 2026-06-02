%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
N       8.98510347       9.50000000       9.84871654      
Na       7.95531041      11.28365391       9.15128346    
Na       7.95531041       7.71634609       9.15128346   
Na      11.04468959       9.50000000       9.15128346  




%mem=8GB
%NProcShare=8
#N RPBE1PBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
O       8.22704490       7.43779879       7.75126135       
O       6.77295510       7.56220121       7.75126135      
H       8.46185864       8.24628531       7.24873865     
H       6.53814136       6.75371469       7.24873865    



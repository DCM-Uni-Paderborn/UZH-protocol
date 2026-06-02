%mem=8GB
%NProcShare=8
#N RPBEPBE/Def2QZVPP scf=tight Int(Grid=ultrafine) OPT FREQ

Mol job 1

0 1
S       8.50000027       8.49997153       9.01340130       
F       6.81252645       8.49997522       8.91664005      
F      10.18747355       8.49997522       8.91665039     
F       8.50000354       9.74590918       7.98667059    
F       8.50000354       7.25409082       7.98659870   



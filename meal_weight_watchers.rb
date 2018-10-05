nutritif = ['Lipides' ,'Glucides', 'Protéines']
boof = ['welsh', 'frites','biere']
taux_welsh = [38.4, 18.3, 36.3]
taux_frites = [15,41,3.4]
taux_biere = [0,25,4]
taux_normal = [9, 4, 4]
welsh = nutritif.zip(taux_welsh).to_h
frites = nutritif.zip(taux_frites).to_h
biere = nutritif.zip(taux_biere).to_h
nourriture = [welsh, frites,biere] 
@normal = nutritif.zip(taux_normal).to_h
menu = boof.zip(nourriture).to_h
@resultat = 0

def calori(kaly)
	kaly.each{|key,value| value.each{|key,value|  @resultat += @normal[key]*value }}
	puts @resultat
end 
calori(menu)


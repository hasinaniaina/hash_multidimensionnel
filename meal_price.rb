taux_welsh = [38.4, 18.3, 36.3]
taux_frites = [15,41,3.4]
taux_biere = [0,25,4]
@taux_normal = [9, 4, 4]
@nutritif = ['Lipides' ,'Glucides', 'Protéines']
menu = ['welsh', 'frites','biere'] 
prix_ensemble = [{:price => 15},{:price => 4},{:price => 5}]
prix = menu.zip(prix_ensemble).to_h
@prix = Hash.new()
@prix['prix'] = prix
welsh = @nutritif.zip(taux_welsh).to_h
frites = @nutritif.zip(taux_frites).to_h
biere = @nutritif.zip(taux_biere).to_h
nourriture = [welsh, frites,biere]
@menu = menu.zip(nourriture).to_h
@menu[0]= @prix
@resultat = 0

def meal_price(nourriture)
	nourriture[0]['prix'].each{|x, y|   @resultat += y[:price]}
	puts @resultat
end 

meal_price(@menu)


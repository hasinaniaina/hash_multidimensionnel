@nutritif = ['Lipides' ,'Glucides', 'Protéines']

@taux_welish = [38.4, 18.3, 36.3]

@taux_normal = [9, 4, 4]
@welish = @nutritif.zip(@taux_welish).to_h
@resultat = 0
def calory(nourriture)
	normal = @nutritif.zip(@taux_normal).to_h	
	nourriture.each{|x,y| @resultat += normal[x]* y }
	puts @resultat
end


calory(@welish)
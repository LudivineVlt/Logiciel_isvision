Case of 
		
	: (Form event code:C388=On Load:K2:1)  // affichage valeur par défaut
		at_K_methode:=0
		
	: (Form event code:C388=On Clicked:K2:4)  //La sélection est modifiée
		K_methode:=at_K_methode{at_K_methode}
		
	: (Form event code:C388=On Unload:K2:2)
		CLEAR VARIABLE:C89(at_K_methode)
		
End case 
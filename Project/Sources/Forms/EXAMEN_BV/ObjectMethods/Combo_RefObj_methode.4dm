Case of 
		
	: (Form event code:C388=On Load:K2:1)  // affichage valeur par défaut
		at_RefObj_methode:=0
		
	: (Form event code:C388=On Clicked:K2:4)  //La sélection est modifiée
		RefObj_methode:=at_RefObj_methode{at_RefObj_methode}
		
	: (Form event code:C388=On Unload:K2:2)
		CLEAR VARIABLE:C89(at_RefObj_methode)
		
End case 
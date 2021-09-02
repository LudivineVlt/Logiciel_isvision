Case of 
		
	: (Form event code:C388=On Load:K2:1)  // affichage valeur par défaut
		at_bris_type:=0
		
	: (Form event code:C388=On Clicked:K2:4)  //La sélection est modifiée
		bris_type:=at_bris_type{at_bris_type}
		
	: (Form event code:C388=On Unload:K2:2)
		CLEAR VARIABLE:C89(at_bris_type)
		
End case 
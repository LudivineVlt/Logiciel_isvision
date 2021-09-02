Case of 
		
	: (Form event code:C388=On Load:K2:1)  // affichage valeur par défaut
		at_acuiteBruteVP_Optotype:=0
		
	: (Form event code:C388=On Clicked:K2:4)  //La sélection est modifiée
		acuiteBruteVP_Optotype:=at_acuiteBruteVP_Optotype{at_acuiteBruteVP_Optotype}
		
	: (Form event code:C388=On Unload:K2:2)
		CLEAR VARIABLE:C89(at_acuiteBruteVP_Optotype)
		
End case 
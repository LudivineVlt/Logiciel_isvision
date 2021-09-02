Case of 
		
	: (Form event code:C388=On Load:K2:1)  // affichage valeur par défaut
		at_cv_type:=0
		
	: (Form event code:C388=On Clicked:K2:4)  //La sélection est modifiée
		cv_type:=at_cv_type{at_cv_type}
		
	: (Form event code:C388=On Unload:K2:2)
		CLEAR VARIABLE:C89(at_cv_type)
		
End case 
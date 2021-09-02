Case of 
		
	: (Form event code:C388=On Load:K2:1)  // affichage valeur par défaut
		at_RefSubjVP_optotype:=0
		
	: (Form event code:C388=On Clicked:K2:4)  //La sélection est modifiée
		RefSubjVP_optotype:=at_RefSubjVP_optotype{at_RefSubjVP_optotype}
		
	: (Form event code:C388=On Unload:K2:2)
		CLEAR VARIABLE:C89(at_RefSubjVP_optotype)
		
End case 
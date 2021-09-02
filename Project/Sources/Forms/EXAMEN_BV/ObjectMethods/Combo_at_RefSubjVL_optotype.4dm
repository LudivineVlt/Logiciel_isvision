Case of 
		
	: (Form event code:C388=On Load:K2:1)  // affichage valeur par défaut
		at_RefSubjVL_optotype:=0
		
	: (Form event code:C388=On Clicked:K2:4)  //La sélection est modifiée
		RefSubjVL_optotype:=at_RefSubjVL_optotype{at_RefSubjVL_optotype}
		
	: (Form event code:C388=On Unload:K2:2)
		CLEAR VARIABLE:C89(at_RefSubjVL_optotype)
		
End case 
Case of 
		
	: (Form event code:C388=On Load:K2:1)  // affichage valeur par défaut
		at_acuiteHabituelleVP_Optotype:=0
		
	: (Form event code:C388=On Clicked:K2:4)  //La sélection est modifiée
		acuiteHabituelleVP_Optotype:=at_acuiteHabituelleVP_Optotype{at_acuiteHabituelleVP_Optotype}
		
	: (Form event code:C388=On Unload:K2:2)
		CLEAR VARIABLE:C89(at_acuiteHabituelleVP_Optotype)
		
End case 
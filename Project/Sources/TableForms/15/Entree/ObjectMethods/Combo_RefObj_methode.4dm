
Case of 
	: (Form event code:C388=On Load:K2:1)  // au chargement on vérifie si on est sur un nouvel enregistrement 
		If (Is new record:C668)
			at_RefObj_methode:=0  // si c'est un nouvel enregistrement, la ligne courante du tableau est initialisé à une ligne vide
		Else 
			at_RefObj_methode:=Find in array:C230(at_RefObj_methode; [REFRACTION:15]RefObjective:2.Methode)  // sinon on initialise le tableau a la ligne correspondant à la donnée stocké dans l'enregistrement courant
		End if 
	: (Form event code:C388=On Clicked:K2:4)
		[REFRACTION:15]RefObjective:2.Methode:=at_RefObj_methode{at_RefObj_methode}  // au clic, on met à jour la valeur de la base de donnée
		
	: (Form event code:C388=On Unload:K2:2)  // à la fermeture du formulaire, on réinitialise le tableau
		CLEAR VARIABLE:C89(at_RefObj_methode)
		
		
		
		
		
		
End case 

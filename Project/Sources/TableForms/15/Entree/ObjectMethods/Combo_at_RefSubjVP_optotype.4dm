
Case of 
	: (Form event code:C388=On Load:K2:1)  // au chargement on vérifie si on est sur un nouvel enregistrement 
		If (Is new record:C668)
			at_RefSubjVP_optotype:=0  // si c'est un nouvel enregistrement, la ligne courante du tableau est initialisé à une ligne vide
		Else 
			at_RefSubjVP_optotype:=Find in array:C230(at_RefSubjVP_optotype; [REFRACTION:15]RefSubjectiveVP:5.Optotype)  // sinon on initialise le tableau a la ligne correspondant à la donnée stocké dans l'enregistrement courant
		End if 
	: (Form event code:C388=On Clicked:K2:4)
		[REFRACTION:15]RefSubjectiveVP:5.Optotype:=at_RefSubjVP_optotype{at_RefSubjVP_optotype}  // au clic, on met à jour la valeur de la base de donnée
		
	: (Form event code:C388=On Unload:K2:2)  // à la fermeture du formulaire, on réinitialise le tableau
		CLEAR VARIABLE:C89(at_RefSubjVP_optotype)
		
		
		
		
		
		
End case 

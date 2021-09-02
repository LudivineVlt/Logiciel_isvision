//le tableau texte at_PATIENT_sexe est rempli au travers de la liste des propriétés de l'objet, section Enumération : "Sexe_Patient"
//possibilité de le faire manuellement avec la commande LIST TO ARRAY("Sexe_Patient";at_PATIENT_sexe)

Case of 
	: (Form event code:C388=On Load:K2:1)  // au chargement on vérifie si on est sur un nouvel enregistrement 
		If (Is new record:C668)
			at_PATIENT_sexe:=0  // si c'est un nouvel enregistrement, la ligne courante du tableau est initialisé à une ligne vide
		Else 
			at_PATIENT_sexe:=Find in array:C230(at_PATIENT_sexe; [PATIENT:1]Sexe:13)  // sinon on initialise le tableau a la ligne correspondant à la donnée stocké dans l'enregistrement courant
		End if 
	: (Form event code:C388=On Clicked:K2:4)
		[PATIENT:1]Sexe:13:=at_PATIENT_sexe{at_PATIENT_sexe}  // au clic, on met à jour la valeur de la base de donnée
		
	: (Form event code:C388=On Unload:K2:2)  // à la fermeture du formulaire, on réinitialise le tableau
		CLEAR VARIABLE:C89(at_PATIENT_sexe)
		
		
		
		
		
		
End case 

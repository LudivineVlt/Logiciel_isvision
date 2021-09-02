//le tableau texte at_K_methode est remplit au travers de la liste des propriétés de l'objet, section Enumération : "Type_Kerato"
//possibilité de le faire manuellement avec la commande LIST TO ARRAY("Type_Kerato";at_K_methode)

Case of 
	: (Form event code:C388=On Load:K2:1)  // au chargement on vérifie si on est sur un nouvel enregistrement 
		If (Is new record:C668)
			at_K_methode:=0  // si c'est un nouvel enregistrement, la ligne courante du tableau est initialisé à une ligne vide
		Else 
			at_K_methode:=Find in array:C230(at_K_methode; [KERATOMETRIE:9]Methode:5)  // sinon on initialise le tableau a la ligne correspondant à la donnée stocké dans l'enregistrement courant
		End if 
	: (Form event code:C388=On Clicked:K2:4)
		[KERATOMETRIE:9]Methode:5:=at_K_methode{at_K_methode}  // au clic, on met à jour la valeur de la base de donnée
		
	: (Form event code:C388=On Unload:K2:2)  // à la fermeture du formulaire, on réinitialise le tableau
		CLEAR VARIABLE:C89(at_K_methode)
		
		
		
		
		
		
End case 

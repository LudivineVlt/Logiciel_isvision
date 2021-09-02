//le tableau texte at_champVisuel_type est remplit au travers de la liste des propriétés de l'objet, section Enumération : "Type_champVisuel"
//possibilité de le faire manuellement avec la commande LIST TO ARRAY("Type_champVisuel";at_champVisuel_type)

Case of 
	: (Form event code:C388=On Load:K2:1)  // au chargement on vérifie si on est sur un nouvel enregistrement 
		If (Is new record:C668)
			at_champVisuel_type:=0  // si c'est un nouvel enregistrement, la ligne courante du tableau est initialisé à une ligne vide
		Else 
			at_champVisuel_type:=Find in array:C230(at_champVisuel_type; [CHAMP_VISUEL:14]Type:2)  // sinon on initialise le tableau a la ligne correspondant à la donnée stocké dans l'enregistrement courant
		End if 
	: (Form event code:C388=On Clicked:K2:4)
		[CHAMP_VISUEL:14]Type:2:=at_champVisuel_type{at_champVisuel_type}  // au clic, on met à jour la valeur de la base de donnée
		
	: (Form event code:C388=On Unload:K2:2)  // à la fermeture du formulaire, on réinitialise le tableau
		CLEAR VARIABLE:C89(at_champVisuel_type)
		
		
		
		
		
		
End case 

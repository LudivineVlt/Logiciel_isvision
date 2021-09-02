//le tableau texte at_rapport_categorie est remplit au travers de la liste des propriétés de l'objet, section Enumération : "Categorie_rapport"
//possibilité de le faire manuellement avec la commande LIST TO ARRAY("Categorie_rapport";at_rapport_categorie)

Case of 
	: (Form event code:C388=On Load:K2:1)  // au chargement on vérifie si on est sur un nouvel enregistrement 
		If (Is new record:C668)
			at_rapport_categorie:=0  // si c'est un nouvel enregistrement, la ligne courante du tableau est initialisé à une ligne vide
		Else 
			at_rapport_categorie:=Find in array:C230(at_rapport_categorie; [RAPPORT_TYPE:23]Categorie:3)  // sinon on initialise le tableau a la ligne correspondant à la donnée stocké dans l'enregistrement courant
		End if 
	: (Form event code:C388=On Clicked:K2:4)
		[RAPPORT_TYPE:23]Categorie:3:=at_rapport_categorie{at_rapport_categorie}  // au clic, on met à jour la valeur de la base de donnée
		
	: (Form event code:C388=On Unload:K2:2)  // à la fermeture du formulaire, on réinitialise le tableau
		CLEAR VARIABLE:C89(at_rapport_categorie)
		
		
		
		
		
		
End case 

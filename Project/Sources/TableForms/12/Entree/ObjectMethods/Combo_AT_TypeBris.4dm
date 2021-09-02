//le tableau texte at_TypeBris est remplit au travers de la liste des propriétés de l'objet, section Enumération : "Type_Bris"
//possibilité de le faire manuellement avec la commande LIST TO ARRAY("Type_Bris";at_TypeBris)

Case of 
	: (Form event code:C388=On Load:K2:1)  // au chargement on vérifie si on est sur un nouvel enregistrement 
		If (Is new record:C668)
			at_TypeBris:=0  // si c'est un nouvel enregistrement, la ligne courante du tableau est initialisé à une ligne vide
		Else 
			at_TypeBris:=Find in array:C230(at_TypeBris; [BINOCULARITE:12]AmplitudeTriangulation:3.TypeBris)  // sinon on initialise le tableau a la ligne correspondant à la donnée stocké dans l'enregistrement courant
		End if 
	: (Form event code:C388=On Clicked:K2:4)
		[BINOCULARITE:12]AmplitudeTriangulation:3:=New object:C1471("TypeBris"; at_TypeBris{at_TypeBris})  // au clic, on met à jour la valeur de la base de donnée
		
	: (Form event code:C388=On Unload:K2:2)  // à la fermeture du formulaire, on réinitialise le tableau
		CLEAR VARIABLE:C89(at_TypeBris)
		
		
		
		
		
		
End case 

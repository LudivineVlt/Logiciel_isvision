//le tableau texte at_praticien_statut est remplit au travers de la liste des propriétés de l'objet, section Enumération : "Praticien statut"
//possibilité de le faire manuellement avec la commande LIST TO ARRAY("Praticien_statut";at_praticien_statut)

Case of 
	: (Form event code:C388=On Load:K2:1)  // au chargement on vérifie si on est sur un nouvel enregistrement 
		If (Is new record:C668)
			at_praticien_statut:=0  // si c'est un nouvel enregistrement, la ligne courante du tableau est initialisé à une ligne vide
		Else 
			at_praticien_statut:=Find in array:C230(at_praticien_statut; [PRATICIEN:2]Statut:4)  // sinon on initialise le tableau a la ligne correspondant à la donnée stocké dans l'enregistrement courant
		End if 
	: (Form event code:C388=On Clicked:K2:4)
		[PRATICIEN:2]Statut:4:=at_praticien_statut{at_praticien_statut}  // au clic, on met à jour la valeur de la base de donnée
		
	: (Form event code:C388=On Unload:K2:2)  // à la fermeture du formulaire, on réinitialise le tableau
		CLEAR VARIABLE:C89(at_praticien_statut)
		
		
		
		
		
		
End case 

//le tableau texte at_lu_geometrie est remplit au travers de la liste des propriétés de l'objet, section Enumération : "Geometrie_lunettes"
//possibilité de le faire manuellement avec la commande LIST TO ARRAY("Geometrie_lunettes";at_lu_geometrie)

Case of 
	: (Form event code:C388=On Load:K2:1)  // au chargement on vérifie si on est sur un nouvel enregistrement 
		If (Is new record:C668)
			at_lu_geometrie:=0  // si c'est un nouvel enregistrement, la ligne courante du tableau est initialisé à une ligne vide
		Else 
			at_lu_geometrie:=Find in array:C230(at_lu_geometrie; [ANTECEDENT_LUNETTES:6]Geometrie:3.Geometrie)  // sinon on initialise le tableau a la ligne correspondant à la donnée stocké dans l'enregistrement courant
		End if 
	: (Form event code:C388=On Clicked:K2:4)
		[ANTECEDENT_LUNETTES:6]Geometrie:3:=New object:C1471("Geometrie"; at_lu_geometrie{at_lu_geometrie})  // au clic, on met à jour la valeur de la base de donnée
		
	: (Form event code:C388=On Unload:K2:2)  // à la fermeture du formulaire, on réinitialise le tableau
		CLEAR VARIABLE:C89(at_lu_geometrie)
		
		
		
		
		
		
End case 

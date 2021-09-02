If (FORM Event:C1606.code=On Clicked:K2:4)
	
	//Action possible uniquement si l'utilisateur à le statut d'enseignant = redemander le code
	//Possibilité de cacher le bouton si la personne authentifiée est un étudiant U7
	
	//modifier la boite de dialogue pour une fenêtre pop up permettant d'annuler ou de valider l'action 
	ALERT:C41("ATTENTION ACTION IRREVERSIBLE\r L'ensemble du dossier sera définitivement supprimé")
	
	//Formulaire identification pour re vérifier le statut de l'utilisateur courant (double sécurité)
	Open form window:C675("Identification"; Sheet form window:K39:12)
	DIALOG:C40("Identification")
	
End if 
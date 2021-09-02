If (Form event code:C388=On Clicked:K2:4)
	CLEAR VARIABLE:C89(parametre_user_nom)
	CLEAR VARIABLE:C89(parametre_user_prenom)
	CLEAR VARIABLE:C89(parametre_user_statut)
	CLEAR VARIABLE:C89(at_parametre_user_statut)
	
	CLEAR VARIABLE:C89(parametre_user_dateConnexion)
	
	QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]ID:1=0)
End if 
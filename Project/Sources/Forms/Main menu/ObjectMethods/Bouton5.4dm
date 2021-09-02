If (Form event code:C388=On Clicked:K2:4)
	CLEAR VARIABLE:C89(menu_nom)
	CLEAR VARIABLE:C89(menu_prenom)
	CLEAR VARIABLE:C89(menu_dateNaissance)
	CLEAR VARIABLE:C89(menu_dateVisite)
	
	QUERY:C277([PATIENT:1]; [PATIENT:1]ID:1=0)
End if 
If (Form event code:C388=On Clicked:K2:4)
	CLEAR VARIABLE:C89(at_parametre_marque_lc)
	CLEAR VARIABLE:C89(at_parametre_nom_lc)
	CLEAR VARIABLE:C89(at_parametre_Type_lc)
	CLEAR VARIABLE:C89(at_parametre_diametre_lc)
	CLEAR VARIABLE:C89(at_parametre_rayon_lc)
	CLEAR VARIABLE:C89(at_parametre_renouvellement_lc)
	
	CLEAR VARIABLE:C89(parametre_marque_lc)
	CLEAR VARIABLE:C89(parametre_nom_lc)
	CLEAR VARIABLE:C89(parametre_Type_lc)
	CLEAR VARIABLE:C89(parametre_diametre_lc)
	CLEAR VARIABLE:C89(parametre_rayon_lc)
	CLEAR VARIABLE:C89(parametre_renouvellement_lc)
	
	QUERY:C277([CONTAGUIDE:28]; [CONTAGUIDE:28]ID:1=0)
End if 
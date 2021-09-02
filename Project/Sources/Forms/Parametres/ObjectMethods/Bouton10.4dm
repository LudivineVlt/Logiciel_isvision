If (Form event code:C388=On Clicked:K2:4)
	CLEAR VARIABLE:C89(parametre_rapport_nom)
	CLEAR VARIABLE:C89(parametre_rapport_categorie)
	CLEAR VARIABLE:C89(at_parametre_rapport_categorie)
	
	
	QUERY:C277([RAPPORT_TYPE:23]; [RAPPORT_TYPE:23]ID:1=0)
End if 
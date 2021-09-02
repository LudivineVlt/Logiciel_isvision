If (Form event code:C388=On Clicked:K2:4)
	//---------------------TABLE [CONCLUSION]------------------
	
	//IMPLEMENTATION DU CHAMP TEXTE Diagnostic :
	
	conclusion.Diagnostic:=ccl_Diagnostic
	
	//IMPLEMENTATION DU CHAMP TEXTE Traitement :
	
	conclusion.Traitement:=ccl_Traitement
	
	//IMPLEMENTATION DU CHAMP TEXTE Conseils :
	
	conclusion.Conseils:=ccl_Conseils
	
	//IMPLEMENTATION DU CHAMP TEXTE ProchaineVisite :
	
	conclusion.ProchaineVisite:=ccl_ProchaineVisite
	
	//IMPLEMENTATION DU CHAMP TEXTE Commentaire :
	
	conclusion.Commentaire:=ccl_Commentaire
	
	
	conclusion.save()
	
End if 
If (Form event code:C388=On Clicked:K2:4)
	
	//---------------------TABLE [SCORE_QUALITE_VIE]------------------
	
	//IMPLEMENTATION DU CHAMP TEXTE Resultat :
	
	scoreQualiteVie.Resultat:=int_convert
	
	//IMPLEMENTATION DU CHAMP TEXTE Commentaire :
	
	scoreQualiteVie.Commentaire:=score_commentaire
	
	scoreQualiteVie.save()
	
	
End if 
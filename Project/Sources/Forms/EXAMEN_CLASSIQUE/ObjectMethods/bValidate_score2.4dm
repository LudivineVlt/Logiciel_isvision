If (FORM Event:C1606.code=On Clicked:K2:4)
	
	//---------------------TABLE [AUTRE_EXAMEN]------------------
	
	
	//IMPLEMENTATION DU CHAMP TEXTE SensibiliteEblouissement :
	
	autreExamen.SensibiliteEblouissement:=autre_SensibiliteEblouissement
	
	//IMPLEMENTATION DU CHAMP TEXTE VisionCouleurs :
	
	autreExamen.VisionCouleurs:=autre_VisionCouleurs
	
	//IMPLEMENTATION DU CHAMP TEXTE BinoculariteAvancee :
	
	autreExamen.BinoculariteAvancee:=autre_BinoculariteAvancee
	
	//IMPLEMENTATION DU CHAMP TEXTE Autre :
	
	autreExamen.Autre:=autre_Autre
	autreExamen.save()
	
End if 
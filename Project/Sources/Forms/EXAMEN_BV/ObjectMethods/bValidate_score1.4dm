If (FORM Event:C1606.code=On Clicked:K2:4)
	
	//---------------------TABLE [IMAGERIE]------------------
	// Nouvelle entité dans la table IMAGERIE
	imagerie:=ds:C1482.IMAGERIE.new()
	
	// Définition des attributs
	imagerie.Date:=Current date:C33
	imagerie.ID_EXAMEN_COMPLEMENTAIRE:=examenComplementaire.ID
	
	//IMPLEMENTATION DU CHAMP TEXTE Type :
	
	imagerie.Type:=img_Type
	
	//IMPLEMENTATION DU CHAMP IMAGE Image :
	
	imagerie.Image:=img_Image
	
	//IMPLEMENTATION DU CHAMP TEXTE Commentaire :
	
	imagerie.Commentaire:=img_Commentaire
	
	imagerie.save()
	
	CLEAR VARIABLE:C89(img_Type)
	CLEAR VARIABLE:C89(img_Image)
	CLEAR VARIABLE:C89(img_Commentaire)
End if 
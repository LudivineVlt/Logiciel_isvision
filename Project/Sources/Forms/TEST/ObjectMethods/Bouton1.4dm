If (FORM Event:C1606.code=On Clicked:K2:4)
	
	//création de la fenêtre selon les dimension du formulaire "identification"
	// sheet form window = feuille intégrée dans la fenetre courante
	// plain form window = nouvelle fenetre normale (indépendante)
	// popup form window = fenetre pop up (sans bouton système de fermeture)
	Open form window:C675("Identification"; Pop up form window:K39:11; 278; 349)
	
	// appel du contenu du formulaire "Identification"
	DIALOG:C40("Identification")
	
End if 
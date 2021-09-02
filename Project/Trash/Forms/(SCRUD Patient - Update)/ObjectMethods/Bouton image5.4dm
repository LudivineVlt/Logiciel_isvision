If (FORM Event:C1606.code=On Clicked:K2:4)
	
	$refFenTestCode:=Current form window:C827
	HIDE WINDOW:C436($refFenTestCode)
	
	
	//création de la fenêtre selon les dimension du formulaire "SCRUD Patient - Create"
	// sheet form window = feuille intégrée dans la fenetre courante
	// plain form window = nouvelle fenetre normale (indépendante)
	// popup form window = fenetre pop up (sans bouton système de fermeture)
	Open form window:C675("SCRUD Patient - Create"; Plain form window:K39:10)
	
	// appel du contenu du formulaire "SCRUD Patient - Create"
	// AJOUTER GO TO PAGE 2 !!
	DIALOG:C40("SCRUD Patient - Create")
	
	
	SHOW WINDOW:C435($refFenTestCode)
	
End if 
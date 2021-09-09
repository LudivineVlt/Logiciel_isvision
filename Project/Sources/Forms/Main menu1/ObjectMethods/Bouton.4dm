Case of 
	: (FORM Event:C1606.code=On Clicked:K2:4)
		
		$refFenTestCode:=Current form window:C827
		HIDE WINDOW:C436($refFenTestCode)
		
		// sheet form window = feuille intégrée dans la fenetre courante
		// plain form window = nouvelle fenetre normale (indépendante)
		// popup form window = fenetre pop up (sans bouton système de fermeture)
		Open form window:C675("EXAMEN_CLASSIQUE"; Plain form window:K39:10)
		
		// appel du contenu du formulaire "EXAMEN"
		DIALOG:C40("EXAMEN_CLASSIQUE")
		
		
		//: (FORM Event.code=On Mouse Enter)
		//OBJECT SET FOCUS RECTANGLE INVISIBLE(*; "Bouton"; False)
		
		//: (FORM Event.code=On Mouse Leave)
		//OBJECT SET FOCUS RECTANGLE INVISIBLE(*; "Bouton"; True)
		
		
		
End case 
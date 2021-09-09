If (FORM Event:C1606.code=On Clicked:K2:4)
	QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Login:5=P_Login; *)
	QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]MotDePasse:6=P_MotDePasse)
	
	If (Records in selection:C76([PRATICIEN:2])=0)
		ALERT:C41("Mauvaise combinaison Login et mot de passe")
		
		
		
	Else 
		$refFenTestCode:=Current form window:C827
		HIDE WINDOW:C436($refFenTestCode)
		
		// creation d'une fenetre suivant les dimensions du formulaire "Identification"
		Open form window:C675("Main menu"; Plain form window:K39:10)
		
		// appel du contenu du formulaire "Identification"
		DIALOG:C40("Main menu")
		
		// en cas de retour successifs
		SHOW WINDOW:C435($refFenTestCode)
		
	End if 
	
End if 
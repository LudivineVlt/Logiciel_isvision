If (Form event code:C388=On Clicked:K2:4)
	
	
	If (parametre_rapport_nom#"")
		// si un nom est saisi
		
		
		If (parametre_rapport_categorie#"")
			//et si une categorie est saisi
			
			// alors chercher dans la table patient les enregistrement correspondant aux 2 critères (nom, categorie)
			// le dernier appel de la fonction QUERY sans parametre & lance la recherche avec tous les critères précédement mentionnés
			QUERY:C277([RAPPORT_TYPE:23]; [RAPPORT_TYPE:23]Nom:2=parametre_rapport_nom; *)
			QUERY:C277([RAPPORT_TYPE:23]; [RAPPORT_TYPE]Categorie=parametre_rapport_categorie)
			
		Else 
			// pas de categorie saisie rechercher les enregistrement correspondant à (nom)
			
			QUERY:C277([RAPPORT_TYPE:23]; [RAPPORT_TYPE:23]Nom:2=parametre_rapport_nom)
			
		End if 
		
	Else 
		//pas de prenom
		
		If (parametre_user_categorie#"")
			// si une categorie est saisie
			// alors rechercher les enregistrements correspondant à (categorie)
			
			QUERY:C277([RAPPORT_TYPE:23]; [RAPPORT_TYPE:23]Nom:2=parametre_user_categorie)
			
		Else 
			// pas de categorie ni de nom
			ALERT:C41("Veuillez saisir au moins un critère")
			
		End if 
	End if 
	
	
End if 


//Variante recherche --> Form.lb_patient:=ds.PRATICIEN.query("Nom = :1"; nom)

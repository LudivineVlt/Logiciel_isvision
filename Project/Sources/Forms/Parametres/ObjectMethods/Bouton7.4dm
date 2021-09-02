If (Form event code:C388=On Clicked:K2:4)
	
	
	If (parametre_user_nom#"")
		// si un nom est saisi
		
		
		If (parametre_user_prenom#"")
			//et si un prenom est saisi
			
			If (parametre_user_statut#"")
				// et si un statut est saisi
				
				// alors chercher dans la table patient les enregistrement correspondant aux 3 critères (nom, prenom, statut)
				// le paramètre * dans la fonction QUERY signifie qu'il y a un autre critere de recherche
				QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Nom:2=parametre_user_nom; *)
				QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Prenom:3=parametre_user_prenom; *)
				
				// le dernier appel de la fonction QUERY sans parametre & lance la recherche avec tous les critères précédement mentionnés
				QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Statut:4=parametre_user_statut)
				
			Else 
				// pas de date de naissance saisie rechercher les enregistrement correspondant à (nom et prenom)
				
				QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Nom:2=parametre_user_nom; *)
				QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Prenom:3=parametre_user_prenom)
			End if 
			
		Else 
			//pas de prenom
			
			If (parametre_user_statut#"")
				// si un statut est saisit
				// alors rechercher les enregistrements correspondant à (statut et nom)
				
				QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Nom:2=parametre_user_nom; *)
				QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Statut:4=parametre_user_dateNaissance)
				
			Else 
				// pas de statut
				// alors rechercher les enregistrement correspondant à (nom)
				
				QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Nom:2=parametre_user_nom)
				
				//pas de nom saisi
			End if 
		End if 
		
	Else 
		//pas de nom
		If (parametre_user_prenom#"")
			//Si un prenom est saisi
			
			If (parametre_user_statut#"")
				// et si un statut est saisi
				
				// alors chercher dans la table patient les enregistrement correspondant aux 2 critères (prenom et statut)
				QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Prenom:3=parametre_user_prenom; *)
				QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Statut:4=parametre_user_statut)
				
			Else 
				// pas de statut saisi
				// rechercher les enregistrement correspondant à (prenom)
				
				QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Prenom:3=parametre_user_prenom)
				
			End if 
			
		Else 
			// Pas de nom ni de prenom
			
			If (parametre_user_statut#"")
				
				// alors chercher dans la table patient les enregistrement correspondant au critère (statut)
				
				QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]Statut:4=parametre_user_statut)
			Else 
				//aucune saisie
				ALERT:C41("Veuillez saisir au moins un critère")
			End if 
		End if 
		
	End if 
End if 

//Variante recherche --> Form.lb_patient:=ds.PRATICIEN.query("Nom = :1"; nom)

If (Form event code:C388=On Clicked:K2:4)
	
	
	If (menu_nom#"")
		// si un nom est saisi
		
		
		If (menu_prenom#"")
			//et si un prenom est saisi
			
			If (menu_dateNaissance#"")
				// et si une date de naissance est saisie
				
				// alors chercher dans la table patient les enregistrement correspondant aux 3 critères (nom, prenom, dateNaissance)
				// le paramètre * dans la fonction QUERY signifie qu'il y a un autre critere de recherche
				Form:C1466.lb_patient:=QUERY:C277([PATIENT:1]; [PATIENT:1]Nom:2=menu_nom; *)
				QUERY:C277([PATIENT:1]; [PATIENT:1]Prenom:3=menu_prenom; *)
				
				// le dernier appel de la fonction QUERY sans parametre & lance la recherche avec tous les critères précédement mentionnés
				QUERY:C277([PATIENT:1]; [PATIENT:1]DateDeNaissance:4=menu_dateNaissance)
				
			Else 
				// pas de date de naissance saisie rechercher les enregistrement correspondant à (nom et prenom)
				
				Form:C1466.lb_patient:=QUERY:C277([PATIENT:1]; [PATIENT:1]Nom:2=menu_nom; *)
				QUERY:C277([PATIENT:1]; [PATIENT:1]Prenom:3=menu_prenom)
			End if 
			
		Else 
			//pas de prenom
			
			If (menu_dateNaissance#"")
				// si une date de naissance est saisie
				// alors rechercher les enregistrement correspondant à (dateNaissance et nom)
				
				Form:C1466.lb_patient:=QUERY:C277([PATIENT:1]; [PATIENT:1]Nom:2=menu_nom; *)
				QUERY:C277([PATIENT:1]; [PATIENT:1]DateDeNaissance:4=menu_dateNaissance)
				
			Else 
				// pas de dateNaissance
				// alors rechercher les enregistrement correspondant à (nom)
				
				Form:C1466.lb_patient:=QUERY:C277([PATIENT:1]; [PATIENT:1]Nom:2=menu_nom)
				
				//pas de nom saisi
			End if 
		End if 
		
	Else 
		//pas de nom
		If (menu_prenom#"")
			//Si un prenom est saisi
			
			If (menu_dateNaissance#"")
				// et si une date de naissance est saisie
				
				// alors chercher dans la table patient les enregistrement correspondant aux 2 critères (prenom et dateNaissance)
				Form:C1466.lb_patient:=QUERY:C277([PATIENT:1]; [PATIENT:1]Prenom:3=menu_prenom; *)
				QUERY:C277([PATIENT:1]; [PATIENT:1]DateDeNaissance:4=menu_dateNaissance)
				
			Else 
				// pas de date de naissance saisie
				// rechercher les enregistrement correspondant à (prenom)
				
				Form:C1466.lb_patient:=QUERY:C277([PATIENT:1]; [PATIENT:1]Prenom:3=menu_prenom)
				
			End if 
			
		Else 
			// Pas de nom ni de prenom
			
			If (menu_dateNaissance#"")
				
				// alors chercher dans la table patient les enregistrement correspondant au critère (dateNaissance)
				
				Form:C1466.lb_patient:=QUERY:C277([PATIENT:1]; [PATIENT:1]DateDeNaissance:4=menu_dateNaissance)
			Else 
				//aucune saisie
				ALERT:C41("Veuillez saisir au moins un critère")
			End if 
		End if 
		
	End if 
End if 

//Variante recherche --> Form.lb_patient:=ds.PATIENT.query("Nom = :1"; nom)

If (FORM Event:C1606.code=On Clicked:K2:4)
	
	Request:C163("Etes vous certain de vouloir supprimer cet utilisateur ?")
	
	If (ok=1)
		DELETE RECORD:C58([PRATICIEN:2])
		
	End if 
	
End if 
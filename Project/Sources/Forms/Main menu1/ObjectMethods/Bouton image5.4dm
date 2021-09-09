If (FORM Event:C1606.code=On Clicked:K2:4)
	
	Request:C163("Etes vous certain de vouloir supprimer cet utilisateur ?")
	
	If (ok=1)
		DELETE RECORD:C58([PATIENT:1])
		
	End if 
	
End if 
If (FORM Event:C1606.code=On Clicked:K2:4)
	
	Request:C163("Etes vous certain de vouloir supprimer ce modèle ?")
	
	If (ok=1)
		DELETE RECORD:C58([CONTAGUIDE:28])
		
	End if 
	
End if 
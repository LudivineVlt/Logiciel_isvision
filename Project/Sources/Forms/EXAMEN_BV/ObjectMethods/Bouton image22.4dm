If (FORM Event:C1606.code=On Clicked:K2:4)
	
	ALL RECORDS:C47([DOCUMENT_PATIENT:22])
	Open form window:C675("[DOCUMENT PATIENT]"; Sortie)
	DIALOG:C40("[DOCUMENT PATIENT]"; Sortie)
End if 

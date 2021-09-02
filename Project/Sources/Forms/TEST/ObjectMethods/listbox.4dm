If (Form event code:C388=On Load:K2:1)
	//ARRAY TEXT(at_patient; 0)
	
	//at_patient:=QUERY BY SQL([PATIENT]; Select*from[PATIENT])
	//$col:=New collection()
	//ARRAY TO COLLECTION($col; at_patient)
	//Form.currentSelection:=$col
	
	Form:C1466.currentSelection:=ALL RECORDS:C47([PATIENT:1])
	
End if 
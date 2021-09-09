If (FORM Event:C1606.code=On Load:K2:1)
	QUERY:C277([PATIENT:1]; [PATIENT:1]ID:1=0)
End if 


If (Form event code:C388=On Clicked:K2:4)
	$number:=Selected record number:C246([PATIENT:1])
	GOTO SELECTED RECORD:C245([PATIENT:1]; $number)
	
End if 
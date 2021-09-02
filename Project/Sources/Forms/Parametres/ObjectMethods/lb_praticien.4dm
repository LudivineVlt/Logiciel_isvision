If (FORM Event:C1606.code=On Load:K2:1)
	QUERY:C277([PRATICIEN:2]; [PRATICIEN:2]ID:1=0)
End if 

//If (Form event code=On Clicked)
//$number:=Selected record number([PRATICIEN])
//GOTO SELECTED RECORD([PRATICIEN]; $number)

//End if 
If (FORM Event:C1606.code=On Load:K2:1)
	QUERY:C277([RAPPORT_TYPE:23]; [RAPPORT_TYPE:23]ID:1=0)
End if 

//If (Form event code=On Clicked)
//$number:=Selected record number([RAPPORT_TYPE])
//GOTO SELECTED RECORD([RAPPORT_TYPE]; $number)

//End if 
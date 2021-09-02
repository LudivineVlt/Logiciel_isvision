Case of 
	: (FORM Event:C1606.code=On Clicked:K2:4)
		C_TEXT:C284($message)
		$message:="Nom patient : "+patientCourant.Nom
		ALERT:C41($message)
		
		
		
	: (Form event code:C388=On Clicked:K2:4)
		C_TEXT:C284($message)
		$message:="Nom patient : "+patientCourant.Nom
		ALERT:C41($message)
		
		
End case 

Case of 
	: (FORM Event:C1606.code=On Load:K2:1)
		DEFAULT TABLE:C46([PATIENT:1])
		menu_nom:=""
		menu_prenom:=""
		menu_dateNaissance:=""
		menu_dateVisite:=""
		
	: (FORM Event:C1606.code=On Unload:K2:2)
		menu_nom:=""
		menu_prenom:=""
		menu_dateNaissance:=""
		menu_dateVisite:=""
End case 
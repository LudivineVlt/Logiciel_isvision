If (Form event code:C388=On Clicked:K2:4)
	CLEAR VARIABLE:C89(menu_nom)
	CLEAR VARIABLE:C89(menu_prenom)
	CLEAR VARIABLE:C89(menu_dateNaissance)
	CLEAR VARIABLE:C89(menu_dateVisite)
	
	Form:C1466.lb_patient:=ds:C1482.PATIENT.query("ID = :1"; 0)
	
End if 
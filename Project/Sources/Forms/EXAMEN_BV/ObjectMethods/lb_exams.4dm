If (Form event code:C388=On Load:K2:1)
	Form:C1466.lb_exams:=ds:C1482.EXAMEN_GENERAL.query("ID_PATIENT = :1"; [PATIENT:1]ID:1)
End if 
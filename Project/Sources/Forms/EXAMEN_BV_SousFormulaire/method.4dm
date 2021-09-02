If (FORM Event:C1606.code=On Load:K2:1)
	
	
	//Nouvelle entité dans la table EXAMEN_GENERAL
	$examenGeneral:=ds:C1482.EXAMEN_GENERAL.new()
	
	
	//Définition des attributs
	$examenGeneral.DateExam:=Current date:C33
	$examenGeneral.TypeExam:="Examen basse vision"
	
	//[PATIENT]ID = ID du patient de l'enregistrement courant
	$examenGeneral.ID_PATIENT:=[PATIENT:1]ID:1
	
	//[PRATICIEN]ID = ID du praticien de l'enregistrement courant
	$examenGeneral.ID_PRATICIEN:=[PRATICIEN:2]ID:1
	
	$examenGeneral.save()
	
End if 




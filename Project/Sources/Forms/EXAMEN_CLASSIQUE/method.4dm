If (FORM Event:C1606.code=On Load:K2:1)
	
	
	// Nouvelle entité dans la table EXAMEN_GENERAL
	examenGeneral:=ds:C1482.EXAMEN_GENERAL.new()
	
	// Définition des attributs
	examenGeneral.DateExam:=Current date:C33
	examenGeneral.TypeExam:="Examen basse vision"
	
	//[PATIENT]ID = ID du patient de l'enregistrement courant
	examenGeneral.ID_PATIENT:=[PATIENT:1]ID:1
	
	//[PRATICIEN]ID = ID du praticien de l'enregistrement courant
	examenGeneral.ID_PRATICIEN:=[PRATICIEN:2]ID:1
	
	// Nouvelle entité dans la table ANAMNESE
	anamnese:=ds:C1482.ANAMNESE.new()
	anamnese.ID_EXAMEN_GENERAL:=examenGeneral.ID
	
	// Nouvelle entité dans la table ANTECEDENT_LUNETTES
	antedecentLunettes:=ds:C1482.ANTECEDENT_LUNETTES.new()
	antedecentLunettes.ID_ANAMNESE:=anamnese.ID
	
	// Nouvelle entité dans la table ANTECEDENT_LENTILLE
	antedecentLentille:=ds:C1482.ANTECEDENT_LENTILLE.new()
	antedecentLentille.ID_ANAMNESE:=anamnese.ID
	
	// Nouvelle entité dans la table ANTECEDENT_AIDE_VISUELLE
	antedecentAideVisuelle:=ds:C1482.ANTECEDENT_AIDE_VISUELLE.new()
	antedecentAideVisuelle.ID_ANAMNESE:=anamnese.ID
	
	// Nouvelle entité dans la table EXAMEN_PRELIMINAIRE
	examenPreliminaire:=ds:C1482.EXAMEN_PRELIMINAIRE.new()
	examenPreliminaire.ID_EXAMEN_GENERAL:=examenGeneral.ID
	
	// Nouvelle entité dans la table KERATOMETRIE
	keratometrie:=ds:C1482.KERATOMETRIE.new()
	keratometrie.ID_EXAMEN_PRELIMINAIRE:=examenPreliminaire.ID
	
	// Nouvelle entité dans la table CHAMP_VISUEL
	champVisuel:=ds:C1482.CHAMP_VISUEL.new()
	champVisuel.ID_EXAMEN_PRELIMINAIRE:=examenPreliminaire.ID
	
	// Nouvelle entité dans la table FIXATION
	fixation:=ds:C1482.FIXATION.new()
	fixation.ID_EXAMEN_PRELIMINAIRE:=examenPreliminaire.ID
	
	// Nouvelle entité dans la table BINOCULARITE
	binocularite:=ds:C1482.BINOCULARITE.new()
	binocularite.ID_EXAMEN_PRELIMINAIRE:=examenPreliminaire.ID
	
	// Nouvelle entité dans la table LATERALISATION
	lateralisation:=ds:C1482.LATERALISATION.new()
	lateralisation.ID_EXAMEN_PRELIMINAIRE:=examenPreliminaire.ID
	
	// Nouvelle entité dans la table ACUITE
	acuite:=ds:C1482.ACUITE.new()
	acuite.ID_EXAMEN_PRELIMINAIRE:=examenPreliminaire.ID
	acuite.ID_ANTECEDENT_LUNETTES:=antecedentLunettes.ID
	
	
	// Nouvelle entité dans la table REFRACTION
	refraction:=ds:C1482.REFRACTION.new()
	refraction.ID_EXAMEN_GENERAL:=examenGeneral.ID
	
	// Nouvelle entité dans la table EXAMEN_COMPLEMENTAIRE
	examenComplementaire:=ds:C1482.EXAMEN_COMPLEMENTAIRE.new()
	examenComplementaire.ID_EXAMEN_GENERAL:=examenGeneral.ID
	
	// Nouvelle entité dans la table BIOMICROSCOPIE
	biomicroscopie:=ds:C1482.BIOMICROSCOPIE.new()
	biomicroscopie.ID_EXAMEN_COMPLEMENTAIRE:=examenComplementaire.ID
	
	
	// Nouvelle entité dans la table AUTRE_EXAMEN
	autreExamen:=ds:C1482.AUTRE_EXAMEN.new()
	autreExamen.ID_EXAMEN_COMPLEMENTAIRE:=examenComplementaire.ID
	
	// Nouvelle entité dans la table CONCLUSION
	conclusion:=ds:C1482.CONCLUSION.new()
	conclusion.ID_EXAMEN_GENERAL:=examenGeneral.ID
	
End if 




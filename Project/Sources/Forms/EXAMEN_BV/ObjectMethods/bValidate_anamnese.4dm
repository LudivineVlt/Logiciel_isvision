If (Form event code:C388=On Clicked:K2:4)
	
	anamnese.Motifconsultation:=motif_cs
	
	anamnese.PlaintePrincipale:=plainte_principale
	anamnese.PlainteSecondaire:=plainte_secondaire
	anamnese.SanteGenerale:=sante_generale_patient
	anamnese.SanteOculaire:=sante_oculaire_patient
	anamnese.Traitements:=traitements_patient
	
	anamnese.AntecedentsFamiliaux:=New object:C1471("SO"; sante_oculaire_famille; "SG"; sante_generale_famille)
	
	
	anamnese.Besoins:=besoins_Patient
	anamnese.Commentaire:=commentaire_anamnese
	anamnese.DerniereCS:=derniere_cs
	
	// Enregistrement des l'entité 
	examenGeneral.save()
	anamnese.save()
	
End if 
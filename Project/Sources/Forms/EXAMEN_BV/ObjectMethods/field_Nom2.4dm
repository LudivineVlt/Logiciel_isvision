If (Form event code:C388=On Clicked:K2:4)
	C_BOOLEAN:C305(aideDeuxExiste)
	aideDeuxExiste:=True:C214
	
	essai2AideVisuelle:=ds:C1482.ESSAI_AIDE_VISUELLE.new()
	essai2AideVisuelle.ID_EXAMEN_COMPLEMENTAIRE:=examenComplementaire.ID
End if 
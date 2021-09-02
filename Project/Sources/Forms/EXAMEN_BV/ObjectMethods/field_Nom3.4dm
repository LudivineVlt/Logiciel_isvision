If (Form event code:C388=On Clicked:K2:4)
	C_BOOLEAN:C305(aideTroisExiste)
	aideTroisExiste:=True:C214
	
	essai3AideVisuelle:=ds:C1482.ESSAI_AIDE_VISUELLE.new()
	essai3AideVisuelle.ID_EXAMEN_COMPLEMENTAIRE:=examenComplementaire.ID
End if 
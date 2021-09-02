If (Form event code:C388=On Clicked:K2:4)
	
	//---------------------TABLE [ESSAI_AIDE_VISUELLE]------------------
	
	//IMPLEMENTATION DU CHAMP TEXTE Nom :
	
	essaiAideVisuelle.Nom:=essaiAide_Nom
	
	//IMPLEMENTATION DU CHAMP TEXTE Distance :
	
	essaiAideVisuelle.Distance:=essaiAide_Distance
	
	//IMPLEMENTATION DU CHAMP TEXTE Utilisation :
	
	essaiAideVisuelle.Utilisation:=essaiAide_Utilisation
	
	//IMPLEMENTATION DU CHAMP TEXTE Commentaire :
	
	essaiAideVisuelle.Commentaire:=essaiAide_Commentaire
	
	//IMPLEMENTATION DU CHAMP DATE Date :
	
	essaiAideVisuelle.Date:=essaiAide_Date
	
	//IMPLEMENTATION DU CHAMP TEXTE Description :
	
	essaiAideVisuelle.Description:=essaiAide_Description
	
	essaiAideVisuelle.save()
	
	Case of 
		: (aideDeuxExiste=True:C214)
			
			essai2AideVisuelle.Nom:=essai2Aide_Nom
			essai2AideVisuelle.Distance:=essai2Aide_Distance
			essai2AideVisuelle.Utilisation:=essai2Aide_Utilisation
			essai2AideVisuelle.Commentaire:=essai2Aide_Commentaire
			essai2AideVisuelle.Date:=essai2Aide_Date
			essai2AideVisuelle.Description:=essai2Aide_Description
			essai2AideVisuelle.save()
			
			
		: (aideTroisExiste=True:C214)
			essai3AideVisuelle.Nom:=essai3Aide_Nom
			essai3AideVisuelle.Distance:=essai3Aide_Distance
			essai3AideVisuelle.Utilisation:=essai3Aide_Utilisation
			essai3AideVisuelle.Commentaire:=essai3Aide_Commentaire
			essai3AideVisuelle.Date:=essai3Aide_Date
			essai3AideVisuelle.Description:=essai3Aide_Description
			essai3AideVisuelle.save()
			
	End case 
	
	
End if 
Case of 
		
	: (Form event code:C388=On Load:K2:1)  // affichage valeur par défaut
		at_lu_geometrie:=0
		
	: (Form event code:C388=On Clicked:K2:4)  //La sélection est modifiée
		lu_geometrie:=at_lu_geometrie{at_lu_geometrie}
		
	: (Form event code:C388=On Unload:K2:2)
		CLEAR VARIABLE:C89(at_lu_geometrie)
		
End case 

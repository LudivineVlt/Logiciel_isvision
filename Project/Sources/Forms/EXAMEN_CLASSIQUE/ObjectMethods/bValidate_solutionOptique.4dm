If (Form event code:C388=On Clicked:K2:4)
	
	
	$OD:=New object:C1471("Sph"; lu_co_OD_Sph; "Cyl"; lu_co_OD_Cyl; "Axe"; lu_co_OD_Axe; "Add"; lu_co_OD_Add; "PuissancePrisme"; lu_co_OD_PuissancePrisme; "AxePrisme"; lu_co_OD_AxePrisme)
	
	$OG:=New object:C1471("Sph"; lu_co_OG_Sph; "Axe"; lu_co_OG_Cyl; "Cyl"; lu_co_OG_Axe; "Add"; lu_co_OG_Add; "PuissancePrisme"; lu_co_OG_PuissancePrisme; "AxePrisme"; lu_co_OG_AxePrisme)
	
	
	antecedentLunettes.Correction:=New object:C1471("OD"; $OD; "OG"; $OG)
	
	antecedentLunettes.Utilisation:=lu_utilisation
	antecedentLunettes.Geometrie:=lu_geometrie
	antecedentLunettes.DatePrescription:=lu_datePrescription
	antecedentLunettes.DateRealisation:=lu_dateRealisation
	antecedentLunettes.Modification:=lu_modification
	antecedentLunettes.Commentaire:=lu_commentaire
	
	antecedentLunettes.save()
	
	CLEAR VARIABLE:C89($OD)
	CLEAR VARIABLE:C89($OG)
	
	
	antecedentLentille.DatePrescription:=lc_datePrescription
	antecedentLentille.Denomination:=New object:C1471("OD"; lc_denomination_OD; "OG"; lc_denomination_OG)
	
	$OD:=New object:C1471("Sph"; lc_co_OD_Sph; "Cyl"; lc_co_OD_Cyl; "Axe"; lc_co_OD_Axe; "Add"; lc_co_OD_Add)
	
	$OG:=New object:C1471("Sph"; lc_co_OG_Sph; "Axe"; lc_co_OG_Cyl; "Cyl"; lc_co_OG_Axe; "Add"; lc_co_OG_Add)
	
	
	antecedentLentille.Correction:=New object:C1471("OD"; $OD; "OG"; $OG)
	
	antecedentLentille.Produit:=lc_produit
	antecedentLentille.Utilisation:=lc_utilisation
	antecedentLentille.DateRealisation:=lc_dateRealisation
	antecedentLentille.Modification:=lc_modification
	antecedentLentille.Commentaire:=lc_commentaire
	
	antecedentLentille.save()
	
	//lignes facultatives ici : variables locales non réutilisées dans le code
	CLEAR VARIABLE:C89($OD)
	CLEAR VARIABLE:C89($OG)
	
	
End if 
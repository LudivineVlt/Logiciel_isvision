If (Form event code:C388=On Clicked:K2:4)
	
	//----------------------------Table[KERATOMETRIE]-----------------------------------
	
	//IMPLEMENTATION DU CHAMP OBJET K_OD :
	//           K_OD{
	//                 "RayonPlat" :
	//                 "RayonCambre" :
	//                 "AxePlat" :
	//                }
	
	keratometrie.K_OD:=New object:C1471("RayonPlat"; K_OD_RayonPlat; "RayonCambre"; K_OD_RayonCambre; "AxePlat"; K_OD_AxePlat)
	
	//IMPLEMENTATION DU CHAMP OBJET K_OG :
	//           K_OG{
	//                 "RayonPlat" :
	//                 "RayonCambre" :
	//                 "AxePlat" :
	//                }
	keratometrie.K_OG:=New object:C1471("RayonPlat"; K_OG_RayonPlat; "RayonCambre"; K_OG_RayonCambre; "AxePlat"; K_OG_AxePlat)
	
	//IMPLEMENTATION DU CHAMP TEXTE METHODE
	
	keratometrie.Methode:=K_methode
	
	keratometrie.save()
	
	
	//----------------------------Table[REFRACTION]-----------------------------------
	
	//IMPLEMENTATION DU CHAMP OBJET RefObjective :
	//           RefObjective{
	//                            .OD{
	//                               "Sphere" :
	//                               "Cylindre" :
	//                               "Axe" :
	//                               "AVVL" :
	//                              }
	
	//                            .OG{
	//                               "Sphere" :
	//                               "Cylindre" :
	//                               "Axe" :
	//                               "AVVL" :
	//                            }
	
	//                            "Methode" :
	
	//           }        
	
	$OD:=New object:C1471("Sphere"; RefObj_OD_Sph; "Cylindre"; RefObj_OD_Cyl; "Axe"; RefObj_OD_Axe; "AVVL"; RefObj_OD_AV)
	$OG:=New object:C1471("Sphere"; RefObj_OG_Sph; "Cylindre"; RefObj_OG_Cyl; "Axe"; RefObj_OG_Axe; "AVVL"; RefObj_OG_AV)
	
	refraction.RefObjective:=New object:C1471("OD"; $OD; "OG"; $OG; "Methode"; RefObj_methode)
	
	// Réinitialisation des variables $OD et $OG
	CLEAR VARIABLE:C89($OD)
	CLEAR VARIABLE:C89($OG)
	
	//IMPLEMENTATION DU CHAMP OBJET RefSubjectiveVL :
	//           RefSubjectiveVL{
	//                            .OD{
	//                               "Sphere" :
	//                               "Cylindre" :
	//                               "Axe" :
	//                               "AVVL" :
	//                               "Distance" :
	//                              }
	
	//                            .OG{
	//                               "Sphere" :
	//                               "Cylindre" :
	//                               "Axe" :
	//                               "AVVL" :
	//                               "Distance":
	//                            }
	//                            .ODG{
	//                               "AVVL" :
	//                            }
	
	//                            "Optotype" :
	//
	//           }
	
	$OD:=New object:C1471("Sphere"; RefSubjVL_OD_Sph; "Cylindre"; RefSubjVL_Cyl; "Axe"; RefSubjVL_OD_Axe; "AVVL"; RefSubjVL_OD_AV; "Distance"; RefSubjVL_OD_Distance)
	$OG:=New object:C1471("Sphere"; RefSubjVL_OG_Sph; "Cylindre"; RefSubjVL_OG_Cyl; "Axe"; RefSubjVL_OG_Axe; "AVVL"; RefSubjVL_OG_AV; "Distance"; RefSubjVL_OG_Distance)
	$ODG:=New object:C1471("AVVL"; RefSubjVL_ODG_AV)
	refraction.RefSubjectiveVL:=New object:C1471("OD"; $OD; "OD"; $OG; "ODG"; $ODG; "Optotype"; RefSubjVL_optotype)
	
	// Réinitialisation des variables $OD, $OG et $ODG
	CLEAR VARIABLE:C89($OD)
	CLEAR VARIABLE:C89($OG)
	CLEAR VARIABLE:C89($ODG)
	
	//IMPLEMENTATION DU CHAMP OBJET RefGalilee :
	//           RefGalilee{
	//                            .OD{
	//                               "Sphere" :
	//                               "Cylindre" :
	//                               "Axe" :
	//                               "AVVL" :
	//                               "Distance" :
	//                              }
	
	//                            .OG{
	//                               "Sphere" :
	//                               "Cylindre" :
	//                               "Axe" :
	//                               "AVVL" :
	//                               "Distance":
	//                            }
	//                            .ODG{
	//                               "AVVL" :
	//                            }
	
	//                            "Optotype" :
	//
	//           }
	
	$OD:=New object:C1471("Sphere"; RefGalilee_OD_Sph; "Cylindre"; RefGalilee_Cyl; "Axe"; RefGalilee_OD_Axe; "AVVL"; RefGalilee_OD_AV; "Distance"; RefGalilee_OD_Distance)
	$OG:=New object:C1471("Sphere"; RefGalilee_OG_Sph; "Cylindre"; RefGalilee_OG_Cyl; "Axe"; RefGalilee_OG_Axe; "AVVL"; RefGalilee_OG_AV; "Distance"; RefGalilee_OG_Distance)
	$ODG:=New object:C1471("AVVP"; RefGalilee_ODG_AV)
	
	refraction.RefGalilee:=New object:C1471("OD"; $OD; "OD"; $OG; "ODG"; $ODG; "Optotype"; RefGalilee_optotype)
	
	// Réinitialisation des variables $OD, $OG et $ODG
	CLEAR VARIABLE:C89($OD)
	CLEAR VARIABLE:C89($OG)
	CLEAR VARIABLE:C89($ODG)
	
	
	//IMPLEMENTATION DU CHAMP OBJET RefSubjectiveVP :
	//           RefSubjectiveVP{
	//                            .OD{
	//                               "Sphere" :
	//                               "Cylindre" :
	//                               "Axe" :
	//                               "Add" :
	//                               "AVVP" :
	//                               "Distance" :
	//                              }
	
	//                            .OG{
	//                               "Sphere" :
	//                               "Cylindre" :
	//                               "Axe" :
	//                               "Add" :
	//                               "AVVP" :
	//                               "Distance":
	//                            }
	//                            .ODG{
	//                               "AVVP" :
	//                            }
	//
	//                            "Optotype" :
	//
	//           }
	
	$OD:=New object:C1471("Sphere"; RefSubjVP_OD_Sph; "Cylindre"; RefSubjVP_Cyl; "Axe"; RefSubjVP_OD_Axe; "AVVL"; RefSubjVP_OD_AV; "Distance"; RefSubjVP_OD_Distance)
	$OG:=New object:C1471("Sphere"; RefSubjVP_OG_Sph; "Cylindre"; RefSubjVP_OG_Cyl; "Axe"; RefSubjVP_OG_Axe; "AVVL"; RefSubjVP_OG_AV; "Distance"; RefSubjVP_OG_Distance)
	$ODG:=New object:C1471("AVVP"; RefSubjVP_ODG_AV)
	
	refraction.RefSubjectiveVP:=New object:C1471("OD"; $OD; "OD"; $OG; "ODG"; $ODG; "Optotype"; RefSubjVP_optotype)
	
	// Réinitialisation des variables $OD, $OG et $ODG
	CLEAR VARIABLE:C89($OD)
	CLEAR VARIABLE:C89($OG)
	CLEAR VARIABLE:C89($ODG)
	
	//IMPLEMENTATION DU CHAMP OBJET RefFinale :
	//           RefFinale{
	//                            .OD{
	//                               "Sphere" :
	//                               "Cylindre" :
	//                               "Axe" :
	//                               "AVVL" :
	//                               "Add" :
	//                               "AVVP" :
	//                               "PuissancePrisme" :
	//                               "AxePrisme" :
	//                              }
	
	//                            .OG{
	//                               "Sphere" :
	//                               "Cylindre" :
	//                               "Axe" :
	//                               "AVVL" :
	//                               "Add" :
	//                               "AVVP" :
	//                               "PuissancePrisme" :
	//                               "AxePrisme" :
	//                            }
	//                            .ODG{
	//                               "AVVL" :
	//                               "AVVP" :
	//                            }
	//
	//           }
	
	$OD:=New object:C1471("Sphere"; RefFinale_OD_Sph; "Cylindre"; RefFinale_OD_Cyl; "Axe"; RefFinale_OD_Axe; "AVVL"; RefFinale_OD_AVVL; "Add"; RefFinale_OD_Add; "AVVP"; RefFinale_OD_AVVP; "PuissancePrisme"; RefFinale_OD_PuissancePrisme; "AxePrisme"; RefFinale_OD_AxePrisme)
	$OG:=New object:C1471("Sphere"; RefFinale_OG_Sph; "Cylindre"; RefFinale_OG_Cyl; "Axe"; RefFinale_OG_Axe; "AVVL"; RefFinale_OG_AVVL; "Add"; RefFinale_OG_Add; "AVVP"; RefFinale_OG_AVVP; "PuissancePrisme"; RefFinale_OG_PuissancePrisme; "AxePrisme"; RefFinale_OG_AxePrisme)
	$ODG:=New object:C1471("AVVL"; RefFinale_ODG_AVVL; "AVVP"; RefFinale_ODG_AVVP)
	
	refraction.RefFinale:=New object:C1471("OD"; $OD; "OD"; $OG; "ODG"; $ODG)
	
	// Réinitialisation des variables $OD, $OG et $ODG
	CLEAR VARIABLE:C89($OD)
	CLEAR VARIABLE:C89($OG)
	CLEAR VARIABLE:C89($ODG)
	
	refraction.save()
	
	
End if 
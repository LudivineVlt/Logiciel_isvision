If (Form event code:C388=On Clicked:K2:4)
	RefFinale_OD_Sph:=sphereOD
	RefFinale_OD_Cyl:=cylOD
	RefFinale_OD_Axe:=axeOD
	RefFinale_OD_Add:=addOD
	
	RefFinale_OD_AVVL:=avVLOD
	RefFinale_OD_AVVP:=avVPOD
	
	RefFinale_OD_PuissancePrisme:=pPrismeOD
	RefFinale_OD_AxePrisme:=aPrismeOD
	
	RefFinale_OG_Sph:=sphereOG
	RefFinale_OG_Cyl:=cylOG
	RefFinale_OG_Axe:=axeOG
	RefFinale_OG_Add:=addOG
	
	RefFinale_OG_AVVL:=avVLOG
	RefFinale_OG_AVVP:=avVPOG
	
	RefFinale_OG_PuissancePrisme:=pPrismeOG
	RefFinale_OG_AxePrisme:=aPrismeOG
	
	RefFinale_ODG_AVVL:=av_VL_ODG
	RefFinale_ODG_AVVP:=av_VP_ODG
	
	CLEAR VARIABLE:C89(sphereOD)
	CLEAR VARIABLE:C89(cylOD)
	CLEAR VARIABLE:C89(axeOD)
	CLEAR VARIABLE:C89(avVLOD)
	CLEAR VARIABLE:C89(addOD)
	CLEAR VARIABLE:C89(avVPOD)
	CLEAR VARIABLE:C89(pPrismeOD)
	CLEAR VARIABLE:C89(aPrismeOD)
	
	CLEAR VARIABLE:C89(sphereOG)
	CLEAR VARIABLE:C89(cylOG)
	CLEAR VARIABLE:C89(axeOG)
	CLEAR VARIABLE:C89(avVLOG)
	CLEAR VARIABLE:C89(addOG)
	CLEAR VARIABLE:C89(avVPOG)
	CLEAR VARIABLE:C89(pPrismeOG)
	CLEAR VARIABLE:C89(aPrismeOG)
	CLEAR VARIABLE:C89(av_VL_ODG)
	CLEAR VARIABLE:C89(av_VP_ODG)
	
	CLEAR VARIABLE:C89(distanceVLOD)
	CLEAR VARIABLE:C89(distanceVLOG)
End if 

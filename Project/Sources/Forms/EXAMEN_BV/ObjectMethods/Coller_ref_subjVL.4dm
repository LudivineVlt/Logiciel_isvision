If (Form event code:C388=On Clicked:K2:4)
	RefSubjVL_OD_Sph:=sphereOD
	RefSubjVL_OD_Cyl:=cylOD
	RefSubjVL_OD_Axe:=axeOD
	RefSubjVL_OD_AV:=avVLOD
	
	RefSubjVL_OD_distance:=distanceVLOD
	
	
	RefSubjVL_OG_Sph:=sphereOG
	RefSubjVL_OG_Cyl:=cylOG
	RefSubjVL_OG_Axe:=axeOG
	RefSubjVL_OG_AV:=avVLOG
	
	RefSubjVL_OG_distance:=distanceVLOG
	
	RefSubjVL_ODG_AV:=av_VL_ODG
	
	
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

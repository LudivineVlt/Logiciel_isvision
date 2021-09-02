If (Form event code:C388=On Clicked:K2:4)
	RefGalilee_OD_Sph:=sphereOD
	RefGalilee_OD_Cyl:=cylOD
	RefGalilee_OD_Axe:=axeOD
	RefGalilee_OD_AV:=avVLOD
	RefGalilee_OD_Add:=addOD
	
	RefGalilee_OD_distance:=distanceVLOD
	
	
	RefGalilee_OG_Sph:=sphereOG
	RefGalilee_OG_Cyl:=cylOG
	RefGalilee_OG_Axe:=axeOG
	RefGalilee_OG_AV:=avVLOG
	RefGalilee_OG_Add:=addOG
	
	RefGalilee_OG_distance:=distanceVLOG
	
	RefGalilee_ODG_AV:=av_VL_ODG
	
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

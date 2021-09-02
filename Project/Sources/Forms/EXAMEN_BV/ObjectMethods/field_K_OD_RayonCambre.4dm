If (Form event code:C388=On Data Change:K2:15)
	
	OD_ast_co_puissance:=String:C10(((Num:C11(K_OD_RayonPlat)-Num:C11(K_OD_RayonCambre-)*(-0.25)/0.05)))
	
End if 
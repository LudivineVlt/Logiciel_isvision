Case of 
	: (Form event code:C388=On Load:K2:1)
		at_testopto:=1
		//C_TEXT(TEST_OPTO)
		//LIST TO ARRAY("Optotype"; at_testopto)
		
	: (Form event code:C388=On Clicked:K2:4)
		TEST_OPTO:=at_testopto{at_testopto}
		
	: (Form event code:C388=On Unload:K2:2)
		CLEAR VARIABLE:C89(TEST_OPTO)
		
		
End case 
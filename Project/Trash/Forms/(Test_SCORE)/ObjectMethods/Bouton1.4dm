If (Form event code:C388=On Clicked:K2:4)
	
	For ($i; 1; 25)
		
		$nameRuller:="Regle"+String:C10($i)
		OBJECT SET VALUE:C1742($nameRuller; 0)
		
		
	End for 
	
	int_score:=0
	int_total:=125
	
End if 
If (Form event code:C388=On Clicked:K2:4)
	
	For ($i; 1; 25)
		
		$nameRuller:="Regle"+String:C10($i)
		OBJECT SET VALUE:C1742($nameRuller; 0)
		
		
	End for 
	
	int_convert:=0
	[SCORE_QUALITE_VIE:18]Resultat:3:=""
	[SCORE_QUALITE_VIE:18]Commentaire:4:=""
	
	
End if 
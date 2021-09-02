C_LONGINT:C283($score; $total; $int_convert)
C_BOOLEAN:C305($convert)
$convert:=False:C215
$total:=125

If (FORM Event:C1606.code=On Clicked:K2:4)
	
	For ($i; 1; 25)
		
		$nameRuller:="Regle"+String:C10($i)
		$score:=$score+OBJECT Get value:C1743($nameRuller)
		
		If (OBJECT Get value:C1743($nameRuller)=0)
			$convert:=True:C214
			$total:=$total-5
		End if 
		
	End for 
	
	
	If ($convert)
		int_convert:=Int:C8(($score*125)/$total)
		[SCORE_QUALITE_VIE:18]Resultat:3:=(String:C10(int_convert)+" sur 125")
		[SCORE_QUALITE_VIE:18]Commentaire:4:=(String:C10($score)+" sur "+String:C10($total))
	Else 
		int_convert:=$score
		[SCORE_QUALITE_VIE:18]Resultat:3:=(String:C10($score)+" sur 125")
		
	End if 
	
	
	
End if 
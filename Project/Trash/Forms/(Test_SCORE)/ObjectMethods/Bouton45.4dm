C_LONGINT:C283($score; $total)
$total:=125

If (FORM Event:C1606.code=On Clicked:K2:4)
	
	For ($i; 1; 25)
		
		$nameRuller:="Regle"+String:C10($i)
		$score:=$score+OBJECT Get value:C1743($nameRuller)
		
		If (OBJECT Get value:C1743($nameRuller)=0)
			$total:=$total-5
		End if 
		
		//[SCORE_QUALITE_VIE]ReponsesQ25.$i:=OBJECT GET VALUE($nameRuller)
	End for 
	
	int_score:=$score
	int_total:=$total
	//[SCORE_QUALITE_VIE]Resultat:=int_score
	
End if 
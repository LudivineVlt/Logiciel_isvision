//%attributes = {}
C_LONGINT:C283($monID)
C_TEXT:C284($0)

$monID:=$1

$mesDates:=ds:C1482.EXAMEN_GENERAL.query("ID = :1"; $monID)

If ($mesDates.length=0)
	$0:=""
Else 
	$premDate:=$mesDate.DateExam.first()
	
	For each ($i; $mesDates.DateExam)
		If ($i>$premDate)
			$premDate:=$i
			
		End if 
		
	End for each 
	
	$0:=$premDate
	
	
End if 



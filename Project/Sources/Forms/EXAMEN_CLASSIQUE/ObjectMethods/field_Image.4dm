If (Form event code:C388=On Clicked:K2:4)
	$file:=Select document:C905(""; "*.*"; "Selectionner l'image à importer"; 0)
	If (ok=1)
		If (Is picture file:C1113($file))
			img_image:=$file
			
		End if 
	End if 
	
	
	
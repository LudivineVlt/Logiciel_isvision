Case of 
		
	: (Form event code:C388=On Load:K2:1)  // affichage valeur par défaut
		at_acuiteBruteVL_Optotype:=0
		
	: (Form event code:C388=On Clicked:K2:4)  //La sélection est modifiée
		acuiteBruteVL_Optotype:=at_acuiteBruteVL_Optotype{at_acuiteBruteVL_Optotype}
		
	: (Form event code:C388=On Unload:K2:2)
		CLEAR VARIABLE:C89(at_acuiteBruteVL_Optotype)
		
End case 
//Case of 
//: (Form event code=On Load)
//LIST TO ARRAY("Optotypes"; at_acuiteBruteVL_Optotype)
//If (Is new record([ACUITE]))  //Nouvel enregistrement
//at_acuiteBruteVL_Optotype:=0  //Affichage d’une valeur par défaut
//Else   //Enregistrement existant, on affiche la valeur stockée
//at_acuiteBruteVL_Optotype:=Find in array(at_acuiteBruteVL_Optotype; acuiteBruteVL_Optotype)
//End if 
//: (Form event code=On Clicked)  //La sélection est modifiée
//acuiteBruteVL_Optotype:=at_acuiteBruteVL_Optotype{at_acuiteBruteVL_Optotype}  //La nouvelle valeur est assignée au champ
//: (Form event code=On Validate)
//acuiteBruteVL_Optotype:=at_acuiteBruteVL_Optotype{at_acuiteBruteVL_Optotype}
//: (Form event code=On Unload)
//CLEAR VARIABLE(at_acuiteBruteVL_Optotype)
//End case 
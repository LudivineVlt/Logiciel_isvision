If (Form event code:C388=On Clicked:K2:4)
	//---------------------TABLE [BIOMICROSCOPIE]------------------
	
	//IMPLEMENTATION DU CHAMP OBJET Annexes :
	//           Annexes{
	//                   "OD" :
	//                   "OG" :
	//           }  
	biomicroscopie.Annexes:=New object:C1471("OD"; bio_annexes_OD; "OG"; bio_annexes_OG)
	
	//IMPLEMENTATION DU CHAMP OBJET SegmentAnterieur :
	//           SegmentAnterieur{
	//                   "OD" :
	//                   "OG" :
	//           }  
	biomicroscopie.SegmentAnterieur:=New object:C1471("OD"; bio_segmentAnterieur_OD; "OG"; bio_segmentAnterieur_OG)
	
	//IMPLEMENTATION DU CHAMP OBJET SegmentPosterieur :
	//           SegmentPosterieur{
	//                   "OD" :
	//                   "OG" :
	//           }  
	biomicroscopie.SegmentPosterieur:=New object:C1471("OD"; bio_segmentPosterieur_OD; "OG"; bio_segmentPosterieur_OG)
	
	//IMPLEMENTATION DU CHAMP TEXTE Commentaire :
	
	biomicroscopie.Commentaire:=bio_commentaire
	
	//IMPLEMENTATION DU CHAMP TEXTE Conclusion :
	
	biomicroscopie.Conclusion:=bio_conclusion
	
	biomicroscopie.save()
End if 
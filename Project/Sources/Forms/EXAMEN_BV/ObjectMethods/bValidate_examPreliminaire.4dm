If (Form event code:C388=On Clicked:K2:4)
	
	acuite.AcuiteBruteVL:=New object:C1471("OD"; acuiteBruteVL_OD; "DistanceOD"; acuiteBruteVL_DistanceOD; "OG"; acuiteBruteVL_OG; "DistanceOG"; acuiteBruteVL_DistanceOG; "ODG"; acuiteBruteVL_ODG; "DistanceODG"; acuiteBruteVL_DistanceODG; "Optotype"; acuiteBruteVL_Optotype)
	acuite.AcuiteBruteVP:=New object:C1471("OD"; acuiteBruteVP_OD; "DistanceOD"; acuiteBruteVP_DistanceOD; "OG"; acuiteBruteVP_OG; "DistanceOG"; acuiteBruteVP_DistanceOG; "ODG"; acuiteBruteVP_ODG; "DistanceODG"; acuiteBruteVP_DistanceODG; "Optotype"; acuiteBruteVP_Optotype)
	acuite.AcuiteHabituelleVL:=New object:C1471("OD"; acuiteHabituelleVL_OD; "DistanceOD"; acuiteHabituelleVL_DistanceOD; "OG"; acuiteHabituelleVL_OG; "DistanceOG"; acuiteHabituelleVL_DistanceOG; "ODG"; acuiteHabituelleVL_ODG; "DistanceODG"; acuiteHabituelleVL_DistanceODG; "Optotype"; acuiteHabituelleVL_Optotype)
	acuite.AcuiteHabituelleVL:=New object:C1471("OD"; acuiteHabituelleVP_OD; "DistanceOD"; acuiteHabituelleVP_DistanceOD; "OG"; acuiteHabituelleVP_OG; "DistanceOG"; acuiteHabituelleVP_DistanceOG; "ODG"; acuiteHabituelleVP_ODG; "DistanceODG"; acuiteHabituelleVP_DistanceODG; "Optotype"; acuiteHabituelleVP_Optotype)
	
	acuite.save()
	
	champVisuel.Type:=cv_type
	champVisuel.Commentaire:=cv_commentaire
	champVisuel.Image:=cv_image
	
	champVisuel.save()
	
	binocularite.Commentaire:=bin_commentaire
	binocularite.Hirschberg:=bin_hirschberg
	binocularite.AmplitudeTriangulation:=New object:C1471("TypeBris"; bris_type; "DistanceBris"; bin_distanceBris; "DistanceRecouvrement"; bin_distanceRecouvrement)
	binocularite.Masquage:=New object:C1471("BruteVL"; bin_masquage_bruteVL; "BruteVP"; bin_masquage_bruteVP; "CompVL"; bin_masquage_compVL; "CompVP"; bin_masquage_compVP)
	
	binocularite.save()
	
	lateralisation.Commentaire:=lat_commentaire
	lateralisation.Coordination:=lat_coordination
	lateralisation.Dominance:=New object:C1471("Sensorielle"; lat_dominance_Sensorielle; "Directeur"; lat_dominance_Directeur; "Visee"; lat_dominance_Visee)
	
	lateralisation.save()
	
	fixation.FixationExcentree:=fix_excentree
	fixation.FixationsSautees:=fix_sautees
	fixation.Poursuites:=fix_poursuites
	fixation.Commentaire:=fix_commentaire
	
	fixation.save()
	
End if 
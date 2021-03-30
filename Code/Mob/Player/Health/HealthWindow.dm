

mob/verb
	Health_Window2()
		Pain()
		winshow(src,"HealthWindow",1)
		winset(usr,"Pain","text=[Pain]%")
		if (TorsoHP==100)
		else
			winset(usr, "LimbDamage", "current-cell=1,1")
			usr << output("Torso", "LimbDamage")
			winset(usr, "LimbDamage", "current-cell=2,1")
			usr << output("[TorsoHP]%", "LimbDamage")
		if (HeadHP==100)
		else
			winset(usr, "LimbDamage", "current-cell=1,2")
			usr << output("Head", "LimbDamage")
			winset(usr, "LimbDamage", "current-cell=2,2")
			usr << output("[HeadHP]%", "LimbDamage")


//  \"  double quote
// \\ 	backslash
// \< 	less than
// \> 	greater than
// \& 	ampersand
// \n 	newline
// \... 	suppress newline at end
// \(space) 	skip a space
// http://www.byond.com/docs/guide/chap11.html
mob
	var
		sx
		sy
		sz


	Login()
		Move(locate(sx,sy,sz))
		var/savefile/F = new(ckey)
		Read(F)
		return ..()

	Logout()
		sx = x
		sy = y
		sz = z
		var/savefile/F = new(ckey)
		Write(F)
		..()
		del(src)


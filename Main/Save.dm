mob
	Login()
		UpdateInventory()
		UpdateEquipment()
		if(!loadPlayer())
			..()
	Logout()
		savePlayer()
		del src

	proc
		loadPlayer()
			if(fexists("Savefiles/[ckey].sav"))
				var/savefile/F = new("Savefiles/[ckey].sav")
				Read(F)
				return 1
			else
				return 0

		savePlayer()
			var/savefile/F = new("Savefiles/[ckey].sav")
			Write(F)
			return 1

	Read(var/savefile/F)
		..()
		Move(locate(F["x"],F["y"],F["z"]))

	Write(var/savefile/F)
		..()
		F["x"] << x
		F["y"] << y
		F["z"] << z
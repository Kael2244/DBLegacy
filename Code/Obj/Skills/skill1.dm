obj
	skills
		Super_mega_kamehameha
			icon = 'caja madera.dmi'
			verb
				Super_mega_kamehameha()

		SSJ
			verb
				Transform()
					var/icon/I = new('player.dmi')
					I.Blend(rgb(40,0,0))
					usr.icon = I


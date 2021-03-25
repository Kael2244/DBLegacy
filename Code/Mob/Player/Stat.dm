mob
	Others

	Stat()
		statpanel("[src]'s Stats")
		stat("Battle Power:","[src.BP]")
		stat("Mana:","[src.Mana]")
		stat("Energy:","[src.Energy]")
		stat("Health:","[src.HP]/[src.MaxHP]")
		stat("Strength:","[src.Str]")
		stat("Speed:","[src.Spd]")
		stat("Defense:","[src.Def]")

		statpanel("inventory",src.contents)
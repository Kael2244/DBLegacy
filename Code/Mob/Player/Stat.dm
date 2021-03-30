mob
	Others

	Stat()
		statpanel("[src]'s Stats")
		stat("Battle Power:","[src.BP]")
		stat("Mana:","[src.Mana]")
		stat("Energy:","[src.Energy]")
		stat("Health:","[src.HP]/[src.MaxHP]")
		stat("Might:","[src.Might]")
		stat("Endurance:","[src.End]")
		stat("Speed:","[src.Spd]")
		stat("Defense:","[src.Def]")
		stat("Offense:","[src.Off]")

		statpanel("inventory",src.contents)
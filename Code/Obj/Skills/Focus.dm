obj/skills/Focus

	var
		Using=0
	verb
		Focus()
			set category = "Skills"
			if (Using==1)
				Using=0
				usr.Def/=1.8
				view()<<"[src] Stops focusing his energy"
				return
			Using=1
			usr.Def*=1.8
			view()<<"[src] Focus his energy"
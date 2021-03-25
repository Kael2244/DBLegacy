mob

	verb
		say(t as text)
			world << "[usr]: says, [t]"

		OCC (t as text)
			world<<"[usr]: says, [t]"

		Meditation()
			if(Meditation=="off")
				Meditation="on"
				view()<<"[src] Meditates"
				Regen()
			else
				Meditation="off"
				view()<<"[src] Stops meditating"

		Attack(mob/M as mob in oview(1))
			flick("Attack",src)
			for(var/mob/player in get_step(src,src.dir))
				var/Damage=max(0,src.Str-M.Def)
				view(M)<<"[src] hit [M] for [Damage] Damage!"
				M.TakeDamage(Damage,src)
				M.DeathCheck()

		Flagelarse()
			HP=(HP-10)
			view()<<"[src] hit himself"

		Train()
			if(Train=="off")
				Train="on"
				view()<<"[src] Trains"
				Training()
			else
				Train="off"
				view()<<"[src] Stop the training"

		Teleport()
			set category = "Admin"
			var
			x=1
			y=1
			z=1

			x = input("X","",x)
			y = input("Y","",y)
			z = input("Z","",z)

		Edit_stats ()
			set category = "Admin"
			usr.Energy = input("Energy")
			usr.HP = input ("Healt")


		Check_Int()
			set category = "Admin"

		Examine()
			set src in oview(1)
			usr<<"[desc]"

		Mate()
			new/mob/Baby (src.loc)
			HP=1000

		Learn_Skills()
			var/obj/Ob = input(src,"Skill Tree","Pick what you want to learn") as null|anything in (typesof(/obj/skills/)-/obj/skills)
			if(!Ob)return
			new Ob(src)  // creates a new instance of Ob's path in src
//			winshow(src,"SkillsWindow")
		Learn_Skills3()
//			var/obj/Ob = input(src,"Skill Tree","Pick what you want to learn") as null|anything in (typesof(/obj/skills/)-/obj/skills)
//			if(!Ob)return
//			new Ob(src)  // creates a new instance of Ob's path in src
			winshow(src,"SkillsWindow")









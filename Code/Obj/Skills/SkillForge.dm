obj
	var
		Might
		End
		Spd
		Def
		Off
		Using
obj/BlankSkills
	Buff
		var
		verb_name = "Activate"
		object_one
			verb_name = "One"
		proc/Activate()
			set category = "Skills"
			set src in usr
			if(Using == 1)
				usr.Might/=Might
				usr.End/=End
				usr.Spd/=Spd
				usr.Off/=Off
				usr.Def/=Def
				usr << "You deactivated [src.name]!"
				Using=0
				return
			Using = 1
			usr.Might*=Might
			usr.End*=End
			usr.Spd*=Spd
			usr.Off*=Off
			usr.Def*=Def
			usr << "You activated [src.name]!"





	Meele
		verb
			UseMeele()
				set category = "Skills"
	Ki
		verb
			UseKi()
				set category = "Skills"
mob/verb

	Make_New_Skill()
		switch(input(usr ,"Style","Skill Forge") in list("Meele","Ki","Buff"))
			if("Buff")
				var/obj/BlankSkills/Buff/object_one/O = new(usr)
				O.name= input("Name your Skill","Skill Forge",text)
				O.verb_name= input("Name the verb to use it (The one who will show in skills)","Skill Forge",text)
				O.Might = input("How much points you want to spend on Might?(Every point is 1%)") in list(1.01,1.02,1.03,1.04,1.05,1.06,1.07,1.08,1.09,1.10,1.11,1.12,1.13,1.14,1.15)
				O.End= input("How much points you want to spend on Endurance?(Every point is 1%)") in list(1.01,1.02,1.03,1.04,1.05,1.06,1.07,1.08,1.09,1.10,1.11,1.12,1.13,1.14,1.15)
				O.Spd= input("How much points you want to spend on Speed?(Every point is 1%)") in list(1.01,1.02,1.03,1.04,1.05,1.06,1.07,1.08,1.09,1.10,1.11,1.12,1.13,1.14,1.15)
				O.Off= input("How much points you want to spend on Offense?(Every point is 1%)") in list(1.01,1.02,1.03,1.04,1.05,1.06,1.07,1.08,1.09,1.10,1.11,1.12,1.13,1.14,1.15)
				O.Def= input("How much points you want to spend on Defense?(Every point is 1%)") in list(1.01,1.02,1.03,1.04,1.05,1.06,1.07,1.08,1.09,1.10,1.11,1.12,1.13,1.14,1.15)
				O.verbs += new/obj/BlankSkills/Buff/proc/Activate(src,O.verb_name)


//			if("Ki")
//				new /obj/BlankSkills/Ki (src)
//			if("Meele")
//				new /obj/BlankSkills/Meele (src)


//		BlankSkill.input("Style","Skill Forge") in list ("Meele","Ki","Buff")
//		BlankSkill.name= input("Name your Skill","Skill Forge",text)
//		verbs-=/obj/Buff/verb/Buff

mob/proc

	TakeDamage(var/Damage,var/mob/Attacker)
		LimbDamage()
		src.HP-=Damage
		src.DeathCheck(Attacker)

	DeathCheck(var/mob/Killer)
		if(src.HP<=0)
			if(src.client)
				world<<"[Killer] Killed [src]!"
				src.HP=src.MaxHP
				src.loc=locate(5,5,1)
			del src

	Regen(var/Regen=0)
		if (Busy=="Yes")
			view()<<"[src] You are busy"
			goto T
		Busy="Yes"
		E
		if(Energy<=MaxEnergy)
			Energy=Energy+1
			sleep(2)
			goto E
		else
			goto T
		T
	Training()


	UpdateInventory()
		var/items = 0
		for(var/obj/O in src)
			if(equipment && O.slot && equipment[O.slot]==O)
				continue	// don't show equipped items
			winset(src, "inventory", "current-cell=[++items]")
			src << output(O, "inventory")
		winset(src, "inventory", "cells=[items]")	// cut off any remaining cells

	UpdateEquipment()
		var/items = 0
		for(var/slot in equipment)
			winset(src, "equipment", "current-cell=1,[++items]")
			src << output(slot, "equipment")
			winset(src, "equipment", "current-cell=2,[items]")
			src << output(equipment[slot], "equipment")
		winset(src, "equipment", "cells=2x[items]")	// cut off any remaining rows


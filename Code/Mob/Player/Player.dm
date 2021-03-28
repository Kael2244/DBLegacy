mob
	icon = 'player.dmi'


mob

	var/list/equipment



	proc/Equip(obj/O)
		if(!O || !O.slot) return
		if(equipment && equipment[O.slot])
			Unequip(equipment[O.slot])
			if(equipment && equipment[O.slot]) return	// unequip failed
		if(!equipment) equipment = new
		equipment[O.slot] = O
		src << "You equip [O]."
		oview(src) << "[src] equips \a [O]."
		UpdateInventory()
		UpdateEquipment()

	proc/Unequip(obj/O)
		if(!O || !O.slot) return
		if(!equipment || equipment[O.slot]!=O) return	// failed
		equipment -= O.slot
		if(!equipment.len) equipment = null	// reclaim the list
		src << "You unequip [O]."
		oview() << "[src] unequips \a [O]."
		UpdateInventory()
		UpdateEquipment()

obj

	proc/IsEquipped()
		if(slot)
			var/mob/M = loc
			if(ismob(M) && M.equipment && M.equipment[slot]==src)
				return 1
		return 0


mob/verb/SwapPanes()
	set hidden=1
	if(winget(usr, "split2", "right") == "outputpane")
		winset(usr, "split1", "left=outputpane")
		winset(usr, "split2", "right=gridpane")
	else
		winset(usr, "split1", "left=gridpane")
		winset(usr, "split2", "right=outputpane")
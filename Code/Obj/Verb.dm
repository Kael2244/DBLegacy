obj
	verb
		Get()
			set src in oview(1)
			if(src in oview(1))	// sanity check; the verb could come in late
				loc = usr
				usr << "You pick up [src]."
				oview() << "[usr] picks up \a [src]."
				usr.UpdateInventory()

		Drop()
			set src in usr
			if(src in usr)	// sanity check; the verb could come in late
				if(IsEquipped())
					usr.Unequip(src)
					if(IsEquipped()) return	// unequip failed
				loc = usr.loc
				usr << "You drop [src]."
				oview() << "[usr] drops \a [src]."
				usr.UpdateInventory()
		Equip()

//set src in usr
//if(!(src in usr)) return  // avoid bugs
//if(!slot) return
//if(!usr.equipment) usr.equipment = new
//else if(usr.equipment[slot])
//var/obj/item/I = usr.equipment[slot]
//if(I==src) return
//I.Unequip()
//usr.equipment[slot] = src
//usr << "You equip \a [src]."

		Unequip()
//			if(slot) usr.Unequip(src)



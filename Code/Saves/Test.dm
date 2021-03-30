var
	list/hiding_spots = list()
proc
	show_hit(mob/m)
		var/obj/o = new /obj(m.loc)
		o.layer = MOB_LAYER + 1
		o.pixel_x = rand(-8, 8)
		o.pixel_y = rand(-8, 8)
		o.mouse_opacity = 0
		o.icon_state = "attack"
		o.dir = pick(NORTH, SOUTH, EAST, WEST)
		sleep(6)
		del o

	show_heal(mob/m)
		var/obj/o = new /obj(m.loc)
		o.layer = MOB_LAYER + 1
		o.pixel_x = rand(-4, 4)
		o.pixel_y = rand(-4, 4)
		o.mouse_opacity = 0
		o.icon_state = "heal"
		sleep(8)
		del o


obj
	puerta
		icon = 'Door.dmi'
		density = 1
		opacity = 1
		verb
			Open()
				set src in view(1)
				icon_state ="Opening"
				sleep(13)
				icon_state ="Open"
				density=0
				opacity =0
				view()<<"[usr] open the door"
			Close()
				set src in view(1)
				icon_state ="Closing"
				sleep(13)
				icon_state ="Closed"
				density=1
				opacity = 1
				view()<<"[usr] close the door"
	desc ="This is a door"
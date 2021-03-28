mob/proc
	LimbDamage()
		usr << pick (
			(TorsoHP=TorsoHP-rand(1,10)),
		prob(50)
			(HeadHP=HeadHP-rand(1,10)),
			)
		view()<<"[src] hit himself"
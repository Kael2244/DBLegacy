mob/verb/SkillLearn (skill as text)
	set name=".Skills"
	set hidden=1
	if(skill=="SSJ")
		new/obj/skills/SSJ (src)

mob/verb/VisibleT0 (visible as text)
	set name=".VisibleTier0"
	set hidden=1
	if (visible =="True")
		winshow(src,"Stance", 0)
		winshow(src,"Tier0")

mob/verb/VisibleStance (visible as text)
	set name=".VisibleStance"
	set hidden=1
	if (visible =="True")
		winshow(src,"Stance")
		winshow(src,"Tier0",0)


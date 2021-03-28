mob/var
//Main Status
	Pain
	Consciousness
	Moving
	Manipulation
	Sight
	Hearing
	Talking
	Breathing
	BloodPumping
	BloodFiltration
	Metabolism
//Torso
	TorsoHP = 100

	T1HP = 100
	T2HP = 100
	T3HP = 100
	T4HP = 100
	T5HP = 100
	T6HP = 100
	T7HP = 100
	T8HP = 100
	T9HP = 100
	T10HP = 100
	T11HP = 100
	T12HP = 100

	L1HP = 100
	L2HP = 100
	L3HP = 100
	L4HP = 100
	L5HP = 100

	Rib1RHP = 100
	Rib2RHP = 100
	Rib3RHP = 100
	Rib4RHP = 100
	Rib5RHP = 100
	Rib6RHP = 100
	Rib7RHP = 100
	Rib8RHP = 100
	Rib9RHP = 100
	Rib1R0HP = 100
	Rib11RHP = 100
	Rib12RHP = 100

	Rib1LHP = 100
	Rib2LHP = 100
	Rib3LHP = 100
	Rib4LHP = 100
	Rib5LHP = 100
	Rib6LHP = 100
	Rib7LHP = 100
	Rib8LHP = 100
	Rib9LHP = 100
	Rib10LHP = 100
	Rib11LHP = 100
	Rib12LHP = 100

	PelvisHP = 100
	ScapulaeHP = 100

	HeartHP = 100
	LungRHP = 100
	LungLHP = 100
	LiverHP = 100
	StomachHP = 100
	EsophagusHP = 100
	PancreasHP = 100
	Intestine = 100
	BladderHP = 100
	Spleen = 100
	KidneyRHP= 100
	KidneyLHP= 100
	ReproductiveHP = 100

//Head
	HeadHP = 100
	JawHP = 100
	EyeLHP = 100
	EyeRHP = 100
	TongueHP = 100
	NoseHP = 100
	EarLHP = 100
	EarRHP = 100
	TeethHP = 100
	SkullHP = 100
	C1HP = 100
	C2HP = 100
	C3HP = 100
	C4HP = 100
	C5HP = 100
	C6HP = 100
	C7HP = 100

//Limbs
	FemurLHP = 100
	FemurRHP = 100
	HumerusRHP = 100
	HumerusLHP = 100
	RadioLHP = 100
	RadioRHP = 100
	UlnaRHP = 100
	UlnaLHP = 100
	TibiaLHP = 100
	TibiaRHP = 100
	FibulaRHP = 100
	FibulaLHP = 100
	AnkleRHP = 100
	AnkleLHP = 100
	WristRHP = 100
	WristLHP = 100
	PinkyLHP = 100
	PinkyRHP = 100
	PinkyToeRHP = 100
	PinkyToeLHP = 100
	RingFingerLHP = 100
	RingFingerRHP = 100
	RingToeLHP = 100
	RingToeRHP = 100
	MiddleFingerLHP = 100
	MiddleFingerRHP = 100
	MiddleToeLHP = 100
	MidleToeRHP = 100
	IndexFingerLHP = 100
	IndexFingerRHP = 100
	ThumbRHP = 100
	ThumbLHP = 100
	HalluxLHP = 100
	HalluxRHP =100



mob/proc
	Pain()
		Pain= ((100-TorsoHP)+(100-HeadHP))/2
acesso = {

	ACL = {"Admin", "Console"},
	elementData = {
		["Vampiro"] = true,
		["Vamp"] = true,
	},
	team = {"Vampires", "Vampire"},
}

commands = {
	feed = "morder",
	senses = "visao",
	transform = "mutacao",
	help = "vampiro",
}

controls = {
	feed = "e",
	senses = "o",
	transform = "m",
	help = "f9",
}

stats = {

	[false] = {
	[22] = 0, --Stamina
	[23] = 0, --Muscle
	[24] = 569, --Max Health
	[164] = 0, --Armor
	[165] = 0, --Energy
	[225] = 0, --Breathing
	},
	
	[true] = {
	[22] = 1000, --Stamina
	[23] = 1000, --Muscle
	[24] = 1000, --Max Health
	[164] = 100, --Armor
	[165] = 1000, --Energy
	[225] = 1000, --Breathing
	},
	
}

hunger = {
	timer = 30,
	duration = 10,
	damage = 5,
	percent = 25,
}

senses = {
	screen = {150, 0, 0, 150},
	aura = {255,0,0,50},
}

flight = {
	[false] = {
	speed = 1,
	aceleration = 0.1,
	centralize = 2,
	turning = 5,
	steering = 3,
	},
	
	[true] = {
	speed = 0.5,
	aceleration = 0.01,
	centralize = 2,
	turning = 3,
	steering = 2,
	},
}

immunity = {
	[false] = {0,1,2,3,5,7,10},
	[true] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 38, 41, 42, 10, 14, 15},
}

sun = {
	starting = 6,
	ending = 18,
	timer = 1,
	damage = 25,
}

skins = {

	male = {  0,   1,   2,   3,   4,   5,   7,   8,  14,  15,
	 16,  17,  18,  19,  20,  21,  22,  23,  24,  25,
	 26,  27,  28,  29,  30,  32,  33,  34,  35,  36,
	 37,  42,  43,  44,  45,  46,  47,  48,  49,  50,
	 51,  52,  57,  58,  59,  60,  61,  62,  65,  66,
	 67,  68,  70,  71,  72,  73,  78,  79,  80,  81,
	 82,  83,  84,  94,  95,  96,  97,  98,  99, 100,
	101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
	111, 112, 113, 114, 115, 116, 117, 118, 119, 120,
	121, 122, 123, 124, 125, 126, 127, 128, 132, 133,
	134, 135, 136, 137, 142, 143, 144, 146, 147, 153,
	154, 155, 156, 158, 159, 160, 161, 162, 163, 164,
	165, 166, 167, 168, 170, 171, 173, 174, 175, 176,
	177, 179, 180, 181, 182, 183, 184, 185, 186, 187,
	188, 189, 200, 202, 203, 204, 206, 209, 210, 212,
	213, 217, 220, 221, 222, 223, 227, 228, 229, 230,
	234, 235, 236, 239, 240, 241, 242, 247, 248, 249,
	250, 252, 253, 254, 255, 258, 259, 260, 261, 262,
	264, 265, 266, 267, 268, 269, 270, 271, 272, 273,
	274, 275, 276, 277, 278, 279, 280, 281, 282, 283,
	284, 285, 286, 287, 288, 289, 290, 291, 292, 293,
	294, 295, 296, 297, 299, 300, 301, 302, 303, 305,
	306, 307, 308, 309, 310, 311, 312},
	
	female = {  6,   9,  10,  11,  12,  13,  31,  38,  39,  40,
	 41,  53,  54,  55,  56,  63,  64,  69,  75,  76,
	 77,  85,  86,  87,  88,  89,  90,  91,  92,  93,
	129, 130, 131, 138, 139, 140, 141, 145, 148, 150,
	151, 152, 157, 169, 172, 178, 190, 191, 192, 193,
	194, 195, 196, 197, 198, 199, 201, 205, 207, 211,
	214, 215, 216, 218, 219, 224, 225, 226, 231, 232,
	233, 237, 238, 243, 244, 245, 246, 251, 256, 257,
	263, 298, 304},
}

damage = {

	[10] = { setPedOnFire, true },
	[12] = { killPed },
	[42] = {setPedOnFire, false},

}

contagion = {

	[false] = false,
	[true] = true,

}

sounds = {

	skills = {
	
		senses = {
			[true] = "files/sfx/skills/sensesOn.mp3",
			[false] = "files/sfx/skills/sensesOff.mp3",
			[0] = "files/sfx/skills/sensesLoop.mp3",
		},
		
		bat = {
			[true] = "files/sfx/skills/batOn.mp3",
			[false] = "files/sfx/skills/batOff.mp3",
			[0] = "files/sfx/skills/batLoop.mp3",
			[1] = "files/sfx/skills/batWing.mp3",
		},
		
		monster = {
			[true] = "files/sfx/skills/monsterOn.mp3",
			[false] = "files/sfx/skills/monsterOff.mp3",
			[0] = "files/sfx/skills/monsterLoop.mp3",
			[1] = "files/sfx/skills/monsterWing.mp3",
		},
	
	
	},

	victims = {
	
		male = {
			
			[true] = "files/sfx/victims/m_biteOn.mp3",
			[false] = "files/sfx/victims/m_biteOff.mp3",
			[0] = "files/sfx/victims/m_biteLoop.mp3",
			[1] = "files/sfx/victims/m_biteDrain.mp3",
		},
		
		female = {
			[true] = "files/sfx/victims/f_biteOn.mp3",
			[false] = "files/sfx/victims/f_biteOff.mp3",
			[0] = "files/sfx/victims/f_biteLoop.mp3",
			[1] = "files/sfx/victims/f_biteDrain.mp3",
		},
	
	},
	
	vampire = {
	
		male = {
			
			[true] = "files/sfx/vampire/m_feedOn.mp3",
			[false] = "files/sfx/vampire/m_feedOff.mp3",
			[0] = "files/sfx/vampire/m_feedLoop.mp3",
		},
		
		female = {
			[true] = "files/sfx/vampire/f_feedOn.mp3",
			[false] = "files/sfx/vampire/f_feedOff.mp3",
			[0] = "files/sfx/vampire/f_feedLoop.mp3",
		},
		
		monster = {
			
			[true] = "files/sfx/vampire/monster_feedOn.mp3",
			[false] = "files/sfx/vampire/monster_feedOff.mp3",
			[0] = "files/sfx/vampire/monster_feedLoop.mp3",
			[1] = "files/sfx/skills/monster_death.mp3",
		},
	
	},

	effects = {
		["heartbeat"] = "files/sfx/effects/heartbeat.mp3",
		["hunger"] = "files/sfx/effects/hunger.mp3",
		["burning"] = "files/sfx/effects/burning.mp3",
	}

}

crossHair = true
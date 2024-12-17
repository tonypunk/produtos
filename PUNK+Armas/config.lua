--[[

function giveWeapon (...)
return exports['PUNK+Armas']:giveWeapon (unpack (arg))
end

function takeWeapon (...)
return exports['PUNK+Armas']:takeWeapon (unpack (arg))
end

function takeAllWeapons (...)
return exports['PUNK+Armas']:takeAllWeapons (unpack (arg))
end

function getPedWeapon (...)
return exports['PUNK+Armas']:getPedWeapon (unpack (arg))
end

function getPedAmmoInClip (...)
return exports['PUNK+Armas']:getPedAmmoInClip (unpack (arg))
end

function getPedTotalAmmo (...)
return exports['PUNK+Armas']:getPedTotalAmmo (unpack (arg))
end

function isPedReloadingWeapon (...)
return exports['PUNK+Armas']:isPedReloadingWeapon (unpack (arg))
end

function setWeaponOwner (...)
return exports['PUNK+Armas']:setWeaponOwner (unpack (arg))
end

function getWeaponOwner (...)
return exports['PUNK+Armas']:getWeaponOwner (unpack (arg))
end

function getWeaponName (...)
return exports['PUNK+Armas']:getWeaponName (unpack (arg))
end

function getSlotFromWeapon (...)
return exports['PUNK+Armas']:getSlotFromWeapon (unpack (arg))
end

function getWeaponNameFromID (...)
return exports['PUNK+Armas']:getWeaponNameFromID (unpack (arg))
end

function getData ()
return exports['PUNK+Armas']:getData ()
end

]]

--[[Documentation

mira unica para cada arma

sons do tiro personalizado para cada arma (não sai dois barulhos de tiro)

o primeiro tiro é sempre no alvo, deopois do primeiro tiro quanto mais tiros maior a queda de precisão, mecanica de atirar e soltar o gatilho pra manter precisao
sistema de força do tiro baseado na potencia da arma. a potencia da arma define o quanto o projétil perde de dano pela distancia até chegar ao alvo
rojão

fumaça e faísca da arma configurável (porcentagem de chance de 0 a 100 de sair faisca, cada arma tem sua chance maior ou menor)

alcance das armas configurável podendo ultrapassar os limites de alcance do jogo

tiros tracantes configuraveis para cada arma podendo definir cor, espessura, comprimento e velocidade do traçante

armas cabolosas do gta como Railgun, Widowmaker, EMP Gun, Atomizer e outros

]]

-------------INICIALIZAÇÃO------------
sim = true
nao = false
-------------------------------------
-----------Configurações-------------

commands = {
left = 'left_hand',
reload = 'recarregar',
}

controls = {
left = 'tab',
reload = 'r',
}

arsenal = {
	['Pistol'] = {
		--
		arquivo = 'files/weapons/ptl/pistol', --caminho do arquivo ou ID do objeto
		handling = 'deagle', -- handling nativo (pode ser modificado posteriormente)
		--
	},
	--
	['Heavy Revolver'] = {
		--
		arquivo = 'files/weapons/ptl/heavy revolver', --caminho do arquivo ou ID do objeto
		handling = 'deagle', -- handling nativo (pode ser modificado posteriormente)
		--
	},
	
	['Stun Gun'] = {
		--
		arquivo = 'files/weapons/ptl/stun gun', --caminho do arquivo ou ID do objeto
		handling = 'silenced', -- handling nativo (pode ser modificado posteriormente)
		--
	},
	--SMG
	['Combat PDW'] = {
		--
		arquivo = 'files/weapons/smg/combat pdw', --caminho do arquivo ou ID do objeto
		handling = 'mp5', -- handling nativo (pode ser modificado posteriormente)
		--
	},
	--
	['Micro SMG'] = {
		--
		arquivo = 'files/weapons/smg/micro smg', --caminho do arquivo ou ID do objeto
		handling = 'mp5', -- handling nativo (pode ser modificado posteriormente)
		--
	},
	--
	['Machine Pistol'] = {
		--
		arquivo = 'files/weapons/smg/machine pistol', --caminho do arquivo ou ID do objeto
		handling = 'mp5', -- handling nativo (pode ser modificado posteriormente)
		--
	},
	--LMG
	['Compact Rifle'] = {
		--
		arquivo = 'files/weapons/lmg/compact rifle', --caminho do arquivo ou ID do objeto
		handling = 'mp5', -- handling nativo (pode ser modificado posteriormente)
		--
	},
	--
	['Special Carbine'] = {
		--
		arquivo = 'files/weapons/lmg/special carbine', --caminho do arquivo ou ID do objeto
		handling = 'm4', -- handling nativo (pode ser modificado posteriormente)
		--
	},
	--MGN
	['MG'] = {
		--
		arquivo = 'files/weapons/mgn/mg', --caminho do arquivo ou ID do objeto
		handling = 'ak-47', -- handling nativo (pode ser modificado posteriormente)
		--
	},

}

properties = {
	--Handguns
	['Pistol'] = { 
		['damage'] = 26,
		['accuracy'] = 0.40, --0.0 a 1.0
		['rate'] = 400, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
	},
	--
	['Heavy Revolver'] = { 
		['damage'] = 70,
		['accuracy'] = 0.65, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
		['clip'] = 6, --quantidade de balas
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 70,
		['target_range'] = 70,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
	},
	--
	['Stun Gun'] = { 
		['damage'] = 1,
		['accuracy'] = 0.40, --0.0 a 1.0
		['rate'] = 900, --espaço de tempo entre os tiros
		['clip'] = 1, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = true, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
	},
	--SMG
	['Combat PDW'] = { 
		['damage'] = 25,
		['accuracy'] = 0.45, --0.0 a 1.0
		['rate'] = 250, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 76,
		['target_range'] = 76,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.80, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.2, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.25, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
	},
	--
	['Micro SMG'] = { 
		['damage'] = 21,
		['accuracy'] = 0.30, --0.0 a 1.0
		['rate'] = 200, --espaço de tempo entre os tiros
		['clip'] = 16, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 50,
		['target_range'] = 50,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.80, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.2, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
	},
	--
	['Machine Pistol'] = { 
		['damage'] = 28,
		['accuracy'] = 0.40, --0.0 a 1.0
		['rate'] = 150, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 60,
		['target_range'] = 60,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.80, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.2, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
	},
	--LMG
	['Compact Rifle'] = { 
		['damage'] = 36,
		['accuracy'] = 0.35, --0.0 a 1.0
		['rate'] = 200, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 90,
		['target_range'] = 90,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.80, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.4, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {-0.03,0,-0.075	}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.25, speed = 1, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
	},
	--
	['Special Carbine'] = { 
		['damage'] = 34,
		['accuracy'] = 0.55, --0.0 a 1.0
		['rate'] = 175, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 80,
		['target_range'] = 80,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.4, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
	},
	--MGN
	['MG'] = { 
		['damage'] = 50,
		['accuracy'] = 0.40, --0.0 a 1.0
		['rate'] = 200, --espaço de tempo entre os tiros
		['clip'] = 54, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 120,
		['target_range'] = 120,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.6, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
	},
	
}

animations = {
	--Handguns
	['Pistol'] = { 
		['shoot'] = {
			[false] = {'colt45', 'colt45_fire_2hands', 1, false, false, false, true, 1, false, 1.0, 0.2308},
			[true] = {'colt45', 'colt45_crouchfire', 1, false, false, true, true, 1, true, 1.0, 0.25},
		},
		--
		['reload'] = {
			[false] = {'colt45', 'colt45_reload', 1, false, true, false, true, 1, true},
			[true] = {'colt45', 'colt45_crouchreload', 1, false, true, false, true, 1, true},
		},
	},
	--
	['Heavy Revolver'] = { 
		['shoot'] = {
			[false] = {'python', 'python_fire', 1, false, false, false, true, 1, false, 1.0, 0.2571},
			[true] = {'python','python_crouchfire', 1, false, false, true, true, 1, true, 1.0, 0.1944},
		},
		--
		['reload'] = {
			[false] = {'colt45', 'sawnoff_reload', 1, false, true, false, true, 1, true},
			[true] = {'colt45', 'sawnoff_reload', 1, false, true, false, true, 1, true},
		},
	},
	--
	['Stun Gun'] = { 
		['shoot'] = {
			[false] = {'colt45', 'colt45_fire_2hands', 1, false, false, false, true, 1, false, 1.0, 0.2308},
			[true] = {'colt45', 'colt45_crouchfire', 1, false, false, true, true, 1, true, 1.0, 0.25},
		},
		--
		['reload'] = {
			[false] = {'colt45', 'colt45_reload', 1, false, true, false, true, 1, true},
			[true] = {'colt45', 'colt45_crouchreload', 1, false, true, false, true, 1, true},
		},
	},
	--SMG
	['Combat PDW'] = { 
		['shoot'] = {
			[false] = {'uzi', 'uzi_fire', 1, false, false, false, true, 1, false, 1.0, 0.3529},
			[true] = {'uzi','uzi_crouchfire', 1, false, false, true, true, 1, true, 1.0, 0.3158},
		},
		--
		['reload'] = {
			[false] = {'uzi', 'uzi_reload', 1, false, true, false, true, 1, true},
			[true] = {'uzi', 'uzi_crouchreload', 1, false, true, false, true, 1, true},
		},
	},
	--
	['Micro SMG'] = { 
		['shoot'] = {
			[false] = {'uzi', 'uzi_fire', 1, false, false, false, true, 1, false, 1.0, 0.3529},
			[true] = {'uzi','uzi_crouchfire', 1, false, false, true, true, 1, true, 1.0, 0.3158},
		},
		--
		['reload'] = {
			[false] = {'uzi', 'uzi_reload', 1, false, true, false, true, 1, true},
			[true] = {'uzi', 'uzi_crouchreload', 1, false, true, false, true, 1, true},
		},
	},
	--
	['Machine Pistol'] = { 
		['shoot'] = {
			[false] = {'uzi', 'uzi_fire', 1, false, false, false, true, 1, false, 1.0, 0.3529},
			[true] = {'uzi','uzi_crouchfire', 1, false, false, true, true, 1, true, 1.0, 0.3158},
		},
		--
		['reload'] = {
			[false] = {'uzi', 'uzi_reload', 1, false, true, false, true, 1, true},
			[true] = {'uzi', 'uzi_crouchreload', 1, false, true, false, true, 1, true},
		},
	},
	--LMG
	['Compact Rifle'] = { 
		['shoot'] = {
			[false] = {'uzi', 'uzi_fire', 1, false, false, false, true, 1, false, 1.0, 0.3845},
			[true] = {'uzi','uzi_crouchfire', 1, false, false, true, true, 1, true, 1.0, 0.3158},
		},
		--
		['reload'] = {
			[false] = {'uzi', 'uzi_reload', 1, false, true, false, true, 1, true},
			[true] = {'uzi', 'uzi_crouchreload', 1, false, true, false, true, 1, true},
		},
	},
	--
	['Special Carbine'] = { 
		['shoot'] = {
			[false] = {'rifle', 'rifle_fire', 1, false, false, false, true, 1, false, 1.0, 0.25},
			[true] = {'rifle','rifle_crouchfire', 1, false, false, true, true, 1, true, 1.0, 0.2308},
		},
		--
		['reload'] = {
			[false] = {'rifle', 'rifle_load', 1, false, true, false, true, 1, true},
			[true] = {'rifle', 'rifle_crouchload', 1, false, true, false, true, 1, true},
		},
	},
	--MG
	['MG'] = { 
		['shoot'] = {
			[false] = {'rifle', 'rifle_fire', 1, false, false, false, true, 1, false, 1.0, 0.25},
			[true] = {'rifle','rifle_crouchfire', 1, false, false, true, true, 1, true, 1.0, 0.2308},
		},
		--
		['reload'] = {
			[false] = {'rifle', 'rifle_load', 1, false, true, false, true, 1, true},
			[true] = {'rifle', 'rifle_crouchload', 1, false, true, false, true, 1, true},
		},
	},
	--
}

sounds = {
	--Handguns
	['Pistol'] = {
	
		['shot'] =  { 
			[1] = {
				{'files/sound/ptl/ptl_pistol/shot/PTL_PISTOL_SHOT.L.wav', volume = 1.0},
			},
			
			[2] = {
				{'files/sound/ptl/ptl_pistol/shot/PTL_PISTOL_SHOT.R.wav', volume = 1.0},
			},
		},
		
		['reload' ] = {
		
			[1] = {
			
				{'files/sound/ptl/ptl_heavy/reload/PTL_M1911_CLIPIN.wav', volume = 1.0},
			
			},
		
		},
	
		['handle'] = {
		
			['draw'] =  { 
			
				[1] = {
					{'files/sound/ptl/ptl_pistol/handle/pistolin.mp3', volume = 1 }, --o som da arma ao ser sacada: o nome do arquivo na pasta 'files/som/clicks' exemplo: 'revolver' ou som do próprio jogo exemplo: {'genrl', 136, 2}, multiplos som podem ser usados
				},
				
			},
			
			['holster'] = {
			
				[1] = {
					{'files/sound/ptl/ptl_pistol/handle/pistolout.mp3', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
			
		},
		
		['distant'] = {
		
			['near'] = {
			
				[1] = {
					{'files/sound/ptl/distant/PTL_PISTOL_MID_1.wav', volume = 1.0},
				},
				
				[2] = {
					{'files/sound/ptl/distant/PTL_PISTOL_MID_2.wav', volume = 1.0},
				},
			},
			
			['far'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_1.wav', volume = 1.0},
				},
				
				[2] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_2.wav', volume = 1.0},
				},
			},
			
			['indoor'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_INDOOR_2.wav', volume = 1.0},
				},
			},
		
		},
		
		['impact'] = {
		
			[1] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_01.wav', volume = 1.0},
			},
			
			[2] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_02.wav', volume = 1.0},
			},
			
			[3] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_04.wav', volume = 1.0},
			},
			
			[4] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_05.wav', volume = 1.0},
			},
			
			[5] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_06.wav', volume = 1.0},
			},
			
			[6] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_08.wav', volume = 1.0},
			},
			
			[7] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_09.wav', volume = 1.0},
			},
			
			[8] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_11.wav', volume = 1.0},
			},
		
		},
		
	},
	--
	['Heavy Revolver'] = {
	
		['shot'] =  { 
		
			[1] = {
				{'files/sound/ptl/ptl_revolver/shot/PTL_REVOLVER.wav', volume = 1.0},
				{'files/sound/ptl/ptl_revolver/shot/setup1.wav', volume = 1.0, delay = 500},
			},
			
			[2] = {
				{'files/sound/ptl/ptl_revolver/shot/PTL_REVOLVER.wav', volume = 1.0},
				{'files/sound/ptl/ptl_revolver/shot/setup1.wav', volume = 1.0, delay = 500},
			},
		},
		
		['reload' ] = {
		
			[1] = {
			
				{'files/sound/ptl/ptl_revolver/reload/reload1.wav', volume = 1.0},
				{'files/sound/ptl/ptl_revolver/reload/reload2.wav', volume = 1.0, delay = 250},
				{'files/sound/ptl/ptl_revolver/reload/reload3.wav', volume = 1.0, delay = 500},
				{'files/sound/ptl/ptl_revolver/reload/reload4.wav', volume = 1.0, delay = 750},
				{'files/sound/ptl/ptl_revolver/reload/reload5.wav', volume = 1.0, delay = 1000},
			
			},
		
		},
	
		['handle'] = {
		
			['draw'] =  { 
			
				[1] = {
					{'files/sound/ptl/ptl_revolver/handle/drawin.wav', volume = 1 }, --o som da arma ao ser sacada: o nome do arquivo na pasta 'files/som/clicks' exemplo: 'revolver' ou som do próprio jogo exemplo: {'genrl', 136, 2}, multiplos som podem ser usados
				},
				
			},
		
			['holster'] =  { 
			
				[1] = {
					{'files/sound/ptl/ptl_revolver/handle/drawout.wav', volume = 1 }, --o som da arma ao ser sacada: o nome do arquivo na pasta 'files/som/clicks' exemplo: 'revolver' ou som do próprio jogo exemplo: {'genrl', 136, 2}, multiplos som podem ser usados
				},
				
			},
			
			['dry'] = { 
			
				[1] = {
					{'files/sound/ptl/ptl_revolver/handle/dryfire.wav', volume = 1 }, --o som da arma ao ser sacada: o nome do arquivo na pasta 'files/som/clicks' exemplo: 'revolver' ou som do próprio jogo exemplo: {'genrl', 136, 2}, multiplos som podem ser usados
				},
				
			},
		},
		
		['distant'] = {
		
			['near'] = {
			
				[1] = {
					{'files/sound/ptl/distant/PTL_PISTOL_MID_1.wav', volume = 1.0},
				},
				
				[2] = {
					{'files/sound/ptl/distant/PTL_PISTOL_MID_2.wav', volume = 1.0},
				},
			},
			
			['far'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_1.wav', volume = 1.0},
				},
				
				[2] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_2.wav', volume = 1.0},
				},
			},
			
			['indoor'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_INDOOR_2.wav', volume = 1.0},
				},
			},
		
		},
		
		['impact'] = {
		
			[1] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_01.wav', volume = 1.0},
			},
			
			[2] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_02.wav', volume = 1.0},
			},
			
			[3] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_04.wav', volume = 1.0},
			},
			
			[4] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_05.wav', volume = 1.0},
			},
			
			[5] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_06.wav', volume = 1.0},
			},
			
			[6] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_08.wav', volume = 1.0},
			},
			
			[7] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_09.wav', volume = 1.0},
			},
			
			[8] = {
				{'files/sound/ptl/impact/PISTOL_IMPACT_11.wav', volume = 1.0},
			},
		
		},
		
	},
	--
	['Stun Gun'] = {
	
		['shot'] =  { 
		
			[1] = {
				{'files/sound/ptl/ptl_stun/shot/GTA5_GUN_STUN1.wav', volume = 1.0},
				{'files/sound/ptl/ptl_stun/shot/CHARGE.wav', volume = 1.0},
			},
			
		},
		
		['reload' ] = {
		
			[1] = {
			
				{'files/sound/ptl/ptl_navy_revolver/reload/reload1.wav', volume = 1.0},
				{'files/sound/ptl/ptl_navy_revolver/reload/reload2.wav', volume = 1.0, delay = 250},
				{'files/sound/ptl/ptl_navy_revolver/reload/reload3.wav', volume = 1.0, delay = 500},
				{'files/sound/ptl/ptl_navy_revolver/reload/reload4.wav', volume = 1.0, delay = 750},
				{'files/sound/ptl/ptl_navy_revolver/reload/reload5.wav', volume = 1.0, delay = 1000},
			
			},
		
		},
	
		['handle'] = {
		
			['draw'] =  { 
			
				[1] = {
					{'files/sound/ptl/ptl_pistol/handle/pistolin.mp3', volume = 1 }, --o som da arma ao ser sacada: o nome do arquivo na pasta 'files/som/clicks' exemplo: 'revolver' ou som do próprio jogo exemplo: {'genrl', 136, 2}, multiplos som podem ser usados
				},
				
			},
			
			['holster'] = {
			
				[1] = {
					{'files/sound/ptl/ptl_pistol/handle/pistolout.mp3', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
			
		},
		
		['distant'] = {
		
			['near'] = {
			
				[1] = {
					{'files/sound/ptl/distant/PTL_PISTOL_MID_1.wav', volume = 1.0},
				},
				
				[2] = {
					{'files/sound/ptl/distant/PTL_PISTOL_MID_2.wav', volume = 1.0},
				},
			},
			
			['far'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_1.wav', volume = 1.0},
				},
				
				[2] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_2.wav', volume = 1.0},
				},
			},
			
			['indoor'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_INDOOR_2.wav', volume = 1.0},
				},
			},
		
		},
		
		['impact'] = {
		
			[1] = {
				{'files/sound/ptl/impact/PISTOL_STUN_IMPACT_A.wav', volume = 1.0},
			},
			
			[2] = {
				{'files/sound/ptl/impact/PISTOL_STUN_IMPACT_B.wav', volume = 1.0},
			},
		
		},
		
	},
	--
	--SMG
	['Combat PDW'] = {
	
		['shot'] =  { 
		
			[1] = {
				{'files/sound/smg/smg_micro/shot/SMG_MICRO_WIDE_FIRST.wav', volume = 1.0},
			},
			
			[2] = {
				{'files/sound/smg/smg_micro/shot/SMG_MICRO_WIDE_1.wav', volume = 1.0},
			},
			
			[3] = {
				{'files/sound/smg/smg_micro/shot/SMG_MICRO_WIDE_2.wav', volume = 1.0},
			},
			
			[4] = {
				{'files/sound/smg/smg_micro/shot/SMG_MICRO_WIDE_3.wav', volume = 1.0},
			},
			
			[5] = {
				{'files/sound/smg/smg_micro/shot/SMG_MICRO_WIDE_4.wav', volume = 1.0},
			},
			
		},
		
		['reload' ] = {
		
			[1] = {
			
				{'files/sound/smg/reload/SMG_ASSAULT_CHAMBER_PRT1.wav', volume = 1.0, },
				{'files/sound/smg/reload/SMG_ASSAULT_CHAMBER_PRT2.wav', volume = 1.0, delay = 500},
				{'files/sound/smg/reload/SMG_ASSAULT_CLIPIN_PRT1.wav', volume = 1.0, delay = 1000},
			
			},
		
		},
	
		['handle'] = {
		
			['draw'] =  { 
			
				[1] = {
					{'files/sound/smg/handle/smgin.mp3', volume = 1 }, --o som da arma ao ser sacada: o nome do arquivo na pasta 'files/som/clicks' exemplo: 'revolver' ou som do próprio jogo exemplo: {'genrl', 136, 2}, multiplos som podem ser usados
				},
				
			},
			
			['holster'] = {
			
				[1] = {
					{'files/sound/smg/handle/smgout.mp3', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
			
			['dry'] = { 
			
				[1] = {
					{'files/sound/smg/handle/smgdry.wav', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
		},
		
		['distant'] = {
		
			['near'] = {
			
				[1] = {
					{'files/sound/smg/distant/UZI_REPORT_A.wav', volume = 1.0},
				},
				
			},
			
			['far'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_1.wav', volume = 1.0},
				},
				
				[2] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_2.wav', volume = 1.0},
				},
			},
			
			['indoor'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_INDOOR_2.wav', volume = 1.0},
				},
			},
		
		},
		
		['impact'] = {
		
			[1] = {
				{'files/sound/smg/impact/SMG_IMPACT_01.wav', volume = 1.0},
			},
			
			[2] = {
				{'files/sound/smg/impact/SMG_IMPACT_03.wav', volume = 1.0},
			},
			
			[3] = {
				{'files/sound/smg/impact/SMG_IMPACT_04.wav', volume = 1.0},
			},
			
			[4] = {
				{'files/sound/smg/impact/SMG_IMPACT_06.wav', volume = 1.0},
			},
			
			[5] = {
				{'files/sound/smg/impact/SMG_IMPACT_08.wav', volume = 1.0},
			},
			
			[6] = {
				{'files/sound/smg/impact/SMG_IMPACT_12.wav', volume = 1.0},
			},
			
			[7] = {
				{'files/sound/smg/impact/SMG_IMPACT_14.wav', volume = 1.0},
			},
			
			[8] = {
				{'files/sound/smg/impact/SMG_IMPACT_15.wav', volume = 1.0},
			},
			
		},
		
	},
	--
	['Micro SMG'] = {
	
		['shot'] =  { 
		
			[1] = {
				{'files/sound/smg/smg_micro/shot/SMG_MICRO_LOW_FIRST.wav', volume = 1.0},
			},
			
			[2] = {
				{'files/sound/smg/smg_micro/shot/SMG_MICRO_LOW_1.mp3', volume = 1.0},
			},
			
			[3] = {
				{'files/sound/smg/smg_micro/shot/SMG_MICRO_LOW_2.mp3', volume = 1.0},
			},
			
			[4] = {
				{'files/sound/smg/smg_micro/shot/SMG_MICRO_LOW_3.mp3', volume = 1.0},
			},
			
			[5] = {
				{'files/sound/smg/smg_micro/shot/SMG_MICRO_LOW_4.mp3', volume = 1.0},
			},
		},
		
		['reload' ] = {
		
			[1] = {
			
				{'files/sound/smg/reload/SMG_ASSAULT_CHAMBER_PRT1.wav', volume = 1.0, },
				{'files/sound/smg/reload/SMG_ASSAULT_CHAMBER_PRT2.wav', volume = 1.0, delay = 500},
				{'files/sound/smg/reload/SMG_ASSAULT_CLIPIN_PRT1.wav', volume = 1.0, delay = 1000},
			
			},
		
		},
	
		['handle'] = {
		
			['draw'] =  { 
			
				[1] = {
					{'files/sound/smg/handle/smgin.mp3', volume = 1 }, --o som da arma ao ser sacada: o nome do arquivo na pasta 'files/som/clicks' exemplo: 'revolver' ou som do próprio jogo exemplo: {'genrl', 136, 2}, multiplos som podem ser usados
				},
				
			},
			
			['holster'] = {
			
				[1] = {
					{'files/sound/smg/handle/smgout.mp3', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
			
			['dry'] = { 
			
				[1] = {
					{'files/sound/smg/handle/smgdry.wav', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
		},
		
		['distant'] = {
		
			['near'] = {
			
				[1] = {
					{'files/sound/smg/distant/UZI_REPORT_A.wav', volume = 1.0},
				},
				
			},
			
			['far'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_1.wav', volume = 1.0},
				},
				
				[2] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_2.wav', volume = 1.0},
				},
			},
			
			['indoor'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_INDOOR_2.wav', volume = 1.0},
				},
			},
		
		},
		
		['impact'] = {
		
			[1] = {
				{'files/sound/smg/impact/SMG_IMPACT_01.wav', volume = 1.0},
			},
			
			[2] = {
				{'files/sound/smg/impact/SMG_IMPACT_03.wav', volume = 1.0},
			},
			
			[3] = {
				{'files/sound/smg/impact/SMG_IMPACT_04.wav', volume = 1.0},
			},
			
			[4] = {
				{'files/sound/smg/impact/SMG_IMPACT_06.wav', volume = 1.0},
			},
			
			[5] = {
				{'files/sound/smg/impact/SMG_IMPACT_08.wav', volume = 1.0},
			},
			
			[6] = {
				{'files/sound/smg/impact/SMG_IMPACT_12.wav', volume = 1.0},
			},
			
			[7] = {
				{'files/sound/smg/impact/SMG_IMPACT_14.wav', volume = 1.0},
			},
			
			[8] = {
				{'files/sound/smg/impact/SMG_IMPACT_15.wav', volume = 1.0},
			},
			
		},
		
	},
	--
	['Machine Pistol'] = {
	
		['shot'] =  { 
		
			[1] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_RPRT.mp3', volume = 1.0},
			},
			
		},
		
		['reload' ] = {
		
			[1] = {
			
				{'files/sound/smg/reload/SMG_ASSAULT_CHAMBER_PRT1.wav', volume = 1.0, },
				{'files/sound/smg/reload/SMG_ASSAULT_CHAMBER_PRT2.wav', volume = 1.0, delay = 500},
				{'files/sound/smg/reload/SMG_ASSAULT_CLIPIN_PRT1.wav', volume = 1.0, delay = 1000},
			
			},
		
		},
	
		['handle'] = {
		
			['draw'] =  { 
			
				[1] = {
					{'files/sound/smg/handle/smgin.mp3', volume = 1 }, --o som da arma ao ser sacada: o nome do arquivo na pasta 'files/som/clicks' exemplo: 'revolver' ou som do próprio jogo exemplo: {'genrl', 136, 2}, multiplos som podem ser usados
				},
				
			},
			
			['holster'] = {
			
				[1] = {
					{'files/sound/smg/handle/smgout.mp3', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
			
			['dry'] = { 
			
				[1] = {
					{'files/sound/smg/handle/smgdry.wav', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
		},
		
		['distant'] = {
		
			['near'] = {
			
				[1] = {
					{'files/sound/smg/distant/UZI_REPORT_A.wav', volume = 1.0},
				},
				
			},
			
			['far'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_1.wav', volume = 1.0},
				},
				
				[2] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_2.wav', volume = 1.0},
				},
			},
			
			['indoor'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_INDOOR_2.wav', volume = 1.0},
				},
			},
		
		},
		
		['impact'] = {
		
			[1] = {
				{'files/sound/smg/impact/SMG_IMPACT_01.wav', volume = 1.0},
			},
			
			[2] = {
				{'files/sound/smg/impact/SMG_IMPACT_03.wav', volume = 1.0},
			},
			
			[3] = {
				{'files/sound/smg/impact/SMG_IMPACT_04.wav', volume = 1.0},
			},
			
			[4] = {
				{'files/sound/smg/impact/SMG_IMPACT_06.wav', volume = 1.0},
			},
			
			[5] = {
				{'files/sound/smg/impact/SMG_IMPACT_08.wav', volume = 1.0},
			},
			
			[6] = {
				{'files/sound/smg/impact/SMG_IMPACT_12.wav', volume = 1.0},
			},
			
			[7] = {
				{'files/sound/smg/impact/SMG_IMPACT_14.wav', volume = 1.0},
			},
			
			[8] = {
				{'files/sound/smg/impact/SMG_IMPACT_15.wav', volume = 1.0},
			},
			
		},
		
	},
	--LMG
	['Compact Rifle'] = {
	
		['shot'] =  { 
		
			[1] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_WIDE_00_FIRST.wav', volume = 1.0},
			},
		
			[2] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_WIDE_01.L.wav', volume = 1.0},
			},
			
			[3] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_WIDE_02.L.wav', volume = 1.0},
			},
			
			[4] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_WIDE_03.L.wav', volume = 1.0},
			},
			
			[5] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_WIDE_04.L.wav', volume = 1.0},
			},
			
			[6] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_WIDE_05.L.wav', volume = 1.0},
			},
			
		},
		
		['reload' ] = {
		
			[1] = {
			
				{'files/sound/smg/reload/SMG_ASSAULT_CHAMBER_PRT1.wav', volume = 1.0, },
				{'files/sound/smg/reload/SMG_ASSAULT_CHAMBER_PRT2.wav', volume = 1.0, delay = 500},
				{'files/sound/smg/reload/SMG_ASSAULT_CLIPIN_PRT1.wav', volume = 1.0, delay = 1000},
			
			},
		
		},
	
		['handle'] = {
		
			['draw'] =  { 
			
				[1] = {
					{'files/sound/smg/handle/smgin.mp3', volume = 1 }, --o som da arma ao ser sacada: o nome do arquivo na pasta 'files/som/clicks' exemplo: 'revolver' ou som do próprio jogo exemplo: {'genrl', 136, 2}, multiplos som podem ser usados
				},
				
			},
			
			['holster'] = {
			
				[1] = {
					{'files/sound/smg/handle/smgout.mp3', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
			
			['dry'] = { 
			
				[1] = {
					{'files/sound/smg/handle/smgdry.wav', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
		},
		
		['distant'] = {
		
			['near'] = {
			
				[1] = {
					{'files/sound/smg/distant/UZI_REPORT_A.wav', volume = 1.0},
				},
				
			},
			
			['far'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_1.wav', volume = 1.0},
				},
				
				[2] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_2.wav', volume = 1.0},
				},
			},
			
			['indoor'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_INDOOR_2.wav', volume = 1.0},
				},
			},
		
		},
		
		['impact'] = {
		
			[1] = {
				{'files/sound/smg/impact/SMG_IMPACT_01.wav', volume = 1.0},
			},
			
			[2] = {
				{'files/sound/smg/impact/SMG_IMPACT_03.wav', volume = 1.0},
			},
			
			[3] = {
				{'files/sound/smg/impact/SMG_IMPACT_04.wav', volume = 1.0},
			},
			
			[4] = {
				{'files/sound/smg/impact/SMG_IMPACT_06.wav', volume = 1.0},
			},
			
			[5] = {
				{'files/sound/smg/impact/SMG_IMPACT_08.wav', volume = 1.0},
			},
			
			[6] = {
				{'files/sound/smg/impact/SMG_IMPACT_12.wav', volume = 1.0},
			},
			
			[7] = {
				{'files/sound/smg/impact/SMG_IMPACT_14.wav', volume = 1.0},
			},
			
			[8] = {
				{'files/sound/smg/impact/SMG_IMPACT_15.wav', volume = 1.0},
			},
			
		},
		
	},
	--
	['Special Carbine'] = {
	
		['shot'] =  { 
		
			[1] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_WIDE_00_FIRST.wav', volume = 1.0},
			},
		
			[2] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_WIDE_01.L.wav', volume = 1.0},
			},
			
			[3] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_WIDE_02.L.wav', volume = 1.0},
			},
			
			[4] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_WIDE_03.L.wav', volume = 1.0},
			},
			
			[5] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_WIDE_04.L.wav', volume = 1.0},
			},
			
			[6] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_WIDE_05.L.wav', volume = 1.0},
			},
			
		},
		
		['reload' ] = {
		
			[1] = {
			
				{'files/sound/smg/reload/SMG_ASSAULT_CHAMBER_PRT1.wav', volume = 1.0, },
				{'files/sound/smg/reload/SMG_ASSAULT_CHAMBER_PRT2.wav', volume = 1.0, delay = 500},
				{'files/sound/smg/reload/SMG_ASSAULT_CLIPIN_PRT1.wav', volume = 1.0, delay = 1000},
			
			},
		
		},
	
		['handle'] = {
		
			['draw'] =  { 
			
				[1] = {
					{'files/sound/smg/handle/smgin.mp3', volume = 1 }, --o som da arma ao ser sacada: o nome do arquivo na pasta 'files/som/clicks' exemplo: 'revolver' ou som do próprio jogo exemplo: {'genrl', 136, 2}, multiplos som podem ser usados
				},
				
			},
			
			['holster'] = {
			
				[1] = {
					{'files/sound/smg/handle/smgout.mp3', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
			
			['dry'] = { 
			
				[1] = {
					{'files/sound/smg/handle/smgdry.wav', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
		},
		
		['distant'] = {
		
			['near'] = {
			
				[1] = {
					{'files/sound/smg/distant/UZI_REPORT_A.wav', volume = 1.0},
				},
				
			},
			
			['far'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_1.wav', volume = 1.0},
				},
				
				[2] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_2.wav', volume = 1.0},
				},
			},
			
			['indoor'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_INDOOR_2.wav', volume = 1.0},
				},
			},
		
		},
		
		['impact'] = {
		
			[1] = {
				{'files/sound/smg/impact/SMG_IMPACT_01.wav', volume = 1.0},
			},
			
			[2] = {
				{'files/sound/smg/impact/SMG_IMPACT_03.wav', volume = 1.0},
			},
			
			[3] = {
				{'files/sound/smg/impact/SMG_IMPACT_04.wav', volume = 1.0},
			},
			
			[4] = {
				{'files/sound/smg/impact/SMG_IMPACT_06.wav', volume = 1.0},
			},
			
			[5] = {
				{'files/sound/smg/impact/SMG_IMPACT_08.wav', volume = 1.0},
			},
			
			[6] = {
				{'files/sound/smg/impact/SMG_IMPACT_12.wav', volume = 1.0},
			},
			
			[7] = {
				{'files/sound/smg/impact/SMG_IMPACT_14.wav', volume = 1.0},
			},
			
			[8] = {
				{'files/sound/smg/impact/SMG_IMPACT_15.wav', volume = 1.0},
			},
			
		},
		
	},
	--
	['MG'] = {
	
		['shot'] =  { 
		
			[1] = {
				{'files/sound/smg/smg_smg/shot/SMG_SMG_PLYR_RPRT.mp3', volume = 1.0},
			},
			
		},
		
		['reload' ] = {
		
			[1] = {
			
				{'files/sound/smg/reload/SMG_ASSAULT_CHAMBER_PRT1.wav', volume = 1.0, },
				{'files/sound/smg/reload/SMG_ASSAULT_CHAMBER_PRT2.wav', volume = 1.0, delay = 500},
				{'files/sound/smg/reload/SMG_ASSAULT_CLIPIN_PRT1.wav', volume = 1.0, delay = 1000},
			
			},
		
		},
	
		['handle'] = {
		
			['draw'] =  { 
			
				[1] = {
					{'files/sound/smg/handle/smgin.mp3', volume = 1 }, --o som da arma ao ser sacada: o nome do arquivo na pasta 'files/som/clicks' exemplo: 'revolver' ou som do próprio jogo exemplo: {'genrl', 136, 2}, multiplos som podem ser usados
				},
				
			},
			
			['holster'] = {
			
				[1] = {
					{'files/sound/smg/handle/smgout.mp3', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
			
			['dry'] = { 
			
				[1] = {
					{'files/sound/smg/handle/smgdry.wav', volume = 1 }, --o som da arma ao ser guardada
				},
				
			},
		},
		
		['distant'] = {
		
			['near'] = {
			
				[1] = {
					{'files/sound/smg/distant/UZI_REPORT_A.wav', volume = 1.0},
				},
				
			},
			
			['far'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_1.wav', volume = 1.0},
				},
				
				[2] = {
					{'files/sound/ptl/distant/PTL_PISTOL_FAR_2.wav', volume = 1.0},
				},
			},
			
			['indoor'] = {
				[1] = {
					{'files/sound/ptl/distant/PTL_INDOOR_2.wav', volume = 1.0},
				},
			},
		
		},
		
		['impact'] = {
		
			[1] = {
				{'files/sound/smg/impact/SMG_IMPACT_01.wav', volume = 1.0},
			},
			
			[2] = {
				{'files/sound/smg/impact/SMG_IMPACT_03.wav', volume = 1.0},
			},
			
			[3] = {
				{'files/sound/smg/impact/SMG_IMPACT_04.wav', volume = 1.0},
			},
			
			[4] = {
				{'files/sound/smg/impact/SMG_IMPACT_06.wav', volume = 1.0},
			},
			
			[5] = {
				{'files/sound/smg/impact/SMG_IMPACT_08.wav', volume = 1.0},
			},
			
			[6] = {
				{'files/sound/smg/impact/SMG_IMPACT_12.wav', volume = 1.0},
			},
			
			[7] = {
				{'files/sound/smg/impact/SMG_IMPACT_14.wav', volume = 1.0},
			},
			
			[8] = {
				{'files/sound/smg/impact/SMG_IMPACT_15.wav', volume = 1.0},
			},
			
		},
		
	},
	
}

crosshair = {
	--
	['Heavy Revolver'] = 'files/model/crosshair/default/pistol.png',
	--
	['MG'] = 'files/model/crosshair/scope/mg.png',
	--
}

headshot = { -- Sistema de headshot
dano = 100, -- quantidade de dano que o headshot tira, 100 causa morte instantanea
tremer = sim, -- se habilitado esta opção faz a camera do alvo tremer ao levar um headshot (true = ativado, false = desativado)
duracao = 2, -- tempo de duração do efeito de tela tremendo (segundos)
armas = {8,24,25,26,27,30,31,33, 'Heavy Revolver', 'Marksman Pistol'}, -- armas que farão perder a cabeça
}

events = {
	
	aim = 'WeaponAim',
	
	damage = {
		player = 'WeaponPlayerDamage',
		ped = 'WeaponPedDamage',
	},
	
	fire = 'WeaponFired',
	
	change = 'WeaponStateChange',

	reload = 'weaponReload',
}

attachment = {


	--["right_hand"] = {24, 0,0,0, 0,0,-0.275},
	--["left_hand"] = {34, 0.05,0.05,0, 180,30,-30},
	
	["right_hand"] = {24,0,0,0, 0,0,0},
	["left_hand"] = {34,-0.04, 0.0525, 0.04, 6, 3, 0.2},
	
	offsets = {24, 0,0,0, 0,0,0}, --bone id, x,y,z, rx,ry,rz

	attach = function (...)
	return exports.pAttach:attach (...)
	end,
	
	detach = function (...)
	return exports.pAttach:detach (...)
	end,
	
	
}


	dadosShader = [[
		texture tex;
		technique replace {
			pass P0 {
				Texture[0] = tex;
			}
		}
	]]
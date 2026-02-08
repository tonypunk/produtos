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

armas cabolosas do gta v como Railgun, Widowmaker, EMP Gun, Atomizer e outros


Flashlight

Jerry Can

Grenade Throw

Remote sniper

]]

-------------------------------------
-----------Configurações-------------

properties = {
	--Melee
	['Knife'] = { 
		--['file'] = 'files/weapons/melee/knife', --caminho do arquivo ou ID do objeto
		['damage'] = 15,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
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
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 4} },
	},
	--
	['Nightstick'] = { 
		--['file'] = 'files/weapons/melee/nightstick', --caminho do arquivo ou ID do objeto
		['damage'] = 10,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 850, --espaço de tempo entre os tiros
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
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 3} },
	},
	--
	['Hammer'] = { 
		--['file'] = 'files/weapons/melee/hammer', --caminho do arquivo ou ID do objeto
		['damage'] = 10,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 850, --espaço de tempo entre os tiros
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
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 12} },
	},
	--
	['Baseball Bat'] = { 
		--['file'] = 'files/weapons/melee/baseball_bat', --caminho do arquivo ou ID do objeto
		['damage'] = 20,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 900, --espaço de tempo entre os tiros
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
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 5} },
	},
	--
	['Crowbar'] = { 
		--['file'] = 'files/weapons/melee/crowbar', --caminho do arquivo ou ID do objeto
		['damage'] = 10,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 850, --espaço de tempo entre os tiros
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
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 3} },
	},
	--
	['Golf Club'] = { 
		--['file'] = 'files/weapons/melee/golf_club', --caminho do arquivo ou ID do objeto
		['damage'] = 20,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 900, --espaço de tempo entre os tiros
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
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 2} },
	},
	--
	['Broken Bottle'] = { 
		--['file'] = 'files/weapons/melee/broken_bottle', --caminho do arquivo ou ID do objeto
		['damage'] = 20,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 850, --espaço de tempo entre os tiros
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
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 4} },
	},
	--
	['Antique Cavalry Dagger'] = { 
		--['file'] = 'files/weapons/melee/ac_dagger', --caminho do arquivo ou ID do objeto
		['damage'] = 20,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
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
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 4} },
	},
	--
	['Hatchet'] = { 
		--['file'] = 'files/weapons/melee/hatchet', --caminho do arquivo ou ID do objeto
		['damage'] = 15,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 850, --espaço de tempo entre os tiros
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
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 12} },
	},
	--
	['Knuckle Dusters'] = { 
		--['file'] = 'files/weapons/melee/knuckle_dusters', --caminho do arquivo ou ID do objeto
		['damage'] = 10,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
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
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 1} },
	},
	--
	['Machete'] = { 
		--['file'] = 'files/weapons/melee/machete', --caminho do arquivo ou ID do objeto
		['damage'] = 15,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 850, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 4} },
	},
	--
	['Flashlight'] = { 
		--['file'] = 'files/weapons/melee/flashlight', --caminho do arquivo ou ID do objeto
		['damage'] = 10,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 850, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 11} },
	},
	--
	['Switchblade'] = { 
		--['file'] = 'files/weapons/melee/switchblade', --caminho do arquivo ou ID do objeto
		['damage'] = 15,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 850, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 4} },
	},
	--
	['Pool Cue'] = { 
		--['file'] = 'files/weapons/melee/pool_cue', --caminho do arquivo ou ID do objeto
		['damage'] = 20,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 900, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 850, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 3} },
	},
	--
	['Pipe Wrench'] = { 
		--['file'] = 'files/weapons/melee/pipe_wrench', --caminho do arquivo ou ID do objeto
		['damage'] = 10,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 850, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 850, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 3} },
	},
	--
	['Battle Axe'] = { 
		--['file'] = 'files/weapons/melee/battle_axe', --caminho do arquivo ou ID do objeto
		['damage'] = 15,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 850, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 850, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 3} },
	},
	--
	['Stone Hatchet'] = { 
		--['file'] = 'files/weapons/melee/stone_hatchet', --caminho do arquivo ou ID do objeto
		['damage'] = 30,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 850, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 850, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 3} },
	},
	--
	['Candy Cane'] = { 
		--['file'] = 'files/weapons/melee/candy_cane', --caminho do arquivo ou ID do objeto
		['damage'] = 30,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 850, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 850, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 12} },
	},
	--
	['Stun Rod'] = { 
		--['file'] = 'files/weapons/melee/stun_rod', --caminho do arquivo ou ID do objeto
		['damage'] = 30,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 850, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 850, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 3} },
	},
	--
	--Handguns
	['Ceramic Pistol'] = { 
		--['file'] = 'files/weapons/ptl/ceramic pistol', --caminho do arquivo ou ID do objeto
		['damage'] = 32,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 440, --espaço de tempo entre os tiros
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
		['bullethole'] = true, --buraco de bala true ou tamanho
		['bleed'] = { chance = 100, duration = 60000, interval = 5000, damage = 1, amount = 10, squish = true, pool = true, foot = true },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 23, skill = 1000},  },
	},
	--
	['Pistol'] = { 
		--['file'] = 'files/weapons/ptl/pistol', --caminho do arquivo ou ID do objeto
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
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 23, skill = 1000},  },
		['upgrades'] = {
		
			[1] = {
				['name'] = 'Default Clip',
				['stat'] = 'clip',
				['value'] = 12,
				['price'] = 100,
				['tex'] = {
					['name'] = 'pmagYCG',
					--['file'] = nil,
				},
			},
				
			[2] = {
				['name'] = 'Extended Clip',
				['stat'] = 'clip',
				['value'] = 24,
				['price'] = 100,
				['tex'] = {
					['name'] = 'pmagYCG',
					--['file'] = 'files/upgrades/ptl/pistol/pmagYCG.png'
				},
			},
			
			[3] = {
				['name'] = 'Flashlight',
				['stat'] = 'flashlight',
				['value'] = true,
				['price'] = 100,
				['tex'] = {
					['name'] = 'w_at_pi_flsh',
					--['file'] = 'files/upgrades/ptl/pistol/w_at_pi_flsh.png'
				},
			},
			
			[4] = {
				['name'] = 'Supressor',
				['stat'] = 'suppressor',
				['value'] = true,
				['price'] = 100,
				['tex'] = {
					['name'] = 'w_at_pi_supp',
					--['file'] = 'files/upgrades/ptl/pistol/w_at_pi_supp.png'
				},
			},
			
		},
	},
	--
	['Pistol Mk II'] = { 
		--['file'] = 'files/weapons/ptl/pistol mk ii', --caminho do arquivo ou ID do objeto
		['damage'] = 38,
		['accuracy'] = 0.40, --0.0 a 1.0
		['rate'] = 400, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 50,
		['target_range'] = 50,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 23, skill = 1000},  },
	},
	--
	['SNS Pistol'] = {
		--['file'] = 'files/weapons/ptl/sns pistol', --caminho do arquivo ou ID do objeto
		['damage'] = 30,
		['accuracy'] = 0.40, --0.0 a 1.0
		['rate'] = 400, --espaço de tempo entre os tiros
		['clip'] = 6, --quantidade de balas do pente
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
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 23, skill = 1000},  },
	},
	--
	['SNS Pistol Mk II'] = { 
		--['file'] = 'files/weapons/ptl/sns pistol mk ii', --caminho do arquivo ou ID do objeto
		['damage'] = 30,
		['accuracy'] = 0.40, --0.0 a 1.0
		['rate'] = 400, --espaço de tempo entre os tiros
		['clip'] = 6, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 50,
		['target_range'] = 50,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 23, skill = 1000},  },
	},
	--
	['AP Pistol'] = { 
		--['file'] = 'files/weapons/ptl/ap pistol', --caminho do arquivo ou ID do objeto
		['damage'] = 26,
		['accuracy'] = 0.40, --0.0 a 1.0
		['rate'] = 200, --espaço de tempo entre os tiros
		['clip'] = 18, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 70,
		['target_range'] = 70,
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
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 23, skill = 1000},  },
	},
	--
	['Double-Action Revolver'] = { 
		--['file'] = 'files/weapons/ptl/double action revolver', --caminho do arquivo ou ID do objeto
		['damage'] = 70,
		['accuracy'] = 0.65, --0.0 a 1.0
		['rate'] = 650, --espaço de tempo entre os tiros
		['clip'] = 6, --quantidade de balas do pente
		['reload'] = 650, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 25, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 24, skill = 1000},  },
	},
	--
	['Heavy Revolver'] = {
		--['file'] = 'files/weapons/ptl/heavy revolver', --caminho do arquivo ou ID do objeto
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
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 24, skill = 1000}, },
		['attachment'] = {24, 0,0,0, 0,0,0},
	},
	--
	['Heavy Revolver Mk II'] = { 
		--['file'] = 'files/weapons/ptl/heavy revolver mk ii', --caminho do arquivo ou ID do objeto
		['damage'] = 75,
		['accuracy'] = 0.65, --0.0 a 1.0
		['rate'] = 700, --espaço de tempo entre os tiros
		['clip'] = 6, --quantidade de balas
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 70,
		['target_range'] = 70,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 24, skill = 1000},  },
	},
	--
	['Heavy Pistol'] = { 
		--['file'] = 'files/weapons/ptl/heavy pistol', --caminho do arquivo ou ID do objeto
		['damage'] = 40,
		['accuracy'] = 0.5, --0.0 a 1.0
		['rate'] = 600, --espaço de tempo entre os tiros
		['clip'] = 18, --quantidade de balas
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
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 24, skill = 1000},  },
	},
	--
	['Marksman Pistol'] = { 
		--['file'] = 'files/weapons/ptl/marksman pistol', --caminho do arquivo ou ID do objeto
		['damage'] = 80,
		['accuracy'] = 0.30, --0.0 a 1.0
		['rate'] = 850, --espaço de tempo entre os tiros
		['clip'] = 1, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 70,
		['target_range'] = 70,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, },
	},
	--
	['Navy Revolver'] = { 
		--['file'] = 'files/weapons/ptl/navy revolver', --caminho do arquivo ou ID do objeto
		['damage'] = 70,
		['accuracy'] = 0.60, --0.0 a 1.0
		['rate'] = 750, --espaço de tempo entre os tiros
		['clip'] = 6, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 70,
		['target_range'] = 70,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 25, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 24, skill = 1000},  },
	},
	
	['Pistol .50'] = { 
		--['file'] = 'files/weapons/ptl/pistol 50', --caminho do arquivo ou ID do objeto
		['damage'] = 51,
		['accuracy'] = 0.55, --0.0 a 1.0
		['rate'] = 600, --espaço de tempo entre os tiros
		['clip'] = 9, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 70,
		['target_range'] = 70,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 25, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 24, skill = 1000},  },
	},
	--
	['Vintage Pistol'] = { 
		--['file'] = 'files/weapons/ptl/vintage pistol', --caminho do arquivo ou ID do objeto
		['damage'] = 35,
		['accuracy'] = 0.4, --0.0 a 1.0
		['rate'] = 600, --espaço de tempo entre os tiros
		['clip'] = 7, --quantidade de balas
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 50,
		['target_range'] = 50,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
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
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 23, skill = 1000},  },
	},
	--
	['Combat Pistol'] = { 
		--['file'] = 'files/weapons/ptl/combat pistol', --caminho do arquivo ou ID do objeto
		['damage'] = 27,
		['accuracy'] = 0.5, --0.0 a 1.0
		['rate'] = 600, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 60,
		['target_range'] = 60,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
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
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 24, skill = 1000},  },
	},
	--
	['Perico Pistol'] = { 
		--['file'] = 'files/weapons/ptl/perico pistol', --caminho do arquivo ou ID do objeto
		['damage'] = 80,
		['accuracy'] = 0.3, --0.0 a 1.0
		['rate'] = 850, --espaço de tempo entre os tiros
		['clip'] = 2, --quantidade de balas
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 70,
		['target_range'] = 70,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
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
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 23, skill = 1000},  },
	},
	--
	['VM 29 Pistol'] = { 
		--['file'] = 'files/weapons/ptl/vm 29 pistol', --caminho do arquivo ou ID do objeto
		['damage'] = 36,
		['accuracy'] = 0.5, --0.0 a 1.0
		['rate'] = 300, --espaço de tempo entre os tiros
		['clip'] = 20, --quantidade de balas
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 70,
		['target_range'] = 70,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
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
		['crosshair'] = 'files/model/crosshair/default/pistol.png',
		['handle'] = { [1] = { base = 23, skill = 1000},  },
	},
	--SMG
	['Assault SMG'] = { 
		--['file'] = 'files/weapons/smg/assault smg', --caminho do arquivo ou ID do objeto
		['damage'] = 23,
		['accuracy'] = 0.45, --0.0 a 1.0
		['rate'] = 225, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 80,
		['target_range'] = 80,
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
		['crosshair'] = 'files/model/crosshair/default/smg.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Combat PDW'] = { 
		--['file'] = 'files/weapons/smg/combat pdw', --caminho do arquivo ou ID do objeto
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
		['crosshair'] = 'files/model/crosshair/default/smg.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 29, skill = 1000} },
	},
	--
	['Micro SMG'] = { 
		--['file'] = 'files/weapons/smg/micro smg', --caminho do arquivo ou ID do objeto
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
		['crosshair'] = 'files/model/crosshair/default/smg.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 29, skill = 1000} },
	},
	--
	['Machine Pistol'] = { 
		--['file'] = 'files/weapons/smg/machine pistol', --caminho do arquivo ou ID do objeto
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
		['crosshair'] = 'files/model/crosshair/default/smg.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 29, skill = 1000} },
	},
	--
	['Mini SMG'] = { 
		--['file'] = 'files/weapons/smg/mini smg', --caminho do arquivo ou ID do objeto
		['damage'] = 22,
		['accuracy'] = 0.33, --0.0 a 1.0
		['rate'] = 80, --espaço de tempo entre os tiros
		['clip'] = 20, --quantidade de balas
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
		['crosshair'] = 'files/model/crosshair/default/smg.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 29, skill = 1000} },
	},
	--
	['SMG'] = { 
		--['file'] = 'files/weapons/smg/smg', --caminho do arquivo ou ID do objeto
		['damage'] = 22,
		['accuracy'] = 0.40, --0.0 a 1.0
		['rate'] = 225, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 70,
		['target_range'] = 70,
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
		['crosshair'] = 'files/model/crosshair/default/smg.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 29, skill = 1000} },
	},
	--
	['SMG Mk II'] = { 
		--['file'] = 'files/weapons/smg/smg mk ii', --caminho do arquivo ou ID do objeto
		['damage'] = 22,
		['accuracy'] = 0.40, --0.0 a 1.0
		['rate'] = 225, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 70,
		['target_range'] = 70,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.2, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/smg.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 29, skill = 1000} },
	},
	--
	['Tactical SMG'] = { 
		--['file'] = 'files/weapons/smg/tactical smg', --caminho do arquivo ou ID do objeto
		['damage'] = 28,
		['accuracy'] = 0.35, --0.0 a 1.0
		['rate'] = 100, --espaço de tempo entre os tiros
		['clip'] = 33, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 60,
		['target_range'] = 60,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.2, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/smg.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 29, skill = 1000} },
	},
	--LMG
	['Gusenberg Sweeper'] = { 
		--['file'] = 'files/weapons/lmg/gusenberg sweeper', --caminho do arquivo ou ID do objeto
		['damage'] = 34,
		['accuracy'] = 0.38, --0.0 a 1.0
		['rate'] = 175, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 112,
		['target_range'] = 112,
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
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Assault MG'] = { 
		--['file'] = 'files/weapons/lmg/assault mg', --caminho do arquivo ou ID do objeto
		['damage'] = 60,
		['accuracy'] = 0.5, --0.0 a 1.0
		['rate'] = 175, --espaço de tempo entre os tiros
		['clip'] = 50, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 140,
		['target_range'] = 140,
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
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Assault Rifle'] = { 
		--['file'] = 'files/weapons/lmg/assault rifle', --caminho do arquivo ou ID do objeto
		['damage'] = 30,
		['accuracy'] = 0.45, --0.0 a 1.0
		['rate'] = 200, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 90,
		['target_range'] = 90,
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
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Assault Rifle Mk II'] = { 
		--['file'] = 'files/weapons/lmg/assault rifle mk ii', --caminho do arquivo ou ID do objeto
		['damage'] = 33,
		['accuracy'] = 0.45, --0.0 a 1.0
		['rate'] = 200, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 90,
		['target_range'] = 90,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.4, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Carbine Rifle'] = { 
		--['file'] = 'files/weapons/lmg/carbine rifle', --caminho do arquivo ou ID do objeto
		['damage'] = 32,
		['accuracy'] = 0.55, --0.0 a 1.0
		['rate'] = 175, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 90,
		['target_range'] = 90,
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
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Carbine Rifle Mk II'] = { 
		--['file'] = 'files/weapons/lmg/carbine rifle mk ii', --caminho do arquivo ou ID do objeto
		['damage'] = 36,
		['accuracy'] = 0.45, --0.0 a 1.0
		['rate'] = 175, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 90,
		['target_range'] = 90,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.4, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Bullpup Rifle'] = { 
		--['file'] = 'files/weapons/lmg/bullpup rifle', --caminho do arquivo ou ID do objeto
		['damage'] = 32,
		['accuracy'] = 0.45, --0.0 a 1.0
		['rate'] = 150, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 90,
		['target_range'] = 90,
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
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Bullpup Rifle Mk II'] = { 
		--['file'] = 'files/weapons/lmg/bullpup rifle mk ii', --caminho do arquivo ou ID do objeto
		['damage'] = 35,
		['accuracy'] = 0.45, --0.0 a 1.0
		['rate'] = 140, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 90,
		['target_range'] = 90,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.4, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Advanced Rifle'] = {
		--['file'] = 'files/weapons/lmg/advanced rifle', --caminho do arquivo ou ID do objeto
		['damage'] = 34,
		['accuracy'] = 0.50, --0.0 a 1.0
		['rate'] = 150, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 90,
		['target_range'] = 90,
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
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Compact Rifle'] = { 
		--['file'] = 'files/weapons/lmg/compact rifle', --caminho do arquivo ou ID do objeto
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
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 29, skill = 1000} },
	},
	--
	['Special Carbine'] = { 
		--['file'] = 'files/weapons/lmg/special carbine', --caminho do arquivo ou ID do objeto
		['damage'] = 34,
		['accuracy'] = 0.55, --0.0 a 1.0
		['rate'] = 175, --espaço de tempo entre os tiros
		['clip'] = 30, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 80,
		['target_range'] = 80,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 1.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Special Carbine Mk II'] = { 
		--['file'] = 'files/weapons/lmg/special carbine mk ii', --caminho do arquivo ou ID do objeto
		['damage'] = 34,
		['accuracy'] = 0.55, --0.0 a 1.0
		['rate'] = 175, --espaço de tempo entre os tiros
		['clip'] = 40, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 80,
		['target_range'] = 80,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.4, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Heavy Rifle'] = { 
		--['file'] = 'files/weapons/lmg/heavy rifle', --caminho do arquivo ou ID do objeto
		['damage'] = 40,
		['accuracy'] = 0.40, --0.0 a 1.0
		['rate'] = 250, --espaço de tempo entre os tiros
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
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.25, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Service Carbine'] = { 
		--['file'] = 'files/weapons/lmg/service carbine', --caminho do arquivo ou ID do objeto
		['damage'] = 39,
		['accuracy'] = 0.55, --0.0 a 1.0
		['rate'] = 185, --espaço de tempo entre os tiros
		['clip'] = 40, --quantidade de balas
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
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Battle Rifle'] = { 
		--['file'] = 'files/weapons/lmg/battle rifle', --caminho do arquivo ou ID do objeto
		['damage'] = 41,
		['accuracy'] = 0.42, --0.0 a 1.0
		['rate'] = 240, --espaço de tempo entre os tiros
		['clip'] = 40, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 90,
		['target_range'] = 90,
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
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Military Rifle'] = { 
		--['file'] = 'files/weapons/lmg/military rifle', --caminho do arquivo ou ID do objeto
		['damage'] = 41,
		['accuracy'] = 0.42, --0.0 a 1.0
		['rate'] = 240, --espaço de tempo entre os tiros
		['clip'] = 40, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 90,
		['target_range'] = 90,
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
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--Shotguns
	['Combat Shotgun'] = { 
		--['file'] = 'files/weapons/sht/combat shotgun', --caminho do arquivo ou ID do objeto
		['damage'] = 8.55,
		['accuracy'] = 0.25, --0.0 a 1.0
		['rate'] = 500, --espaço de tempo entre os tiros
		['clip'] = 10, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 30,
		['target_range'] = 30,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 9, --fragments number
		['force'] = 0.5, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 2, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/shotgun.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Pump Shotgun'] = { 
		--['file'] = 'files/weapons/sht/pump shotgun', --caminho do arquivo ou ID do objeto
		['damage'] = 5.58,
		['accuracy'] = 0.3, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
		['clip'] = 8, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.5, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 6, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/shotgun.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Pump Shotgun Mk II'] = { 
		--['file'] = 'files/weapons/sht/pump shotgun mk ii', --caminho do arquivo ou ID do objeto
		['damage'] = 5.58,
		['accuracy'] = 0.30, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
		['clip'] = 8, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 6, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/shotgun.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Bullpup Shotgun'] = { 
		--['file'] = 'files/weapons/sht/bullpup shotgun', --caminho do arquivo ou ID do objeto
		['damage'] = 5.58,
		['accuracy'] = 0.30, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
		['clip'] = 14, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 7, --fragments number
		['force'] = 0.5, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/shotgun.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Assault Shotgun'] = { 
		--['file'] = 'files/weapons/sht/assault shotgun', --caminho do arquivo ou ID do objeto
		['damage'] = 6.41,
		['accuracy'] = 0.25, --0.0 a 1.0
		['rate'] = 500, --espaço de tempo entre os tiros
		['clip'] = 8, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 30,
		['target_range'] = 30,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 9, --fragments number
		['force'] = 0.5, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 2, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/shotgun.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Double Barrel Shotgun'] = {
		--['file'] = 'files/weapons/sht/double barrel shotgun', --caminho do arquivo ou ID do objeto
		['damage'] = 8.16,
		['accuracy'] = 0.15, --0.0 a 1.0
		['rate'] = 750, --espaço de tempo entre os tiros
		['clip'] = 2, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 20,
		['target_range'] = 20,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 7, --fragments number
		['force'] = 0.25, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/shotgun.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 29, skill = 1000} },
	},
	--
	['Sawed-Off Shotgun'] = {
		--['file'] = 'files/weapons/sht/sawed-off shotgun', --caminho do arquivo ou ID do objeto
		['damage'] = 8,
		['accuracy'] = 0.20, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
		['clip'] = 10, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 30,
		['target_range'] = 30,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.25, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 6, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/shotgun.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 29, skill = 1000} },
	},
	--
	['Heavy Shotgun'] = { 
		--['file'] = 'files/weapons/sht/heavy shotgun', --caminho do arquivo ou ID do objeto
		['damage'] = 7.08,
		['accuracy'] = 0.30, --0.0 a 1.0
		['rate'] = 650, --espaço de tempo entre os tiros
		['clip'] = 6, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 50,
		['target_range'] = 50,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 9, --fragments number
		['force'] = 0.5, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 2, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/shotgun.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Musket'] = { 
		--['file'] = 'files/weapons/sht/musket', --caminho do arquivo ou ID do objeto
		['damage'] = 8.08,
		['accuracy'] = 0.65, --0.0 a 1.0
		['rate'] = 900, --espaço de tempo entre os tiros
		['clip'] = 1, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 170,
		['target_range'] = 170,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.5, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 6, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/shotgun.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Sweeper Shotgun'] = { 
		--['file'] = 'files/weapons/sht/sweeper shotgun', --caminho do arquivo ou ID do objeto
		['damage'] = 5.83,
		['accuracy'] = 0.22, --0.0 a 1.0
		['rate'] = 550, --espaço de tempo entre os tiros
		['clip'] = 10, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 40,
		['target_range'] = 40,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.5, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 6, --buraco de bala true ou tamanho
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/shotgun.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 29, skill = 1000} },
	},
	--Rifles
	['Sniper Rifle'] = { 
		--['file'] = 'files/weapons/snpr/sniper rifle', --caminho do arquivo ou ID do objeto
		['damage'] = 96,
		['accuracy'] = 0.70, --0.0 a 1.0
		['rate'] = 750, --espaço de tempo entre os tiros
		['clip'] = 10, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 190,
		['target_range'] = 190,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.8, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['handle'] = { [1] = { base = 33, skill = 1000}, [2] = { base = 34, skill = 1000} },
	},
	--
	['Heavy Sniper'] = { 
		--['file'] = 'files/weapons/snpr/heavy sniper', --caminho do arquivo ou ID do objeto
		['damage'] = 98,
		['accuracy'] = 0.90, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
		['clip'] = 6, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 200,
		['target_range'] = 200,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.8, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 6, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['scope'] = 'files/model/crosshair/scope/heavy sniper.png',
		['handle'] = { [1] = { base = 33, skill = 1000}, [2] = { base = 34, skill = 1000} },
	},
	--
	['Heavy Sniper Mk II'] = { 
		--['file'] = 'files/weapons/snpr/heavy sniper mk ii', --caminho do arquivo ou ID do objeto
		['damage'] = 98,
		['accuracy'] = 0.90, --0.0 a 1.0
		['rate'] = 800, --espaço de tempo entre os tiros
		['clip'] = 5, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 200,
		['target_range'] = 200,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.8, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 6, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['scope'] = 'files/model/crosshair/scope/heavy sniper.png',
		['handle'] = { [1] = { base = 33, skill = 1000}, [2] = { base = 34, skill = 1000} },
	},
	--
	['Marksman Rifle'] = { 
		--['file'] = 'files/weapons/snpr/marksman rifle', --caminho do arquivo ou ID do objeto
		['damage'] = 70,
		['accuracy'] = 0.80, --0.0 a 1.0
		['rate'] = 600, --espaço de tempo entre os tiros
		['clip'] = 8, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 180,
		['target_range'] = 180,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.8, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['scope'] = 'files/model/crosshair/scope/marksman rifle.png',
		['handle'] = { [1] = { base = 33, skill = 1000}, [2] = { base = 34, skill = 1000} },
	},
	--
	['Marksman Rifle Mk II'] = { 
		--['file'] = 'files/weapons/snpr/marksman rifle mk ii', --caminho do arquivo ou ID do objeto
		['damage'] = 70,
		['accuracy'] = 0.80, --0.0 a 1.0
		['rate'] = 600, --espaço de tempo entre os tiros
		['clip'] = 8, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 180,
		['target_range'] = 180,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.8, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['scope'] = 'files/model/crosshair/scope/marksman rifle.png',
		['handle'] = { [1] = { base = 33, skill = 1000}, [2] = { base = 34, skill = 1000} },
	},
	--
	['Assault Sniper'] = { 
		--['file'] = 'files/weapons/snpr/assault sniper', --caminho do arquivo ou ID do objeto
		['damage'] = 70,
		['accuracy'] = 0.80, --0.0 a 1.0
		['rate'] = 600, --espaço de tempo entre os tiros
		['clip'] = 8, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 180,
		['target_range'] = 180,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.8, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['scope'] = 'files/model/crosshair/scope/marksman rifle.png',
		['handle'] = { [1] = { base = 33, skill = 1000}, [2] = { base = 34, skill = 1000} },
	},
	--
	['Precision Rifle'] = { 
		--['file'] = 'files/weapons/snpr/precision rifle', --caminho do arquivo ou ID do objeto
		['damage'] = 88,
		['accuracy'] = 0.90, --0.0 a 1.0
		['rate'] = 730, --espaço de tempo entre os tiros
		['clip'] = 10, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 190,
		['target_range'] = 190,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.8, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['scope'] = 'files/model/crosshair/scope/marksman rifle.png',
		['handle'] = { [1] = { base = 33, skill = 1000}, [2] = { base = 34, skill = 1000} },
	},
	--MGN
	['MG'] = { 
		--['file'] = 'files/weapons/mgn/mg', --caminho do arquivo ou ID do objeto
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
		['crosshair'] = 'files/model/crosshair/default/mg.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Combat MG'] = { 
		--['file'] = 'files/weapons/mgn/combat mg', --caminho do arquivo ou ID do objeto
		['damage'] = 55,
		['accuracy'] = 0.45, --0.0 a 1.0
		['rate'] = 175, --espaço de tempo entre os tiros
		['clip'] = 100, --quantidade de balas
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
		['crosshair'] = 'files/model/crosshair/default/mg.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Combat MG Mk II'] = { 
		--['file'] = 'files/weapons/mgn/combat mg mk ii', --caminho do arquivo ou ID do objeto
		['damage'] = 57,
		['accuracy'] = 0.45, --0.0 a 1.0
		['rate'] = 175, --espaço de tempo entre os tiros
		['clip'] = 100, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 120,
		['target_range'] = 120,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.6, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {125,100,0,100}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/mg.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Minigun'] = { 
		--['file'] = 'files/weapons/mgn/minigun', --caminho do arquivo ou ID do objeto
		['damage'] = 30,
		['accuracy'] = 0.40, --0.0 a 1.0
		['rate'] = 50, --espaço de tempo entre os tiros
		['clip'] = 595, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 110,
		['target_range'] = 110,
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
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['handle'] = { [1] = { base = 38, skill = 199}, [2] = { base = 38, skill = 1000} },
	},
	--Throwable
	['Pipe Bomb'] = { 
		--['file'] = 'files/weapons/gnd/pipe bomb', --caminho do arquivo ou ID do objeto
		['damage'] = 85,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 440, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 10,
		['target_range'] = 10,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = true,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 16, skill = 1000} },
	},
	--
	['Grenade'] = { 
		--['file'] = 'files/weapons/gnd/grenade', --caminho do arquivo ou ID do objeto
		['damage'] = 15,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 50, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 20,
		['target_range'] = 20,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = true,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 16, skill = 1000} },
	},
	--
	['BZ Gas'] = { 
		--['file'] = 'files/weapons/gnd/bz gas', --caminho do arquivo ou ID do objeto
		['damage'] = 10,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 440, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 10,
		['target_range'] = 20,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.8, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = true,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 17, skill = 1000} },
	},
	--
	['Teargas'] = { 
		--['file'] = 'files/weapons/gnd/teargas', --caminho do arquivo ou ID do objeto
		['damage'] = 10,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 440, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 15,
		['target_range'] = 15,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = true,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 17, skill = 1000} },
	},
	--
	['Molotov'] = { 
		--['file'] = 'files/weapons/gnd/molotov', --caminho do arquivo ou ID do objeto
		['damage'] = 50,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 440, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 8,
		['target_range'] = 8,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = true,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 18, skill = 1000} },
	},
	--
	['Proximity Mine'] = { 
		--['file'] = 'files/weapons/gnd/proximity mine', --caminho do arquivo ou ID do objeto
		['damage'] = 90,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 440, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 20,
		['target_range'] = 20,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = true,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 16, skill = 1000} },
	},
	--
	['Sticky Bomb'] = { 
		--['file'] = 'files/weapons/gnd/sticky bomb', --caminho do arquivo ou ID do objeto
		['damage'] = 1,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 440, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 25,
		['target_range'] = 25,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = true,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 39, skill = 1000} },
	},
	--
	['Ball'] = { 
		--['file'] = 'files/weapons/gnd/ball', --caminho do arquivo ou ID do objeto
		['damage'] = 1,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 440, --espaço de tempo entre os tiros
		['clip'] = 12, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 1,
		['target_range'] = 20,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = true,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 16, skill = 1000} },
	},
	--
	['Snowball'] = { 
		--['file'] = 'files/weapons/gnd/snowball', --caminho do arquivo ou ID do objeto
		['damage'] = 0,
		['accuracy'] = 0.36, --0.0 a 1.0
		['rate'] = 440, --espaço de tempo entre os tiros
		['clip'] = 80, --quantidade de balas do pente
		['reload'] = 900, -- tempo pra recarregar
		['weapon_range'] = 1,
		['target_range'] = 10,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = true,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/global.png',
		['handle'] = { [1] = { base = 16, skill = 1000} },
	},
	--Rocket launchers
	['Rocket Launcher'] = { 
		--['file'] = 'files/weapons/rckt/rocket launcher', --caminho do arquivo ou ID do objeto
		['damage'] = 100,
		['accuracy'] = 0.10, --0.0 a 1.0
		['rate'] = 1000, --espaço de tempo entre os tiros
		['clip'] = 1, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 10,
		['target_range'] = 200,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = true,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/heavy.png',
		['handle'] = { [1] = { base = 35, skill = 1000} },
	},
	--
	['Homing Launcher'] = { 
		--['file'] = 'files/weapons/rckt/homing launcher', --caminho do arquivo ou ID do objeto
		['damage'] = 95,
		['accuracy'] = 0.25, --0.0 a 1.0
		['rate'] = 1000, --espaço de tempo entre os tiros
		['clip'] = 10, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 10,
		['target_range'] = 150,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = true,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/heavy.png',
		['handle'] = { [1] = { base = 36, skill = 1000} },
	},
	--
	['Teargas Launcher'] = { 
		--['file'] = 'files/weapons/gnd/grenade launcher', --caminho do arquivo ou ID do objeto
		['damage'] = 10,
		['accuracy'] = 0.10, --0.0 a 1.0
		['rate'] = 1000, --espaço de tempo entre os tiros
		['clip'] = 20, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 10,
		['target_range'] = 100,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = nil,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/heavy.png',
		['handle'] = { [1] = { base = 27, skill = 200}, [2] = { base = 25, skill = 1000} },
	},
	--
	['Grenade Launcher'] = { 
		--['file'] = 'files/weapons/gnd/grenade launcher', --caminho do arquivo ou ID do objeto
		['damage'] = 95,
		['accuracy'] = 0.10, --0.0 a 1.0
		['rate'] = 1000, --espaço de tempo entre os tiros
		['clip'] = 20, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 2,
		['target_range'] = 100,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = nil,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/heavy.png',
		['handle'] = { [1] = { base = 27, skill = 200}, [2] = { base = 25, skill = 1000} },
	},
	--
	['Compact Grenade Launcher'] = { 
		--['file'] = 'files/weapons/gnd/compact grenade launcher', --caminho do arquivo ou ID do objeto
		['damage'] = 95,
		['accuracy'] = 0.15, --0.0 a 1.0
		['rate'] = 1000, --espaço de tempo entre os tiros
		['clip'] = 1, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 15,
		['target_range'] = 110,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = nil,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/heavy.png',
		['handle'] = { [1] = { base = 29, skill = 1000} },
	},
	--Special
	['Flare'] = {
		--['file'] = 'files/weapons/ptl/flare', --caminho do arquivo ou ID do objeto
		['damage'] = 0,
		['accuracy'] = 0.30, --0.0 a 1.0
		['rate'] = 2000, --espaço de tempo entre os tiros
		['clip'] = 1, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 10,
		['target_range'] = 100,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = true,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['handle'] = { [1] = { base = 16, skill = 1000} },
	},
	--
	['Flare Gun'] = {
		--['file'] = 'files/weapons/ptl/flare gun', --caminho do arquivo ou ID do objeto
		['damage'] = 0,
		['accuracy'] = 0.30, --0.0 a 1.0
		['rate'] = 2000, --espaço de tempo entre os tiros
		['clip'] = 1, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 10,
		['target_range'] = 100,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = nil,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['handle'] = { [1] = { base = 23, skill = 1000},  },
	},
	--
	['Stun Gun'] = { 
		--['file'] = 'files/weapons/ptl/stun gun', --caminho do arquivo ou ID do objeto
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
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['handle'] = { [1] = { base = 23, skill = 1000},  },
	},
	--
	['Up-n-Atomizer'] = { 
		--['file'] = 'files/weapons/ptl/up n atomizer', --caminho do arquivo ou ID do objeto
		['damage'] = 80,
		['accuracy'] = 0.10, --0.0 a 1.0
		['rate'] = 900, --espaço de tempo entre os tiros
		['clip'] = 10, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 100,
		['target_range'] = 100,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.0, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['handle'] = { [1] = { base = 23, skill = 1000},  },
	},
	--
	['Unholy Hellbringer'] = { 
		--['file'] = 'files/weapons/lmg/unholy hellbringer', --caminho do arquivo ou ID do objeto
		['damage'] = 55,
		['accuracy'] = 0.45, --0.0 a 1.0
		['rate'] = 175, --espaço de tempo entre os tiros
		['clip'] = 9999, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 120,
		['target_range'] = 120,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.4, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = nil, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 0, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {150,50,0,100}, size = 3, length = 3.0, speed = 4, offsets = {0,0,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/assault.png',
		['handle'] = { [1] = { base = 30, skill = 199}, [2] = { base = 33, skill = 1000} },
	},
	--
	['Railgun'] = { 
		--['file'] = 'files/weapons/snpr/railgun', --caminho do arquivo ou ID do objeto
		['damage'] = 90,
		['accuracy'] = 0.2, --0.0 a 1.0
		['rate'] = 500, --espaço de tempo entre os tiros
		['clip'] = 1, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 10,
		['target_range'] = 70,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
        ['incendiary'] = 0.25, --tamanho do incendio (0.25 tamanho do fogo ou nao)
		['explosive'] = 12, --tamanho da explosao (0-12 ou nil) https://wiki.multitheftauto.com/wiki/CreateExplosion
		['tracer'] = { color = {0,0,255,255}, size = 3, length = 0.5, speed = 5, offsets = {0,2,0}, duration = 300 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['handle'] = { [1] = { base = 27, skill = 200}, [2] = { base = 25, skill = 1000} },
	},
	--
	['Widowmaker'] = { 
		--['file'] = 'files/weapons/mgn/widowmaker', --caminho do arquivo ou ID do objeto
		['damage'] = 30,
		['accuracy'] = 0.8, --0.0 a 1.0
		['rate'] = 50, --espaço de tempo entre os tiros
		['clip'] = 90, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 110,
		['target_range'] = 110,
		['knockdown'] = 5000, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.9, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = 0.6, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,2,-0.2}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 100, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = 1, --buraco de bala true ou tamanho
        ['tracer'] = { color = {255,0,0,100}, size = 5, length = 10.0, speed = 3, offsets = {0,0,0}, duration = 500 },
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['handle'] = { [1] = { base = 38, skill = 199}, [2] = { base = 38, skill = 1000} },
	},
	--
	['Hand Firework'] = { 
		--['file'] = 'files/weapons/gnd/hand firework', --caminho do arquivo ou ID do objeto
		['damage'] = 45,
		['accuracy'] = 0.12, --0.0 a 1.0
		['rate'] = 1000, --espaço de tempo entre os tiros
		['clip'] = 1, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 10,
		['target_range'] = 120,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = nil,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['handle'] = { [1] = { base = 26, skill = 250} },
	},
	--
	['Firework Launcher'] = { 
		--['file'] = 'files/weapons/rckt/firework launcher', --caminho do arquivo ou ID do objeto
		['damage'] = 45,
		['accuracy'] = 0.12, --0.0 a 1.0
		['rate'] = 1000, --espaço de tempo entre os tiros
		['clip'] = 10, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 10,
		['target_range'] = 120,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.1, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = nil,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/heavy.png',
		['handle'] = { [1] = { base = 35, skill = 1000} },
	},
	--
	['Compact EMP Launcher'] = { 
		--['file'] = 'files/weapons/gnd/compact emp launcher', --caminho do arquivo ou ID do objeto
		['damage'] = 95,
		['accuracy'] = 0.15, --0.0 a 1.0
		['rate'] = 900, --espaço de tempo entre os tiros
		['clip'] = 20, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 110,
		['target_range'] = 110,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 1.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/default.png',
		['handle'] = { [1] = { base = 23, skill = 998} },
	},
	--
	['Snowball Launcher'] = { 
		--['file'] = 'files/weapons/gnd/snowball launcher', --caminho do arquivo ou ID do objeto
		['damage'] = 0,
		['accuracy'] = 0.15, --0.0 a 1.0
		['rate'] = 2000, --espaço de tempo entre os tiros
		['clip'] = 20, --quantidade de balas
		['reload'] = 1000, -- tempo pra recarregar
		['weapon_range'] = 1,
		['target_range'] = 110,
		['knockdown'] = nil, -- o jogador é nocauteado pelo disparo
		['fragments'] = 1, --fragments number
		['force'] = 0.0, --força percentual que o projetil mantem com relação a distancia (0.0 a 1.0)
		['piercing'] = nil, --força percentual que o projetil mantem com relação a alvos atravessados (0.0 a 1.0)
		['smoke'] = {0,0,0}, -- posição da fumaça do tiro na arma (nil ou apagar para desativar)
		['spark'] = 50, -- chance da arma produzir faísca ao disparar (0% a 100% ou true = para sempre)
		['bullethole'] = false,
		['throw'] = nil,
		['instant_reload'] = false,
		['shoot_if_out_of_range'] = true,
		['shoot_if_blocked'] = true,
		['flags'] = { true, true, true, true, true, true, false, false},
		['crosshair'] = 'files/model/crosshair/default/heavy.png',
		['handle'] = { [1] = { base = 29, skill = 1000}, [2] = { base = 29, skill = 1000} },
	},
	--
}

for item, valor in pairs (properties) do
	valor.handling = getWeaponNameFromID (valor.handle[1].base)
end

projectiles = {
	
	['Pipe Bomb'] = {
		['type'] = 18, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,0},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = nil, --physics
		['counter'] = {500, 2000}, --time to detonate
		['model'] = 'files/weapons/gnd/pipe bomb', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = false,
		['destruction'] = 12,
		['pickable'] = nil,
		
	},
	--
	['Grenade'] = {
		['type'] = 16, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,0},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = nil, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/grenade', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = nil,
		['destruction'] = nil,
		['pickable'] = nil,
		
	},
	--
	['BZ Gas'] = {
		['type'] = 17, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,0},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = nil, --physics
		['counter'] = 5000, --time to detonate
		['model'] = 'files/weapons/gnd/bz gas', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = nil,
		['destruction'] = nil,
		['pickable'] = nil,
		
	},
	--
	['Teargas'] = {
		['type'] = 17, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,0},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = nil, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/teargas', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = nil,
		['destruction'] = nil,
		['pickable'] = nil,
		
	},
	--
	['Molotov'] = {
		['type'] = 18, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,0},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = nil, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/molotov', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = nil,
		['destruction'] = nil,
		['pickable'] = nil,
		
		
	},
	--
	['Proximity Mine'] = {
		['type'] = 39, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {90,90,0},
		['offsets'] = {0,0,-0.25},
		['force'] = nil, 
		['velocity'] = nil, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/proximity mine', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = { element = {createColTube, 0.5, 1}, result = {12,5} }, --element (marker or colshape), result (resulting explosions)
		['detonate'] = nil,
		['destruction'] = nil,
		['pickable'] = nil,
		
		
	},
	--
	['Sticky Bomb'] = {
		['type'] = 39, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {90,90,0},
		['offsets'] = {0,0,-0.25},
		['force'] = nil, 
		['velocity'] = nil, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/sticky bomb', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = {5, 7},
		['destruction'] = nil,
		['pickable'] = nil,
		
		
	},
	--
	['Ball'] = {
		['type'] = 16, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		--['physics'] = 1598,
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,0},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = {0.5,0.1,0.1}, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/ball', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = { element = {createColTube, 0.5, 1} },
		['detonate'] = false,
		['destruction'] = nil,
		['pickable'] = true,
	},
	--
	['Snowball'] = {
		['type'] = 18, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {-0.25,1,0}, --offset from starting point (muzzle position)
		['rotation'] = {90,0,0},
		['offsets'] = {0,0,0},
		['force'] = 1.0, 
		['velocity'] = {0.5,0.1,0.1}, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/snowball', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['collision'] = nil,
		['arrival'] = nil,
		['detonate'] = false,
		['destruction'] = nil,
		['pickable'] = nil,
		['contact'] = { 'ped', 'player', 'vehicle', 'fall' }, --employ on contact with elements  (ped, player, vehicle, object, fall)
	},
	--
	['Teargas Launcher'] = {
		['type'] = 17, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {-0.25,1,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,90},
		['offsets'] = {0,0,0},
		['force'] = 1.0, 
		['velocity'] = {0.5,0.1,0.1}, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/grenade launcher shell', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = nil,
		['destruction'] = nil,
		['pickable'] = nil,
	},
	--
	['Grenade Launcher'] = {
		['type'] = 16, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {1,1,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,90},
		['offsets'] = {0,0,0},
		['force'] = 1.0, 
		['velocity'] = {0.5,0.1,0.1}, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/grenade launcher shell', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = nil,
		['destruction'] = nil,
		['pickable'] = nil,
	},
	--
	['Compact Grenade Launcher'] = {
		['type'] = 16, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {-0.25,1,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,90},
		['offsets'] = {0,0,0},
		['force'] = 1.0, 
		['velocity'] = {0.5,0.1,0.1}, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/grenade launcher shell', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = nil,
		['destruction'] = nil,
		['pickable'] = nil,
		['contact'] = { 'ped', 'player', 'vehicle'}, --employ on contact with elements  (ped, player, vehicle, object, fall)
		
	},
	--
	['Snowball Launcher'] = {
		['type'] = 18, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {-0.25,1,0}, --offset from starting point (muzzle position)
		['rotation'] = {90,0,0},
		['offsets'] = {0,0,0},
		['force'] = 1.0, 
		['velocity'] = {0.5,0.1,0.1}, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/snowball', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = false,
		['destruction'] = nil,
		['pickable'] = nil,
		['contact'] = { 'ped', 'player', 'vehicle', 'fall' }, --employ on contact with elements  (ped, player, vehicle, object, fall)
	},
	--
	['Rocket Launcher'] = {
		['type'] = 19, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,0},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = nil, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/rckt/rocket', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = nil,
		['destruction'] = nil,
		['pickable'] = nil,
	},
	--
	['Homing Launcher'] = {
		['type'] = 20, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,0},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = nil, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/rckt/homing rocket', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = nil,
		['destruction'] = nil,
		['pickable'] = nil,
	},
	--
	['Firework Launcher'] = {
		['type'] = 18, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {90,0,0},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = {2,1,1}, --physics
		['counter'] = 2000, --time to detonate
		['model'] = 'files/weapons/rckt/firework rocket', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = { name = 'smoke_flare', position = {0,0,0}, rotation = {-90,0,0} },
		['arrival'] = nil,
		['detonate'] = false,
		['destruction'] = nil,
		['pickable'] = nil,
		['data'] = { ['fireworks'] = 50, },
	},
	--
	['Hand Firework'] = {
		['type'] = 18, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {90,0,0},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = {2,1,1}, --physics
		['counter'] = 2000, --time to detonate
		['model'] = 'files/weapons/rckt/firework rocket', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = { name = 'smoke_flare', position = {0,0,0}, rotation = {-90,0,0} },
		['arrival'] = nil,
		['detonate'] = false,
		['destruction'] = nil,
		['pickable'] = nil,
		['data'] = { ['fireworks'] = 50, },
	},
	--
	['Flare'] = {
		['type'] = 16, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {-0.25,1,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,90},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = {1,0.5,0.5}, --physics
		['counter'] = 60000, --time to detonate
		['model'] = 'files/weapons/ptl/flare mag', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = { name = 'smoke_flare', position = {0,0,0}, rotation = {-90,0,0} },
		['arrival'] = nil,
		['detonate'] = false,
		['destruction'] = nil,
		['pickable'] = nil,
		
	},
	--
	['Flare Gun'] = {
		['type'] = 16, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {-0.25,1,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,90},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = {1,0.5,0.5}, --physics
		['counter'] = 60000, --time to detonate
		['model'] = 'files/weapons/ptl/flare mag', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = { name = 'smoke_flare', position = {0,0,0}, rotation = {-90,0,0} },
		['arrival'] = nil,
		['detonate'] = false,
		['destruction'] = nil,
		['pickable'] = nil,
		
	},
	--
	['Up-n-Atomizer'] = {
		['type'] = 21, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {-0.25,2,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,0},
		['offsets'] = {0,0,0},
		['force'] = 1.0, 
		['velocity'] = {8,1,1}, --physics
		['counter'] = 2000, --time to detonate
		['model'] = -1, --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = false,
		['destruction'] = nil,
		['pickable'] = nil,
		['data'] = { ['atomizer'] = true, },
	},
	--
	['Compact EMP Launcher'] = {
		['type'] = 18, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {-0.25,1,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,90},
		['offsets'] = {0,0,0},
		['force'] = 0, 
		['velocity'] = {1,1,1}, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/emp shell', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = false,
		['destruction'] = nil,
		['pickable'] = nil,
		['data'] = { ['emp'] = 5000, },
		['contact'] = { 'vehicle', 'fall' }, --employ on contact with elements  (ped, player, vehicle, object, fall)
	},
	--
	['Railgun'] = {
		['type'] = 19, --projectile type https://wiki.multitheftauto.com/wiki/Projectiles
		['position'] = {0,0,0}, --offset from starting point (muzzle position)
		['rotation'] = {0,0,90},
		['offsets'] = {0,0,0},
		['force'] = nil, 
		['velocity'] = {4,0.4,0.4}, --physics
		['counter'] = nil, --time to detonate
		['model'] = 'files/weapons/gnd/grenade launcher shell', --projectile model ID or nil (default model) or -1 (invisible model)
		['effect'] = nil,
		['arrival'] = nil,
		['detonate'] = nil,
		['destruction'] = nil,
		['pickable'] = nil,
	},
	--
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

--Setup
_createObject = createObject --não tocar
_getElementModel = getElementModel --não tocar
_setElementModel = setElementModel --não tocar

--Funções

function getObjectData (...)
return exports['PUNK+Objetos']:getData ()
end

function createObject (...)
	if getObjectData(arg[1]) then return exports['PUNK+Objetos']:createObject (unpack (arg)) end
return _createObject (unpack (arg))
end

function getElementModel (...)
	if getElementType (arg[1]) == 'object' then return exports['PUNK+Objetos']:getObjectModel (...) end
return _getElementModel (unpack (arg))
end

function setElementModel (...)
	if getElementType (arg[1]) == 'object' then return exports['PUNK+Objetos']:setObjectModel (unpack(arg)) end
return _setElementModel (unpack (arg))
end

_engineImportTXD = engineImportTXD
function engineImportTXD (...)
	if  getObjectData(arg[2]) then return exports['PUNK+Objetos']:engineImportObjectTXD (unpack(arg)) end
return _engineImportTXD (unpack(arg))
end

_engineReplaceModel = engineReplaceModel
function engineReplaceModel (...)
	if  getObjectData(arg[2]) then return exports['PUNK+Objetos']:engineReplaceObjectModel (unpack(arg)) end
return _engineReplaceModel (unpack(arg))
end

_engineFreeModel = engineFreeModel
function engineFreeModel (...)
	if getObjectData(arg[1]) then return exports['PUNK+Objetos']:engineFreeObjectModel (unpack(arg)) end
return _engineFreeModel (unpack (arg))
end

_engineRestoreModel = engineRestoreModel
function engineRestoreModel (...)
	if getObjectData(arg[1]) then return exports['PUNK+Objetos']:engineRestoreObjectModel (unpack(arg)) end
return _engineRestoreModel (unpack (arg))
end

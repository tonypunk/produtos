
--Comandos
function commandosIni ()

local jogador = getElementsByType ("player")[1]
	if not localPlayer then
	setTimer (function ()
giveWeapon (jogador, 'Heavy Revolver', 99, true)
	end, 2000, 1)
local tempTab = {}
	for nome, valor in pairs (arsenal) do
	tempTab[#tempTab+1] = nome
	end
	
	
	bindKey (jogador, 'n', 'down', function ()
	local wep = getPedWeapon (jogador)
		for i=1, #tempTab do
			if wep == tempTab[i] then
			giveWeapon (jogador, tempTab[i+1], 100, true)
			break
			end
		end
	end)	
	
	bindKey (jogador, 'b', 'down', function ()
	local wep = getPedWeapon (jogador)
		for i=1, #tempTab do
			if wep == tempTab[i] then
			giveWeapon (jogador, tempTab[i-1], 100, true)
			break
			end
		end
	end)
	
	end
end
commandosIni ()
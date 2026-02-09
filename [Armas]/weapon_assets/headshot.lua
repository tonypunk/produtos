
headshot = { -- Sistema de headshot
dano = 100, -- quantidade de dano que o headshot tira, 100 causa morte instantanea
tremer = true, -- se habilitado esta opção faz a camera do alvo tremer ao levar um headshot (true = ativado, false = desativado)
duracao = 2, -- tempo de duração do efeito de tela tremendo (segundos)
armas = {8,24,25,26,27,30,31,33, 'Heavy Revolver', 'Marksman Pistol'}, -- armas que farão perder a cabeça
}




function headshotIni ()

if localPlayer then

	if headshot then
	timerHeadShot = {}
		if headshot.tremer and headshot.tremer == true then
			function cameraTremer (perda)
			setCameraShakeLevel ( perda )
				if timerHeadShot[alvo] and isTimer (timerHeadShot[alvo]) then killTimer (timerHeadShot[alvo]) end
				timerHeadShot[alvo] = setTimer (function ()
				setCameraShakeLevel ( 0 )
				end, headshot.duracao*1000, 1)
			end
			addEvent ("PUNKHeadshotTremer", true)
			addEventHandler ("PUNKHeadshotTremer", getRootElement(), cameraTremer)

			function morreu ()
			local alvo = source
				if alvo == localPlayer then
					if isTimer (timerHeadShot[alvo]) then
					setCameraShakeLevel ( 0 )
					killTimer (timerHeadShot[alvo])
					end
				end
			end
			addEventHandler ("onClientPlayerWasted", getRootElement (), morreu)

		end
	end

end

	if not localPlayer then

	semCabeca = {}
		if headshot.dano and type (headshot.dano) == "number" and headshot.dano > 0 then

			function spawnar ()
			removeEventHandler ('onClientPlayerSpawn', alvo, spawnar)
			setPedHeadless (source, false)
			end

			function headFunc (agressor, arma, parte, perda)
				if arma == "Stun Gun" then return end
				if parte == 9 then
				local alvo = source
				local vida = getElementHealth (alvo)
					if vida <= headshot.dano then
						if getElementType (alvo) == 'ped' then
						triggerEvent ("onPedWasted", alvo, agressor, arma, parte)
						elseif getElementType (alvo) == 'player' then
						triggerEvent ("onPlayerWasted", alvo, agressor, a, parte)
						end
					setElementHealth (alvo, 0)
					--killPed(alvo, agressor, arma, parte)
						if headshot.armas and #headshot.armas > 0  then
							for i=1, #headshot.armas do
								if arma == headshot.armas[i] then
								setPedHeadless (alvo, true)
								semCabeca[alvo] = true
								addEventHandler ('onClientPlayerSpawn', alvo, spawnar)
								break
								end
							end
						end
					else
						if isElement(agressor) then
						setElementHealth (alvo, vida - headshot.dano)
							if headshot.tremer == sim then
							triggerClientEvent (alvo, "PUNKHeadshotTremer", alvo, perda)
							end
						end
					end
				end
			end
			addEventHandler ("onPlayerDamage", getRootElement(), headFunc)
			addEventHandler ("onPedDamage", getRootElement(), headFunc)


			function nasceu ()
			local jogador = source
				if semCabeca[jogador] == true then
				setPedHeadless (jogador, false)
				end
			end
			addEventHandler ("onPlayerSpawn", getRootElement(), nasceu)

		end

	end

end
headshotIni ()
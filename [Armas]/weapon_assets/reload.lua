--Reload
function reloadIni ()

function setupReload ()
timerReload = {}
local blockedTasks = {
    ['TASK_SIMPLE_JUMP'] = true,
    ['TASK_SIMPLE_LAND'] = true,
    ['TASK_SIMPLE_SWIM'] = true,
    ['TASK_SIMPLE_FALL'] = true,
    ['TASK_SIMPLE_CLIMB'] = true,
    ['TASK_SIMPLE_GET_UP'] = true,
    ['TASK_SIMPLE_IN_AIR'] = true,
    ['TASK_SIMPLE_HIT_HEAD'] = true,
    ['TASK_SIMPLE_NAMED_ANIM'] = true,
    ['TASK_SIMPLE_CAR_GET_IN'] = true,
    ['TASK_SIMPLE_GO_TO_POINT'] = true,
    ['TASK_SIMPLE_CAR_OPEN_DOOR_FROM_OUTSIDE'] = true,
}

function digiRe (botao, estado)
	if isCursorShowing () then return end
	if isChatBoxInputActive() then return end
--Reload
local teclas = getBoundKeys ('reload')
	for tecla, et in pairs (teclas) do
		if botao == tecla then
			if estado then
			local arma, objeto = getPedWeapon (localPlayer)
				if isElement (objeto) and isPedReloadingWeapon (localPlayer) == false then
				local clip = getPedAmmoInClip (localPlayer)
				local properties = getData ()
				local pente = properties[objeto]['clip']
					if clip < pente then
					cancelEvent ()
						if blockedTasks[getPedSimplestTask(localPlayer)] then
						return
						end
					setElementData (localPlayer, 'PUNKArmasReload', nil, true)
					setElementData (localPlayer, 'PUNKArmasReload', true, true)
					end
				end
			end
		return
		end
	end
	
end
addEventHandler ('onClientKey', root, digiRe)

if localPlayer then
addCommandHandler ('reload', function () end)
bindKey ('r', 'down', 'reload')
end
	
end
setupReload ()

function dataChangeReload (dados, antigo, novo)
	if novo == nil then return end
local jogador = source
	if dados == 'PUNKArmasReload' then
	doReload (jogador)
	end

end
addEventHandler ('onClientElementDataChange', getRootElement (), dataChangeReload)
addEventHandler ('onElementDataChange', getRootElement (), dataChangeReload)

function doReload (jogador)
local arma, objeto = getPedWeapon (jogador)
local properties, projectiles, armas = exports['PUNK+Armas']:getData ()
local evento = events.change
		if localPlayer then
		--Evento
		triggerEvent ('onClient'..evento, jogador, arma, getWeaponState (objeto), 'reloading')
			if jogador == localPlayer then
			triggerServerEvent ('on'..evento, jogador, arma, getWeaponState (objeto), 'reloading')
			end
		--State
		setWeaponState (objeto, 'reloading')
		--Anim
			if animations[arma] and animations[arma].reload then
			local h = animations[arma].reload[isPedDucked(jogador)]
			local temp = h[3]
			local temp2 = h[7]
				if isPedAiming (jogador) then
				h[3] = -1
				h[7] = false
				else
				h[3] = 1
				h[7] = true
				end
			setPedAnimation (jogador, unpack (h))	
				if h[3] ~= temp then
				h[3] = temp
				end
				if h[7] ~= temp2 then
				h[7] = temp2
				end
			end
			if getElementType (jogador) == 'ped' then
			setPedControlState (jogador, 'fire', false)
			setPedControlState (jogador, 'action', false)
			setPedControlState (jogador, 'vehicle_fire', false)
			end
		else
			if getElementType (jogador) == 'ped' then else
			toggleControl (jogador, 'fire', false)
			toggleControl (jogador, 'action', false)
			toggleControl (jogador, 'vehicle_fire', false)
			setControlState (jogador, 'fire', false)
			setControlState (jogador, 'action', false)
			setControlState (jogador, 'vehicle_fire', false)
			end
			--if not animations[arma] or not animations[arma].reload then
			reloadPedWeapon (jogador)
			--end
		end
		timerReload[jogador] = setTimer (function ()
		killTimer (timerReload[jogador])
			if localPlayer then
			--Arma
			local arma, objeto = getPedWeapon (jogador)
			
			local ammo = getWeaponAmmo (objeto)
			local clip = getWeaponClipAmmo(objeto)--getPedAmmoInClip (jogador)
			local pente = properties[objeto]['clip']
			setWeaponClipAmmo (objeto, pente)
			setWeaponState (objeto, 'ready')
			local result = armas[jogador][-1].ammo - pente
			armas[jogador][getSlotFromWeapon(arma)].ammo = result
			armas[jogador][-1].ammo = result
			setWeaponAmmo (objeto, result)
			--Anim
				if animations[arma] and animations[arma].reload then
				local h = animations[arma].reload[isPedDucked (jogador)]
				setPedAnimation (jogador, h[1], h[2], 1, false, false, false, false, 1, true)
				end
				if jogador == localPlayer then
				triggerServerEvent ('on'..evento, jogador, arma, 'reloading', 'ready')
					if isPedAiming (jogador) then
					local keys = getBoundKeys ('fire')
					found = nil
						if keys then
							for botao, estado in pairs (keys) do
								if getKeyState (botao) == true then
								found = true
								break
								end
							end
						end
						if not found then
						local keys = getBoundKeys ('action')
							if keys then
								for botao, estado in pairs (keys) do
									if getKeyState (botao) == true then
									found = true
									break
									end
								end
							end
						end
						if found then
						
						end
					end
				end
				if getElementType (jogador) == 'ped' then
				setPedControlState (jogador, 'fire', true)
				setPedControlState (jogador, 'action', true)
				setPedControlState (jogador, 'vehicle_fire', true)
				end
			triggerEvent ('onClient'..evento, jogador, arma, 'reloading', 'ready')
			else
				if getElementType (jogador) == 'player' then
				toggleControl (jogador, 'fire', true)
				toggleControl (jogador, 'action', true)
				end
			--giveReload (jogador, getPedWeapon(jogador), getPedTotalAmmo(jogador))
			end
		end, properties[objeto] and properties[objeto]['reload'] or 1000, 1)
end
addEvent ('doReload', true)
addEventHandler ('doReload', getRootElement(), doReload)

end
reloadIni ()
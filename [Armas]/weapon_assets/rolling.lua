

--Rolling
function rollIni ()

if localPlayer then

addEventHandler("onClientResourceStart", resourceRoot, function()
engineLoadIFP("files/ifp/combat_roll.ifp", 'combat_roll')
end)

function digiRoll (botao, estado)
	if not estado then return end
	if isCursorShowing () then return end
	if isChatBoxInputActive () then return end
	if isTimer (rolling) then return end
	if isPedAiming (localPlayer) then
	local teclas = getBoundKeys ('sprint')
		for tecla, et in pairs (teclas) do
			if botao == tecla then
			local cmd = nil
			local cmds = {'forwards', 'backwards', 'left', 'right'}
				for i=1, #cmds do
					if getPedControlState (localPlayer, cmds[i]) then
					cmd = cmds[i]
					end
				end
			triggerServerEvent ('PUNK+ArmasCombatRoll', localPlayer, cmd)
			break
			end
		end
	end
end
addEventHandler ('onClientKey', root, digiRoll)

function playRoll (side)
local animBlock, animName = getPedAnimation(source)
if animBlock ~= false and animName ~= false then return end
setPedAnimation(source, 'combat_roll', 'combat_roll_'..side, -1, false, true, false, false, -1, true)
local jogador = source
	setTimer (function ()
	setPedAnimationSpeed (jogador, 'combat_roll_'..side, 1.5)
	end, 50, 1)
end
addEvent ('playRoll', true)
addEventHandler ("playRoll", getRootElement(), playRoll)

end

if not localPlayer then

function digiRoll (side)
local jogador = source
	if isPedDead(jogador) then return end
	if isPedWearingJetpack(jogador) then return end
	if getPedOccupiedVehicle(jogador) then return end
	if not isPedOnGround(jogador) then return end
	if getControlState (jogador, 'aim_weapon') then
		triggerClientEvent(root, "playRoll", jogador, side)
	end
end
addEvent ('PUNK+ArmasCombatRoll', true)
addEventHandler ("PUNK+ArmasCombatRoll", getRootElement(), digiRoll)

end

end
rollIni ()
--Client
if localPlayer then

function mudarCamera (botao, estado)
	if isCursorShowing() then return end
	if estado then
	local veiculo = getPedOccupiedVehicle (localPlayer)
		if veiculo then
		local lugar = getPedOccupiedVehicleSeat (localPlayer)
		local ma = _getVehicleMaxPassengers (veiculo)
			if lugar and lugar > ma then
			local keys = getBoundKeys ( "change_camera" )
				for keyName, state in pairs(keys) do
					if botao == keyName then
					cancelEvent ()
					playSFX("genrl", 52, 15, false)
					local v, p = getCameraViewMode ()
					local rot = 360 - getPedCameraRotation(localPlayer)
						if getCameraTarget () == veiculo then
							if v == 5 then
							setCameraViewMode (3, p)
							elseif v == 3 then
							setCameraViewMode (2, p)
							elseif v == 2 then
							setCameraViewMode (1, p)
							elseif v == 1 then
							setCameraViewMode (5, p)
							setCameraTarget (localPlayer)
								setTimer (function ()
								setPedCameraRotation (localPlayer, rot)
								end, 10, 1)
							end
						elseif getCameraTarget () == localPlayer then
							if p == 1 then
							setCameraTarget (veiculo)
							setCameraViewMode (3, 3)
								setTimer (function ()
								setPedCameraRotation (localPlayer, rot)
								end, 10, 1)
							elseif p == 2 then
							setCameraViewMode (v, 1)
							elseif p == 3 then
							setCameraViewMode (v, 2)
							end
						end
					break
					end
				end
			end
		end
	end
end
addEventHandler ("onClientKey", root, mudarCamera)


addEventHandler ("onVehicleEnter", getRootElement (), function (ped, seat)
	if ped ~= localPlayer then return end
	if seat > _getVehicleMaxPassengers (source) then
	local v, p = getCameraViewMode ()
	local rot = 360 - getPedCameraRotation(localPlayer)
		setTimer (function ()
		setPedCameraRotation (localPlayer, rot)
		end, 10, 1)
		if v == 0 or v == 4 then
		setCameraViewMode (5, p)
		end
	setCameraTarget (source)
	end
end)

addEventHandler ("onVehicleExit", getRootElement (), function (ped, seat)
	if ped ~= localPlayer then return end
	if seat > _getVehicleMaxPassengers (source) then
	setCameraTarget (ped)
	end
end)

end
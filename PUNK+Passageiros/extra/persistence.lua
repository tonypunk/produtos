--Server
if not localPlayer then

addEventHandler ("onVehicleEnter", getRootElement (), function (boneco, lugar)
local ma = _getVehicleMaxPassengers (source)
	if lugar > ma then
	setElementData (boneco, "tempVeh", source, true)
	setElementData (boneco, "tempLugar", lugar, true)
	end
end)

addEventHandler ("onVehicleExit", getRootElement (), function (boneco, lugar)
local ma = _getVehicleMaxPassengers (source)
	if lugar > ma then
	setElementData (boneco, "tempVeh", nil, true)
	setElementData (boneco, "tempLugar", nil, true)
	end
end)

	setTimer (function ()
	local j = getElementsByType ("player")
		for i=1, #j do
		local boneco = j[i]
			if getElementData (boneco, "tempVeh") then
			local veiculo = getElementData (boneco, "tempVeh")
				if isElement (veiculo) then
				local x,y,z = getElementPosition (veiculo)
				local px,py,pz = getElementPosition (boneco)
				local dist = getDistanceBetweenPoints3D (x,y,z,px,py,pz)
					if dist and dist < 5 then
					local lugar = getElementData (boneco, "tempLugar")
					warpPedIntoVehicle (boneco, veiculo, lugar)
					end
				else
				setElementData (boneco, "tempVeh", nil)
				setElementData (boneco, "tempLugar", nil)
				end
			end
		end
	end, 2000, 1)
end
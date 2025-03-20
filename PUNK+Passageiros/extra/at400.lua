_getNearestElement = getNearestElement
function getNearestElement(player, type, distance)
	local result = false
	local dist = nil
	if player and isElement(player) then
		local elements = getElementsWithinRange(Vector3(getElementPosition(player)), distance, type, getElementInterior(player), getElementDimension(player))
		for i = 1, #elements do
			local element = elements[i]
			if not dist then
				result = element
				dist = getDistanceBetweenPoints3D(Vector3(getElementPosition(player)), Vector3(getElementPosition(element)))
			else
				local newDist = getDistanceBetweenPoints3D(Vector3(getElementPosition(player)), Vector3(getElementPosition(element)))
				if newDist <= dist then
					result = element
					dist = newDist
				end
			end
		end
		if not result then
		local elements = getElementsWithinRange(Vector3(getElementPosition(player)), 40, type, getElementInterior(player), getElementDimension(player))
			for i = 1, #elements do
				local element = elements[i]
				if getElementModel (element) == 577 then
					if not dist then
						result = element
						dist = getDistanceBetweenPoints3D(Vector3(getElementPosition(player)), Vector3(getElementPosition(element)))
					else
						local newDist = getDistanceBetweenPoints3D(Vector3(getElementPosition(player)), Vector3(getElementPosition(element)))
						if newDist <= dist then
							result = element
							dist = newDist
						end
					end
				end
			end
		end
	end
	return result
end

--Server
if not localPlayer then

--Piloto
addEventHandler ('onVehicleEnter', getRootElement(), function (ped, seat)
	if getElementModel (source) == 577 then
		if seat == 2 then
		local tempV = source
		_warpPedIntoVehicle (ped, tempV, 0)
		end
	end
end)

addEventHandler ('onVehicleStartExit', getRootElement(), function (ped, seat)
	if getElementModel (source) == 577 then
		if seat == 0 or seat == 2 then
		_removePedFromVehicle (ped)
		exports['PUNK+Passageiros']:setPedExitVehicle (ped)
		end
	end
end)

addEventHandler ('onVehicleStartEnter', getRootElement(), function (ped, seat)
	if getElementModel (source) == 577 then
		if seat == 0 then
		cancelEvent()
		local tempV = source
			setTimer (function ()
				if isElement (ped) and isElement (tempV) then
				exports['PUNK+Passageiros']:setPedEnterVehicle (ped, tempV, 2)
				end
			end, 100, 1)
		end
	end
end)

--Co-piloto
addEventHandler ('onVehicleEnter', getRootElement(), function (ped, seat)
	if getElementModel (source) == 577 then
		if seat == 3 then
		local tempV = source
		_warpPedIntoVehicle (ped, tempV, 1)
		end
	end
end)

addEventHandler ('onVehicleStartExit', getRootElement(), function (ped, seat)
	if getElementModel (source) == 577 then
		if seat == 1 or seat == 3 then
		_removePedFromVehicle (ped)
		exports['PUNK+Passageiros']:setPedExitVehicle (ped)
		end
	end
end)

addEventHandler ('onVehicleStartEnter', getRootElement(), function (ped, seat)
	if getElementModel (source) == 577 then
		if seat == 1 then
		cancelEvent()
		local tempV = source
			setTimer (function ()
				if isElement (ped) and isElement (tempV) then
				exports['PUNK+Passageiros']:setPedEnterVehicle (ped, tempV, 3)
				end
			end, 100, 1)
		end
	end
end)


end
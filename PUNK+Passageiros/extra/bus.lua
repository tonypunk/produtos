--Server
if not localPlayer then

addEventHandler ("onVehicleStartEnter", getRootElement(), function (ped, seat)
	if getElementModel (source) == 431 then
		if seat ~= 0 and seat <= _getVehicleMaxPassengers (source) then
		cancelEvent()
		local v = source
			setTimer (function ()
				if isElement (ped) and isElement (v) then
				exports["PUNK+Passageiros"]:setPedEnterVehicle (ped, v, seat+8)
				end
			end, 500, 1)
		end
	end
end)

end
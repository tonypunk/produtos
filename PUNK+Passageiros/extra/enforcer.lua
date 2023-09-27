--Client
if not localPlayer then

addEventHandler ("onClientPedStartGangDriveby", getRootElement(), function ()
local v = getPedOccupiedVehicle (source)
	if getElementModel (v) == 427 then
		if getPedWeapon (source) ~= 28 and getPedWeapon (source) ~= 26 and getPedWeapon (source) ~= 22 then cancelEvent () end
	end
end)

end

--Server
if not localPlayer then

addEventHandler ("onPedStartGangDriveby", getRootElement(), function ()
local v = getPedOccupiedVehicle (source)
	if getElementModel (v) == 427 then
		if getPedWeapon (source) ~= 28 and getPedWeapon (source) ~= 26 and getPedWeapon (source) ~= 22 then cancelEvent () end
	end
end)

end
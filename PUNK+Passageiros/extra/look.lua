--Client
if localPlayer then

targetting = {}
addEventHandler ("onVehicleStartEnter", getRootElement (), function (ped)
local v = source
local o = getVehicleOccupants (v)
	for _, p in pairs (o) do
		if not targetting[p] then
		setPedLookAt (p, 0,0,0, 3000, 500, ped)
		targetting[p] = ped
		end
	end
end)

addEventHandler ("onVehicleEnter", getRootElement (), function (ped)
local v = source
local o = getVehicleOccupants (v)
	for _, p in pairs (o) do
		if ped == targetting[p] then
		local x,y,z = getElementPosition (v)
		setPedLookAt (p, x,y,z, 500)
		targetting[p] = nil
		end
	end
end)

end
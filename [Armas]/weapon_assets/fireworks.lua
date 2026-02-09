addEventHandler ("onClientElementDestroy", getRootElement(), function ()
local p = source
	if getElementType (p) == 'projectile' or getElementType (p) == 'object' then
	local data = getProjectileData (p)
		if data then
			for name, value in pairs (data) do
				if name == 'fireworks' then
				local count = value
				local x,y,z = getElementPosition (p)
				createFirework (x,y,z, count)
				break
				end
			end
		end
	end
end)
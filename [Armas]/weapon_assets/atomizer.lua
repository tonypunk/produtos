
addEventHandler ('onClientElementStreamIn', getRootElement (), function ()
local p = source
	if getElementType (p) == 'projectile' or getElementType (p) == 'object' then
	local data = getProjectileData (p)
		if data then
			for name, value in pairs (data) do
				if name == 'atomizer' then
				createAtomizeEffect (p)
				break
				end
			end
		end
	end
end)


function createAtomizeEffect (p)
local hitX, hitY, hitZ, force = unpack (targetMarker[p])
local x,y,z = getElementPosition (p)
local ef = createColSphere (x,y,z, 2.75)
attachEffect (ef, p)
local em = createMarker (x,y,z, 'ring', 3, 150,150,0, 10)
setMarkerTarget (em, hitX, hitY, hitZ)
attachEffect (em, ef)
local em2 = createMarker (x,y,z, 'ring', 2.25, 150,150,0, 25)
setMarkerTarget (em2, hitX, hitY, hitZ)
attachEffect (em2, em)
local em3 = createMarker (x,y,z, 'ring', 1.5, 150,150,0, 35)
setMarkerTarget (em3, hitX, hitY, hitZ)
attachEffect (em3, em2)
local em4 = createMarker (x,y,z, 'corona', 2, 150,150,0, 75)
setMarkerTarget (em4, hitX, hitY, hitZ)
attachEffect (em4, em3)
	addEventHandler ("onClientElementDestroy", p, function ()
	destroyElement (ef)
	destroyElement (em)
	destroyElement (em2)
	destroyElement (em3)
	destroyElement (em4)
	end)
	
	atomizer[ef] = {
		force = force,
		position = {getElementPosition (p)},
		dono = jogador,
	}
			
end

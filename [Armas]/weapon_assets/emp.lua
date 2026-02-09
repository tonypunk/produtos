
addEventHandler ('onClientElementStreamIn', getRootElement (), function ()
	local p = source
	if getElementType (p) == 'projectile' or getElementType (p) == 'object' then
	local data = getProjectileData (p)
		if data then
			for name, value in pairs (data) do
				if name == 'emp' then
				createEMPEffect (p,value)
				break
				end
			end
		end
	end
end)


function createEMPEffect (p)
	addEventHandler ('onClientElementDestroy', p, function ()
	local x,y,z = getElementPosition (p)
	fxCreateParticle ('splash', x,y,z, 0,0,0.5, 150, 125,100,255, false, 10,1,1,true, 0.25)
	local v = getElementsWithinRange (x,y,z, 2.75, 'vehicle', getElementInterior (p), getElementDimension (p))
	local sound = playSound3D("files/sound/ptl/ptl_stun/shot/GTA5_GUN_STUN1.wav",x,y,z,false)
	end)
end


addEventHandler ('onClientVehicleCollision', getRootElement(), function (element)
local veiculo = source
local data = getProjectileData (element)
	if data then
		for name, value in pairs (data) do
			if name == 'emp' then
			setElementFrozen (veiculo, true)
			setElementFrozen (veiculo, false)
			local wasVehicleOn = getVehicleEngineState (veiculo)
				if wasVehicleOn == true then
					if getVehicleEngineState (veiculo) ~= false then setVehicleEngineState (veiculo, false) end
				end
				local timerEngine = setTimer (function ()	
					if getVehicleEngineState (veiculo) ~= false then setVehicleEngineState (veiculo, false) end
				end, 50, 0)
				setTimer (function ()
				killTimer (timerEngine)
					if wasVehicleOn == true then setVehicleEngineState (veiculo, true) end
				end, value, 1)
			break
			end
		end
	end
end)

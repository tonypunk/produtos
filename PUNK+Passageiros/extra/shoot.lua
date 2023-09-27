resource = "PUNK+Passageiros"

armas = {

	[28] = {
		bones = {
		5,6,7,8,
		21,22, 23, 24, 25, 26, 301,
		41, 42, 43, 44,
		51, 52, 53, 54,
		},
	
	},
	
	[30] = {
	
		bones = {
		1,2,3,4,5,6,7,8,
		21,22, 23, 24, 25, 26, 301,
		31,32, 33, 34, 35, 36, 302,
		41, 42, 43, 44,
		51, 52, 53, 54,
		},
		
		ajustes = {
			[3] = {-45, 0,0 },
		},
	},


}

bones = {}

boneIDs = {
		0, 1, 2, 3, 4, 5, 6, 7, 8, 21,
		22, 23, 24, 25, 26, 31, 32, 33,
		34, 35, 36, 41, 42, 43, 44, 51,
		52, 53, 54, 201, 301, 302
	}
	
addEventHandler ("onClientPedGangDriveby", getRootElement(), function (boneco, estado)
bones[boneco] = {}
	if estado == true then
		for i=1, #boneIDs do
		local x,y,z = getElementBoneRotation (boneco, boneIDs[i])
		bones[boneco][boneIDs[i]] = {x,y,z}
		end
	end
end)

	function render()
	local t = {}
	local p = getElementsByType ("player")
		for i=1, #p do
		table.insert (t, p[i])
		end
	local p = getElementsByType ("ped")
		for i=1, #p do
		table.insert (t, p[i])
		end
		for i=1, #t do
		local ped = t[i]
			if --[[exports[resource]:]]isPedDoingGangDriveby (ped) then
			local arma = getPedWeapon (ped)
				for kk=1, #boneIDs do
				x,y,z = getElementBoneRotation (ped, boneIDs[kk])
					if x and y and z then
					ax, ay, az = 0,0,0
						if armas[arma] and armas[arma].ajustes and armas[arma].ajustes[boneIDs[kk]] then
						ax, ay, az = armas[arma].ajustes[boneIDs[kk]][1], armas[arma].ajustes[boneIDs[kk]][2], armas[arma].ajustes[boneIDs[kk]][3]
						end
						if not table.contain (armas[arma].bones, boneIDs[kk]) then
						x,y,z = unpack (bones[ped][boneIDs[kk]])
						end
					local px,py,pz = getElementBoneRotation (ped, boneIDs[kk])
					local rx,ry,rz = x+ax,y+ay,z+az
						if px ~= rx or py ~= ry or pz ~= rz then
						setElementBoneRotation (ped, boneIDs[kk], rx,ry,rz)
						end
					x,y,z = nil,nil,nil
					ax, ay, az = nil,nil,nil	
					end
				end
			end
		end
	end		
	addEventHandler("onClientPreRender", root, render)

	addEventHandler ("onVehicleStartExit", getRootElement(), function (boneco)
	bones[boneco] = nil
		if isPedDoingGangDriveby (boneco) then
		setPedDoingGangDriveby (boneco, false)
		end
	end)

	addEventHandler ("onClientKey", root, function (botao, estado)
	local arma = getPedWeapon(localPlayer)
		if not armas[arma] then return end
		if isPedEnteringVehicle (localPlayer) then return end
		if isCursorShowing() then return end
	local veiculo = getPedOccupiedVehicle (localPlayer)
		if veiculo then
		local lugar = getPedOccupiedVehicleSeat (localPlayer)
		local ma = _getVehicleMaxPassengers (veiculo)
			if lugar and lugar > ma then
			local keys = getBoundKeys ("aim_weapon")
				if keys then
					for keyName, state in pairs(keys) do
						if botao == keyName then
						cancelEvent ()
							if estado == true then
							setPedDoingGangDriveby (localPlayer, not isPedDoingGangDriveby (localPlayer), true)
							end
						break
						end
					end
				end
			end
		end
	end)
	
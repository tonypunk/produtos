--Ini
function soundIni ()
	if not localPlayer then return end
lmg = {28,32}
hg = {22,24}
sl = {23}
mg = {29}
st = {25,26,27}
fz = {30,31}
rf = {34,35}

tsounds = {

[3] = {--impact

[{1}] = {13,14,15}, --uzi/tec-9

},

[5] = {--gunshots

[lmg] = {0,1,2, 29,30}, --uzi/tec-9

[hg] = {6,7,8, 52,53}, -- colt 45/deagle

[sl] = {24,25, 76,77}, --silenced

[mg] = {17,18, 29,30}, --mp5

[st] = {21,22, 73,74}, --shotguns

[fz] = {3,4, 33,53}, --fuzis

[rf] = {26,27, 52,53}, --rifles

}

}

for grupo, tabela in pairs (tsounds) do
	for item, valor in pairs (tabela) do
		for i, v in pairs (valor) do
		setWorldSoundEnabled (grupo, v, false)
		end
	end
end

addEventHandler ("onClientResourceStop", getResourceRootElement (getThisResource()), function ()

	for grupo, tabela in pairs (tsounds) do
		for item, valor in pairs (tabela) do
			for i, v in pairs (valor) do
			setWorldSoundEnabled (grupo, v, true)
			end
		end
	end


end)


end
soundIni ()

--Handle
drawSound = {}
function draw (state)
	if not localPlayer then return triggerClientEvent ("onClient"..events.aim, source, state) end
local owner = source
local name, weapon = getPedWeapon (owner)
	--if not handle[getSlotFromWeapon (name)] then return end
	if not sounds[weapon] or not sounds[weapon].handle then return end
local t = sounds[weapon].handle--handle[getSlotFromWeapon (name)]
	if state == true then
	t = t.draw
	else
	t = t.holster
	end
	
local r = math.random (#t)
s = t[r]
local x,y,z = getElementPosition (weapon)
	for i=1, #s do
	ms = playSound3D (unpack (s[i]), x,y,z, false)
	local m = getSoundVolume (ms)
	setSoundVolume (ms, m*s[i].volume)
	drawSound[owner] = ms
	attachElements (drawSound[owner], owner)
	end
end
addEventHandler ('onClient'..events.aim, getRootElement (), draw)
addEventHandler ('on'..events.aim, getRootElement (), draw)

--Shoot
shotSound = {}
function shot (name)
local owner = source
local _, ob = getPedWeapon (owner)
local x,y,z = getElementPosition (ob)
--Shot
	if name then
		if not sounds[name] then
		t = sounds[getWeaponIDFromName(getData()[name].handling)] or nil
		else
		t = sounds[ob].shot
		end
		if not t then return end
	else
	
	end
	if not firingCounter[owner] then
	s = t[1]
	else
	local r = math.random (#t)
	s = t[r]
	end
	
	for i=1, #s do
		if s[i].delay then
		local tempS = s[i]
			setTimer (function ()
			local ms = playSound3D (unpack (tempS), x,y,z, false)
			local m = getSoundVolume (ms)
			attachElements (ms, ob or owner)
			setSoundVolume (ms, m*tempS.volume)
			setSoundMaxDistance (ms, properties[ob].weapon_range*2)
			end, s[i].delay, 1)
		else
		local ms = playSound3D (unpack (s[i]), x,y,z, false)
		local m = getSoundVolume (ms)
		attachElements (ms, ob or owner)
		setSoundVolume (ms, m*s[i].volume)
		setSoundMaxDistance (ms, properties[ob].weapon_range*2)
		end
	end
	
--Distant
	if name then
		if not sounds[name] then
		t = sounds[getWeaponIDFromName(getData()[name].handling)] or nil
		else
		t = sounds[ob].distant
		end
		if not t then return end
	else
	
	end

	if getElementInterior (owner) ~= 0 then
	t = t.indoor
	else
	local px,py,pz = getElementPosition (localPlayer)
	local dist = getDistanceBetweenPoints3D(x,y,z,px,py,pz)
		if dist < 50 then
		t = t.near
		else
		t = t.far
		end
	end
	
local r = math.random (#t)
s = t[r]
	for i=1, #s do
		if s[i].delay then
		--local tempS = s[i]
			--setTimer (function ()
			--local ms = playSound3D (unpack (tempS), x,y,z, false)
			--local m = getSoundVolume (ms)
			--setSoundVolume (ms, m*tempS.volume)
			--setSoundMaxDistance (ms, properties[ob].weapon_range*10)
			--end, s[i].delay, 1)
		else
		--local ms = playSound3D (unpack (s[i]), x,y,z, false)
		--local m = getSoundVolume (ms)
		--setSoundVolume (ms, m*s[i].volume)
		--setSoundMaxDistance (ms, properties[ob].weapon_range*10)
		end
	end
end
addEventHandler ('onClient'..events.fire, getRootElement (), shot)

--Impact
function impact (tabela)
	for i=1, #tabela do
	local cx,cy,cz = unpack (tabela[i].pos)
		if properties then
			if not properties.bullethole or properties.bullethole == false then else
			found = nil
				for nome, valor in pairs (materiais) do
					if material and table.contain (valor.ids, material) and not found then
					found = true
						if not isElement(elementHit) or (isElement (elementHit) and (getElementType (elementHit) == 'vehicle' or getElementType (elementHit) == 'object') ) then
							if elemento then return end
							local owner = source
							local _, ob = getPedWeapon (owner)
							--Impact
								if name then
									if not sounds[name] then
									t = sounds[getWeaponIDFromName(getData()[name].handling)] or nil
									else
									t = sounds[ob].impact
									end
									if not t then return end
								else
								
								end
							local r = math.random (#t)
							s = t[r]
								for i=1, #s do
								ms = playSound3D (unpack (s[i]), x,y,z, false)
								local m = getSoundVolume (ms)
								setSoundVolume (ms, m*s[i].volume)
								end
						end
					end
				end
			end
		end
	end
end
addEventHandler ("bulletImpact", getRootElement(), impact)

--Reload
function reloadsound (weap, old, new)
	if new ~= 'reloading' then return end
--outputChatBox ("RELOADING")
	--if not localPlayer then return triggerClientEvent ("onClient"..events.change, source, weap, old, new) end
local owner = source
local name, weapon = getPedWeapon (owner)
t = sounds[weapon].reload	
local r = math.random (#t)
s = t[r]
local x,y,z = getElementPosition (weapon)
	for i=1, #s do
		if s[i].delay then
		local tempS = s[i]
			setTimer (function ()
			local ms = playSound3D (unpack (tempS), x,y,z, false)
			local m = getSoundVolume (ms)
			setSoundVolume (ms, m*tempS.volume)
			attachElements (ms, owner)
			end, s[i].delay, 1)
		else
		local ms = playSound3D (unpack (s[i]), x,y,z, false)
		local m = getSoundVolume (ms)
		setSoundVolume (ms, m*s[i].volume)
		attachElements (ms, owner)
		end
	end
end
addEventHandler ('onClient'..events.change, getRootElement (), reloadsound)
--addEventHandler ('on'..events.change, getRootElement (), reloadsound)
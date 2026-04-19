

--Ini
function soundIni ()
	if not localPlayer then return end
	
	setWorldSoundEnabled (2, 34, false)
	setWorldSoundEnabled (2, 11, false)
	
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

[hg] = {5,6,7,8, 52,53}, -- colt 45/deagle

[sl] = {24,25, 76,77}, --silenced

[mg] = {17,18, 29,30}, --mp5

[st] = {21,22, 73,74}, --shotguns

[fz] = {3,4, 23, 33,53}, --fuzis

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
local owner = source
local name, weapon = getPedWeapon (owner)
	if not sounds[name] or not sounds[name].handle then return end
local t = sounds[name].handle
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

--Shoot
shotSound = {}
function shot (name)
local owner = source
local arma, ob = getPedWeapon (owner)
local x,y,z = getElementPosition (ob)
	if owner == localPlayer then
		if getWeaponNameFromID ( _getPedWeapon (owner) ) == 'Sniper' or getWeaponNameFromID ( _getPedWeapon (owner) ) == 'Camera' or getWeaponNameFromID ( _getPedWeapon (owner) ) == 'Rocket Launcher' or getWeaponNameFromID ( _getPedWeapon (owner) ) == 'Rocket Launcher HS' then
		x,y,z = getElementPosition (getCamera ())
		else
		end
	else
	end
--Shot
	if name then
		if not sounds[name] then
		return--t = sounds[getWeaponIDFromName(getData()[name].handling)] or nil
		else
			if getPedAmmoInClip (owner) > 0 then
			t = sounds[arma].shot
			else
			t = sounds[arma]['handle'].dry
			end
		end
		if not t then return end
	else
	
	end
local properties = getData ()
local tab = exports['PUNK+Armas']:getFiringCount (owner)
	if not tab then
	s = t[1]
	else
	local r = math.random (#t)
	s = t[r]
	end
	
	for i=1, #s do
	local a = s[i]
		if s[i].delay then
		local tempS = s[i]
			setTimer (function ()
				if getElementData (ob, 'suppressor') == true then 
				ms = playSound3D ('files/sounds/suppressed.mp3', x,y,z, false)
				else
				ms = playSound3D (unpack (tempS), x,y,z, false)
				end
				if owner == localPlayer then
					if getWeaponNameFromID ( _getPedWeapon (owner) ) == 'Sniper' or getWeaponNameFromID ( _getPedWeapon (owner) ) == 'Camera' or getWeaponNameFromID ( _getPedWeapon (owner) ) == 'Rocket Launcher' or getWeaponNameFromID ( _getPedWeapon (owner) ) == 'Rocket Launcher HS' then
					attachElements (ms, getCamera())
					else
					attachElements (ms, ob or owner)
					end
				else
				attachElements (ms, ob or owner)
				end
			local m = getSoundVolume (ms)
			setSoundVolume (ms, m*tempS.volume)
			setSoundMaxDistance (ms, properties[arma].weapon_range*2)
			end, s[i].delay, 1)
		else
			if getElementData (ob, 'suppressor') == true then 
			ms = playSound3D ('files/sound/suppressed.mp3', x,y,z, false)
			else
			ms = playSound3D (unpack (s[i]), x,y,z, false)
			end
			if owner == localPlayer then
				if getWeaponNameFromID ( _getPedWeapon (owner) ) == 'Sniper' or getWeaponNameFromID ( _getPedWeapon (owner) ) == 'Camera' or getWeaponNameFromID ( _getPedWeapon (owner) ) == 'Rocket Launcher' or getWeaponNameFromID ( _getPedWeapon (owner) ) == 'Rocket Launcher HS' then
				attachElements (ms, getCamera())
				else
				attachElements (ms, ob or owner)
				end
			else
			attachElements (ms, ob or owner)
			end
		local m = getSoundVolume (ms)
		setSoundVolume (ms, m*s[i].volume)
		setSoundMaxDistance (ms, properties[arma].weapon_range*2)
		end
	end
	
--Distant
	if getPedAmmoInClip (owner) > 0 then
		if name then
			if not sounds[name] then
			t = sounds[getWeaponIDFromName(getData()[name].handling)] or nil
			else
			t = sounds[arma].distant
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
				if owner ~= localPlayer then
				t = t.near
				else
				t = nil
				end
			else
			t = t.far
			end
		end
	
		if t then
		local r = math.random (#t)
		s = t[r]
			for i=1, #s do
				if s[i].delay then
				local tempS = s[i]
					setTimer (function ()
					local ms = playSound3D (unpack (tempS), x,y,z, false)
					local m = getSoundVolume (ms)
					setSoundVolume (ms, m*tempS.volume)
					setSoundMaxDistance (ms, properties[arma].weapon_range*10)
					end, s[i].delay, 1)
				else
				local ms = playSound3D (unpack (s[i]), x,y,z, false)
				local m = getSoundVolume (ms)
				setSoundVolume (ms, m*s[i].volume)
				setSoundMaxDistance (ms, properties[arma].weapon_range*10)
				end
			end
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
								t = sounds[arma].impact
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
	--if not localPlayer then return triggerClientEvent ("onClient"..events.change, source, weap, old, new) end
local owner = source
local name, weapon = getPedWeapon (owner)
t = sounds[name].reload	
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
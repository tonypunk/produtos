--Bleeding
function bleedingIni ()
despawn = 60000
maxbleed = 500

bleedTimer = {}
bleedInterval = {}
local bleed = {}
addEvent ('onPedBleed', true)
addEventHandler ('onPedBleed', getRootElement (), function (elem, tab)
	bleed[elem] = tab
	if not tab then
	local a = setPedBleeding and setPedBleeding (elem, false)
	local a = setPedFootBloodEnabled and setPedFootBloodEnabled (elem, false)
	return
	end
	if not localPlayer then
	triggerClientEvent ("onPedBleed", elem, elem, tab)
	else
	local pool = tab.pool
	local foot = tab.foot
		if pool then
		setPedBleeding (elem, pool or false)
		end
		if foot then
		setPedFootBloodEnabled (elem, foot or false)
		end
	end
	
end)


if isElement (localPlayer) then
function bleedImpact (tabela)
local pre = #bleed
	for i=1, #tabela do
		if tabela[i].properties then
		local properties = tabela[i].properties
			if not properties.bullethole or properties.bullethole == false then else
				if (tabela[i].element and isElement (tabela[i].element) and ( (getElementType (tabela[i].element) == 'ped' and isPedDead (tabela[i].element) == false) or (getElementType (tabela[i].element) == 'vehicle')))  then
				local elementHit = tabela[i].element
				local cx,cy,cz = unpack (tabela[i].pos)
				local px,py,pz = unpack (tabela[i].final)
				local nx,ny,nz = unpack (tabela[i].normal)
				local parte = tabela[i].parte
					if isElement (elementHit) and elementHit == localPlayer or source == localPlayer then
						if (getElementType (elementHit) == 'player' or getElementType (elementHit) == 'ped') then
							if properties['bleed'] then
								if not bleed[elementHit] then bleed[elementHit] = {} end
								
							local t = getTickCount ()
							properties['bleed'].last = t
							properties['bleed'].timer = t
							table.insert (bleed[elementHit], {arma = tabela[i].arma, bleed = properties['bleed'], parte = getNearestBone (elementHit,cx,cy,cz), autor = source, element = elementHit, posicao = {cx,cy,cz}, normal = {nx,ny, nz}, timer = getTickCount ()})
							triggerServerEvent ("onPedBleed", elementHit, elementHit, bleed[elementHit])
								if pre == 0 then
								pre = 1
								removeEventHandler ("onClientPreRender", root, renderBleed)
								addEventHandler ("onClientPreRender", root, renderBleed)
								end
							end
						end
					end
				end
			end
		end
	end
end
addEventHandler ("bulletImpact", getRootElement(), bleedImpact)


local boneDist = {

	[0] = 0.075,
	[1] = 0.075,
	[2] = 0.075,
	[3] = 0.075,
	[4] = 0.075,
	[21] = 0.08,
	[23] = 0.08,
	[31] = 0.08,
	[32] = 0.08,
	
}

function renderBleed ()
	for element, tab in pairs (bleed) do
		if isElement (element) then
			if getElementHealth (element) > 0 then
				for item, valor in pairs (tab) do
				local size = 1
				local size = size*0.05
				local x,y,z = unpack (valor.posicao)
				local nx,ny,nz = unpack (valor.normal)
				local value = 0.01
					if element then
						if getElementType (element) == 'ped' or getElementType (element) == 'player' then 
						value = 0.08
						x,y,z = getElementBonePosition (element, valor.parte)
							 if boneDist[valor.parte] then
							 value = boneDist[valor.parte]
							 end
						elseif getElementType (element) == 'vehicle' then
						x,y,z = getPositionOffsetElement(element,x,y,z)
						end
					nx,ny,nz = getPositionOffsetElement(element,nx,ny,nz,true)
					end
				local angle = getAngleBetweenPoints2D(0,0,nx,ny)
				local dir = math.rad(angle)
				local x = x + value*nx
				local y = y + value*ny
				local z = z + value*nz
				local rx = size*nz*math.sin(dir)
				local ry = -size*nz*math.cos(dir)
				local rz = size*math.sqrt(nx^2+ny^2)
				local mx,my,mz = x-rx,y-ry,z-rz
				local px,py,pz = x+rx,y+ry,z+rz
				local rx,ry,rz = x-rx+nx,y-ry+ny,z-rz+nz
					if element then
						if isElement (element) then
							if getElementType (element) == 'ped' or getElementType (element) == 'player' then 
								if valor.bleed then
									if valor.bleed['squish'] == true then
									local v = valor.bleed
									local tick = getTickCount ()
									local duration = v.duration
									local timer = v.timer
									local r = tick - timer
										if r > duration then
										triggerEvent ("onPedBleed", element, element, nil)
										valor.bleed = nil
										table.removeValue (tab, item)
											if #tab <= 0 then
											table.removeValue (bleed, element)
												if #bleed <= 0 then
												removeEventHandler ("onClientPreRender", root, renderBleed)
												end
											end
										else
										local interval = v.interval
										local amount = v.amount
										local timer = v.last
										local r = tick - timer
											if r > interval then
											v.last = getTickCount ()
											fxAddBlood(mx,my,mz,nx,ny,nz, amount, 1)
												
												if element == localPlayer or valor.autor == localPlayer then
													if getElementHealth (element) > 0 then
													triggerServerEvent ("PUNKArmasAlvejado", root, element, valor.autor, valor.arma, valor.parte, v.damage, getElementType (element) == 'ped' and 'onClientPedDamage' or 'onClientPlayerDamage')
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			else
			table.removeValue (bleed, element)
				if #bleed <= 0 then
				removeEventHandler ("onClientPreRender", root, renderBleed)
				end
			end
		else
		bleed[element] = nil
			if #bleed <= 0 then
			removeEventHandler ("onClientPreRender", root, renderBleed)
			end
		end
	end
end

function bleedSpawn()
	if bleed[source] then
	table.removeValue (bleed, bleed[source])
	end
end
addEventHandler("onClientPlayerSpawn",root,bleedSpawn)
			
end

end
bleedingIni ()
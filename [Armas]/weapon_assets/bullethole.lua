
--Bullethole
addEvent ("bulletImpact", true)
function bulletHoleIni ()

local holes = {}
local despawn = 60000
local maxHoles = 500

if isElement (localPlayer) then

local x,y = guiGetScreenSize()
local imagem = "files/model/bullethole/bullethole.png"
local textura = dxCreateTexture (imagem, "dxt3", true)
materiais = {
	--
	["Default"] = {
		[1] =  {0,0,64,64},
		[2] =  {0,64,64,64},
		[3] =  {64,0,64,64},
		[4] =  {64,64,64, 64},
		ids = {0, 1, 2, 3},
	},
	--
	["Concrete"] = {
		[1] =  {0,0,64,64},
		[2] =  {0,64,64,64},
		[3] =  {64,0,64,64},
		[4] =  {64,64,64, 64},
		ids = {4, 5, 7, 8, 34, 89, 127, 135, 136, 137, 138, 139, 144, 165},
	},
	--
	["Gravel"] = {
		[1] =  {0,0,64,64},
		[2] =  {0,64,64,64},
		[3] =  {64,0,64,64},
		[4] =  {64,64,64, 64},
		ids = { 6,85,101,134,140},
	},
	--
	["Grass"] = {
		[1] =  {0,0,64,64},
		[2] =  {0,64,64,64},
		[3] =  {64,0,64,64},
		[4] =  {64,64,64, 64},
		ids = {9,10,11,12,13,14,15,16,17,20,80,81,82,115,116,117,118,119,120,121,122,125,146,147,148,149,150,151,152,153,160},
	},
	--
	["Dirt"] = {
		[1] =  {0,0,64,64},
		[2] =  {0,64,64,64},
		[3] =  {64,0,64,64},
		[4] =  {64,64,64, 64},
		ids = {19,21,22,24,25,26,27,40,83,84,87,88,100,110,123,124,126,128,129,130,132,133,141,142,155,156},
	},
	--
	["Sand"] = {
		[1] =  {896,192,64,64},
		[2] =  {960,192,64,64},
		[3] =  {896,256,64,64},
		[4] =  {960,256,64,64},
		ids = {28,29,30,31,32,33,74,75,76,77,78,79,86,96,97,98,99,131,142,157},
	},
	--
	["Stone"] = {
		[1] =  {896,192,64,64},
		[2] =  {960,192,64,64},
		[3] =  {896,256,64,64},
		[4] =  {960,256,64,64},
		ids = {18,35,36,37,69,109,154,161},
	},
	--
	["Vegetation"] = {
		[1] =  {0,0,64,64},
		[2] =  {0,64,64,64},
		[3] =  {64,0,64,64},
		[4] =  {64,64,64, 64},
		ids = {23,41,111,112,113,114},
	},
	--
	["Water"] = {
		[1] =  {0,0,64,64},
		[2] =  {0,64,64,64},
		[3] =  {64,0,64,64},
		[4] =  {64,64,64, 64},
		ids = {38,39},
	},
	--
	["Glass"] = {
		[1] =  {0,128,128,128},
		[2] =  {128,128,128,128},
		[3] =  {256,128,128,128},
		[4] =  {0,256,128,128},
		[5] =  {128,256,128,128},
		ids = {42,43,44, 70,72,73,172,173,174},
	},
	--
	["Wood"] = {
		[1] =  {256,0,64,64},
		[2] =  {320,0,64,64},
		[3] =  {384,0,64,64},
		[4] =  {256,64,64,64},
		[5] =  {320,64,64,64},
		ids = {42,43,44, 70,72,73,172,173,174},
	},
	--
	["Metal"] = {
		[1] =  {128,0,64,64},
		[2] =  {128,64,64,64},
		[3] =  {192,64,64,64},
		[4] =  {192,0,64, 64},
		ids = {50,51,53,54,55,56,57,58,59,162,164,167,168,171, 63,64,65},
	},
	--
	["Blood"] = {
		[1] =  {448,0,64, 64},
		[2] =  {512,0,64, 64},
		[3] =  {384,64,64, 64},
		[4] =  {448,64,64, 64},
		[5] =  {512,64,64, 64},
		[6] =  {384,128,128, 128},
		[7] =  {512,128,128, 128},
		[8] =  {640,128,128, 128},
		[9] =  {768,128,128, 128},
		[10] =  {256,256,128, 128},
		[11] =  {384,256,128, 128},
		ids = {62},
	},
	["Misc"] = {
		[1] =  {0,0,64,64},
		[2] =  {0,64,64,64},
		[3] =  {64,0,64,64},
		[4] =  {64,64,64, 64},
		ids = {48,49,60,61,66,67,68,71,90,91,92,93,94,95,102,103, 104, 105, 106, 107, 108, 158, 159, 163, 166, 169, 170, 176, 177, 178},
	},
	--
}


bulletHole = {}
textures = {}
	for nome, valor in pairs (materiais) do
	textures[nome] = {}
		for i=1, #valor do
		local tempTex = dxCreateRenderTarget(x, y, true)
		dxSetRenderTarget(tempTex, true)
		dxSetBlendMode("modulate_add")
		local e,f,g,h = unpack (valor[i])
		dxDrawImageSection(0,0,x,y,e,f,g,h, textura, 0,0,0) -- Draw a certain section
		dxSetBlendMode("blend")
		dxSetRenderTarget()
		textures[nome][i] = tempTex
		tempTex = nil
		end
	end

function bulletImpact (tabela)
	if not holes[source] then holes[source] = {} end
local b = holes[source]
	if b and #b >= maxHoles then return end
local pre = #holes
	for i=1, #tabela do
	local cx,cy,cz = unpack (tabela[i].pos)
	local px,py,pz = unpack (tabela[i].final)
	local nx,ny,nz = unpack (tabela[i].normal)
	local material = tabela[i].material
	local elementHit = tabela[i].element
	local parte = tabela[i].parte
	local properties = tabela[i].properties
		if properties then
			if not properties.bullethole or properties.bullethole == false then else
			found = nil
				for nome, valor in pairs (materiais) do
					if material and (valor.ids and table.contain (valor.ids, material) or not valor.ids) and not found then
					found = true
					
						if isElement(elementHit) then
							if not holes[elementHit] then holes[elementHit] = {} end
							if (getElementType (elementHit) == 'player' or getElementType (elementHit) == 'ped') then
							--local parte = getNearestBone (elementHit, cx,cy,cz)
							--local size = properties.bullethole
							--local material = textures[nome][math.random (#textures[nome])]
							--table.insert (holes[getElementType (elementHit) == 'ped' and source or elementHit], {final = {px,py,pz}, autor = source, parte = parte, size = size, element = elementHit, material = material, posicao = {cx,cy,cz}, normal = {nx,ny, nz}, object = object, timer = getTickCount ()})
								--if properties.piercing > 0.1 then
								local x,y,z = cx,cy,cz
								local hit, cx, cy, cz, elementHit, nx,ny, nz, _, iluminacao, parte, modelo, mx,my,mz,mrx,mry,mrz, lodID = processLineOfSight (cx,cy,cz, px, py,pz, true, true, true, true, false, false, false, false, elementHit, true, true )
									if hit then
										if not elementHit then
											if cx and cy and cz then
											local dist = getDistanceBetweenPoints3D (x,y,z, cx,cy,cz)
												if dist <= (properties.force*10) then
												table.insert (holes[source], {final = {px,py,pz}, autor = source, size = properties.bullethole, material = textures[nome][math.random (#textures[nome])], posicao = {cx,cy,cz}, normal = {nx,ny, nz}, object = object, timer = getTickCount ()})
													if pre == 0 then
													pre = 1
													removeEventHandler ("onClientPreRender", root, renderBullethole)
													addEventHandler ("onClientPreRender", root, renderBullethole)
													end
												end
											end
										end
									end
								--end
							elseif (getElementType (elementHit) == 'vehicle' or getElementType (elementHit) == 'object') then
							local nx,ny,nz = getPositionOffsetElement(elementHit,nx,ny,nz,true)
							local cx,cy,cz = getOffsetsInElementOrientation(elementHit,cx,cy,cz)
							table.insert (holes[getElementType (elementHit) == 'vehicle' and source or elementHit], {final = {px,py,pz}, autor = source, parte = getNearestBone (elementHit, cx,cy,cz), size = properties.bullethole, element = elementHit, material = textures[nome][math.random (#textures[nome])], posicao = {cx,cy,cz}, normal = {nx,ny, nz}, object = object, timer = getTickCount ()})
								if pre == 0 then
								pre = 1
								removeEventHandler ("onClientPreRender", root, renderBullethole)
								addEventHandler ("onClientPreRender", root, renderBullethole)
								end
							end
						else
						--fxAddGunshot (cx,cy,cz, nx,ny,nz, false)
						fxCreateParticle ('blood', cx,cy,cz, nx,ny,nz, 100,100,100,255, false, 100, 1, 0.5, false, 1)
						table.insert (holes[source], {final = {px,py,pz}, autor = source, size = properties.bullethole, material = textures[nome][math.random (#textures[nome])], posicao = {cx,cy,cz}, normal = {nx,ny, nz}, object = object, timer = getTickCount ()})
							if pre == 0 then
							pre = 1
							removeEventHandler ("onClientPreRender", root, renderBullethole)
							addEventHandler ("onClientPreRender", root, renderBullethole)
							end
						end
					end
				end
			end
			
			if elementHit then
				if elementHit == localPlayer or source == localPlayer and holes[elementHit] then
				local a = #holes[elementHit]
				--triggerServerEvent ('updateBulletholes', getElementType (elementHit) == 'player' and elementHit or source, holes[elementHit][a])
				end
			else
			local a = holes[source]
			--triggerServerEvent ('updateBulletholes', source, holes[source][a])
			end
		end
	end
end
addEventHandler ("bulletImpact", getRootElement(), bulletImpact)

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

addEventHandler ('onClientElementDestroy', getRootElement(), function ()
	for jogador, tab in pairs (holes) do
		if isElement (jogador) and source == jogador then
			for item, valor in pairs (tab) do
			local element = valor.element
				if element then
					if isElement (element) and element == source then
					table.removeValue (tab, item)
					end
				else
				end
			end
		else
		table.removeValue (holes, jogador)
		end
	end
end)

function renderBullethole ()

	for jogador, tab in pairs (holes) do
		if isElement (jogador) then
			for item, valor in pairs (tab) do
			local object = valor.object
			local timer = valor.timer
			local tick = getTickCount ()
			local r = tick - timer
				if r > despawn then
				table.remove (holes[jogador], item)
					if #holes[jogador] <= 0 then
					holes[jogador] = nil
						if #holes <= 0 then
						removeEventHandler ("onClientPreRender", root, renderBullethole)
						end
					end
				end
			local size = valor.size
				if size then
					if size == true then
					size = 1
					end
				end
			local size = size*0.05
			local x,y,z = unpack (valor.posicao)
			local nx,ny,nz = unpack (valor.normal)
			local surface = valor.material
			local element = valor.element
			local value = 0.01
				if element then
					if isElement (element) and isElementOnScreen (element) then
						if getElementType (valor.element) == 'ped' or getElementType (valor.element) == 'player' then 
						value = 0.02
						x,y,z = getElementBonePosition (element, valor.parte)
							 if boneDist[valor.parte] then
							 value = boneDist[valor.parte]
							 end
						elseif getElementType (valor.element) == 'vehicle' then
						x,y,z = getPositionOffsetElement(element,x,y,z)
						end
					local nx,ny,nz = getPositionOffsetElement(element,nx,ny,nz,true)
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
						if valor.element then
							if isElement(valor.element) then
								if getElementType (valor.element) == 'ped' or getElementType (valor.element) == 'player' then 
								x,y,z = getElementRotation (getCamera())
								end
							end
						end
					dxDrawMaterialLine3D(mx,my,mz,px,py,pz,surface,size*2,tocolor(255,255,255),false, x,y+180,z+180)
					else
					end
				else
				local dir = math.rad(getAngleBetweenPoints2D(0,0,nx,ny))
				x = x + 0.01*nx
				y = y + 0.01*ny
				z = z + 0.01*nz
				local xrad = 0.05*nz*math.sin(dir)
				local yrad = -0.05*nz*math.cos(dir)
				local zrad = 0.05*math.sqrt(nx^2+ny^2)
				dxDrawMaterialLine3D(x-xrad,y-yrad,z-zrad,x+xrad,y+yrad,z+zrad,surface,size*2,tocolor(255,255,255),x-xrad+nx,y-yrad+ny,z-zrad+nz)
				end
			end
		else
			if #tab <= 0 then
			removeEventHandler ("onClientPreRender", root, renderBullethole)
			else
			end
		end
	end
end

function bulletHoleSpawn()
	if holes[source] then
	table.removeValue (holes, holes[source])
	end
end
--addEventHandler("onClientPlayerSpawn",root,bulletHoleSpawn)
			
end

end
bulletHoleIni ()
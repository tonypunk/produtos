

--Eventos
addEvent("PUNKRoadRageDummyDano", true)
addEvent ("PUNKRoadRageSoundOnPosition", true)
addEvent ("PUNKRoadRageCriarSangue", true)

--Client
if isElement(localPlayer) then

function receber ()
	--if source ~= localPlayer then return end
PUNKModAtivado = true
atacando = {}
porradaShape = {}
tempoDelay = {}
tabelaAtivos = {}
armas = {}
motorista = {}
slot = {}
wep = {}
grupo = {}
animacao = {}
prog = {}

componenteTipo = {}
carrosRenderizados = {}
veiculoComponentes = {}
vidaComponentes = {}
minDist = 50

carrosRenderizados = {}
veiculoComponentes = {}

animtable = {}

ids = {
    0, 1, 2, 3, 4, 5, 6, 7, 8, 21,
    22, 23, 24, 25, 26, 31, 32, 33,
    34, 35, 36, 41, 42, 43, 44, 51,
    52, 53, 54, 201, 301, 302
}

function copiarAnimacao (ped1, ped2)
    if not ped2 then
        for i=1, #animtable do
        local p1 = animtable[i][1]
            if p1 == ped1 then
            table.remove (i)
			dummy[dummy[p1]] = nil
			--detachElements(ped1)
            break
            end
        end
        if #animtable <= 0 then
        removeEventHandler ("onClientPreRender", root, copiarAnimRender)
        end
    else
        if #animtable <= 0 then
        addEventHandler ("onClientPreRender", root, copiarAnimRender)
        end
	--attachElements(ped1, ped2)
    table.insert (animtable, {ped1, ped2})
    end
end

function copiarAnimRender ()
    for i=1, #animtable do
		if animtable[i] then
		local ped1 = animtable[i][1]
		local ped2 = animtable[i][2]
			if isElement (ped1) and isElementOnScreen (ped1) and isElement (ped2) and isElementOnScreen (ped2) then
			local x,y,z = getElementPosition (ped2)
			local rot3 = getPedRotation (ped2)
			local x = x + ((math.cos(math.rad(rot3 + 90))) * 0.25) 
			local y = y + ((math.sin(math.rad(rot3 + 90))) * 0.25) 
			setElementPosition (ped1, x,y,z)
			setPedRotation (ped1, rot3, true)
			local tabela = {}
				for k=1, #ids do
				local a,b,c = getElementBoneRotation (ped2, ids[k])
				table.insert (tabela, {id = ids[k], a = a, b = b, c = c})
				end
				for j=1, #tabela do
					if tabela[j].id and tabela[j].a and tabela[j].b and tabela[j].c then
					setElementBoneRotation (ped1, tabela[j].id, tabela[j].a, tabela[j].b, tabela[j].c)
					end
				end
			--updateElementRpHAnim (ped1)
			else
			table.remove (animtable, i)
				if #animtable <= 0 then
				removeEventHandler ("onClientPreRender", root, copiarAnimRender)
				end
			end
		else
		table.remove (animtable, i)
            if #animtable <= 0 then
            removeEventHandler ("onClientPreRender", root, copiarAnimRender)
            end
        end
    end
end

addEventHandler ("onClientPreRender", root, function ()
	if isElement (getElementData(localPlayer, "PUNKRoadRageCol")) then
		if isPedInVehicle(localPlayer) then
			if acertar ~= true then
			local pos = localPlayer:getPosition()
			local posC = getElementData(localPlayer, "PUNKRoadRageCol"):getPosition()
			local rot = findRotation (pos.x,pos.y,posC.x,posC.y)
			local posA = localPlayer:getPosition()
			local tx, ty, tz = getElementPosition (localPlayer)
			local px = posA.x + ((math.cos(math.rad(rot + 90))) * 2) 
			local py = posA.y + ((math.sin(math.rad(rot + 90))) * 2)
				if localPlayer:getOccupiedVehicle() then
				local veiculo = localPlayer:getOccupiedVehicle()
				local pz = tz
					if isElement(veiculo) and (veiculo:getVehicleType() == "Bike" or veiculo:getVehicleType() == "BMX" or veiculo:getVehicleType() == "Quad") then
					pz = tz-0.5	
					end
					hit, tx,ty,tz, elementHit = processLineOfSight ( px, py, pz, posA.x, posA.y, posA.z+0.5 )
					--dxDrawLine3D (tx,ty,tz, px,py,pz)
					if hit then
						if elementHit and isElement(elementHit) and elementHit:getType() == "vehicle" then
							if elementHit ~= veiculo then
							--createColSphere (px,py,pz, 1)
							local parte = encontrarParte (elementHit, localPlayer, getElementPosition (getElementData(localPlayer, "PUNKRoadRageCol")))
							local ax,ay,az = getVehicleComponentPosition (elementHit, parte)
							local px,py,pz = getPositionFromElementOffset(elementHit,ax,ay,az)
							acertar = true
							triggerServerEvent ("PUNKRoadRageAcertarParte", localPlayer, elementHit, parte, localPlayer, 10, px,py,pz)
								setTimer (function ()
								acertar = nil
								end, 500, 1)
							end
						end
					end
				end
			end
		end
	else
		if getElementData(localPlayer, "PUNKRoadRageCol") then
		setElementData (localPlayer, "PUNKRoadRageCol", nil, true)
		end
	end
end)

ids = {
    0, 1, 2, 3, 4, 5, 6, 7, 8, 21,
    22, 23, 24, 25, 26, 31, 32, 33,
    34, 35, 36, 41, 42, 43, 44, 51,
    52, 53, 54, 201, 301, 302
}

pos = {}
dummy = {}

function dataChange (data, antigo, novo)
local jogador = source
	if data == "PUNKRoadRage" then
		if novo and novo.elemento ~= nil then
			if novo.elemento ~= dummy[jogador] then
			dummy[jogador] = novo.elemento
			copiarAnimacao (dummy[jogador], jogador)
				if isElement(getPedOccupiedVehicle (jogador)) then
				setElementCollidableWith (dummy[jogador], getPedOccupiedVehicle (jogador), false)
				end
				setElementCollidableWith (dummy[jogador], jogador, false)
				if dummy[jogador] then
				dummy[dummy[jogador]] = jogador
				end
			end
		else
		dummy[jogador] = nil
		copiarAnimacao (dummy[jogador])
		end
		--if novo and novo.bone then
		--pos[jogador] = novo.bone
		--local x,y,z = getElementPosition (jogador)
		--local rot1, rot2, rot3 = getElementRotation (jogador)
		--local x = x + ((math.cos(math.rad(rot3 + 90))) * 0.25) 
		--local y = y + ((math.sin(math.rad(rot3 + 90))) * 0.25) 
		--setElementPosition (dummy[jogador], x,y,z)
		--setElementRotation (dummy[jogador], rot1, rot2, rot3, "default", true)
		--setElementCollidableWith (dummy[jogador], jogador, false)
		--end
	end
end
addEventHandler ("onClientElementDataChange", getRootElement(), dataChange)

function changeBoneRotation()
local jogadores = getElementsByType ("player")
	if jogadores and #jogadores > 0 then
		for i=1, #jogadores do
		local jogador = jogadores[i]
		local d = getElementData (jogador, "PUNKRoadRage")
		local elemento = d.elemento
				if isElement(getPedOccupiedVehicle (jogador)) then
				setElementCollidableWith (elemento, getPedOccupiedVehicle (jogador), false)
				end
			if isElement(elemento) then
				if jogador == localPlayer then
				local data = getElementData (localPlayer, "PUNKRoadRage")
					if data and data.elemento then
					data = nil
					data = getElementData (localPlayer, "PUNKRoadRage")
					local tabela = {}
						for i=1, #ids do
						local a,b,c = getElementBoneRotation (localPlayer, ids[i])
						table.insert (tabela, {id = ids[i], a = a, b = b, c = c})
						end
					data.bone = tabela
					setElementData (localPlayer, "PUNKRoadRage", data, true)
					end
				end
			local bone = d.bone
				if bone ~= nil then
				local tabela = bone
					for j=1, #tabela do
						if tabela[j] then
						setElementBoneRotation (elemento, tabela[j].id, tabela[j].a, tabela[j].b, tabela[j].c) 
						end
						if j == #tabela then
						updateElementRpHAnim (elemento)
						end
					end
				end
			end
		end
	end
	
end
--addEventHandler("onClientPedsProcessed", root, changeBoneRotation)

function pedsProcessed ()
	
local jogadores = getElementsByType ("player")
	for i=1, #jogadores do
	local jogador = jogadores[i]
		if isElement (dummy[jogador]) then
			if isPedInVehicle(jogador) then
				if isPedDoingGangDriveby (jogador) then
					--if dummy[jogador]:getAlpha () ~= 0 then
					--setElementAlpha (dummy[jogador], 0)
					--end
				local x,y,z = getElementPosition (jogador)
				local rot1, rot2, rot3 = getElementRotation (jogador)
				local x = x + ((math.cos(math.rad(rot3 + 90))) * 0.25) 
				local y = y + ((math.sin(math.rad(rot3 + 90))) * 0.25) 
				setElementPosition (dummy[jogador], x,y,z)
				setElementRotation (dummy[jogador], rot1, rot2, rot3, "default", true)
				else
				dummy[dummy[jogador]] = nil
				dummy[jogador]:destroy()
				dummy[jogador] = nil
				end
			else
				if jogador == localPlayer then
					if isElement(dummy[jogador]) and isPedDead(dummy[jogador]) then
					data = nil
					data = getElementData (localPlayer, "PUNKRoadRage")
					data.elemento = nil
					setElementData (localPlayer, "PUNKRoadRage", data, true)
					end
				end
			end
		end
	end
	--
	if isElement (getElementData(localPlayer, "PUNKRoadRageCol")) then
		if localPlayer:isInVehicle() then
			if acertar ~= true then
			local pos = localPlayer:getPosition()
			local posC = getElementData(localPlayer, "PUNKRoadRageCol"):getPosition()
			local rot = findRotation (pos.x,pos.y,posC.x,posC.y)
			local posA = localPlayer:getPosition()
			local tx, ty, tz = getElementPosition (localPlayer)
			local px = posA.x + ((math.cos(math.rad(rot + 90))) * 2) 
			local py = posA.y + ((math.sin(math.rad(rot + 90))) * 2)
				if localPlayer:getOccupiedVehicle() then
				local veiculo = localPlayer:getOccupiedVehicle()
				local pz = tz
					if isElement(veiculo) and (veiculo:getVehicleType() == "Bike" or veiculo:getVehicleType() == "BMX" or veiculo:getVehicleType() == "Quad") then
					pz = tz-0.5	
					end
					hit, tx,ty,tz, elementHit = processLineOfSight ( px, py, pz, posA.x, posA.y, posA.z+0.5 )
					--dxDrawLine3D (tx,ty,tz, px,py,pz)
					if hit then
						if elementHit and isElement(elementHit) and elementHit:getType() == "vehicle" then
							if elementHit ~= veiculo then
							--createColSphere (px,py,pz, 1)
							local parte = encontrarParte (elementHit, localPlayer, getElementPosition (v))
							local ax,ay,az = getVehicleComponentPosition (elementHit, parte)
							local px,py,pz = getPositionFromElementOffset(elementHit,ax,ay,az)
							acertar = true
							triggerServerEvent ("PUNKRoadRageAcertarParte", localPlayer, elementHit, parte, localPlayer, 10, px,py,pz)
								setTimer (function ()
								acertar = nil
								end, 500, 1)
							end
						end
					end
				end
			end
		end
	else
		if getElementData(localPlayer, "PUNKRoadRageCol") then
		setElementData (localPlayer, "PUNKRoadRageCol", nil, true)
		end
	end
end
--addEventHandler ("onClientPreRender", root, pedsProcessed)

function encontrarParte (veiculo, jogador, px,py,pz)
local distancia = 50
local minimaDistancia = distancia-0.0001
componente = false
local a,b,rot = getElementRotation(jogador)
	local componentes = getVehicleComponents(veiculo)
    if veiculo and isElement(veiculo) and getElementType(veiculo) == "vehicle" then
		for k in pairs (componentes) do
		--for i = 1, #componentes do
		local a,b,c = getVehicleComponentPosition(veiculo, k)
		local x,y,z = getPositionFromElementOffset(veiculo,a,b,c)
		local dist = getDistanceBetweenPoints3D (x,y,z,px,py,pz)
			if dist < distancia then
				if dist < minimaDistancia  then
				minimaDistancia = dist
				componente = k
				end
			end
		end
	end
	--triggerServerEvent ("PUNKRoadRageBuscarComponenteRetorno", jogador, veiculo, componente) 
	return componente
end

function componenteEfeito (alvo, comp)
	if alvo and isElement(alvo) and getElementType(alvo) == "vehicle" then
	local a,b,c = getVehicleComponentPosition(alvo, comp)
	local x,y,z = getPositionFromElementOffset(alvo,a,b,c)
	createEffect ("gunflash",x,y,z+0.5,0,0,0,90)
	end
end
addEvent ("PUNKRoadRageBuscarComponenteEfeito", true)
addEventHandler ("PUNKRoadRageBuscarComponenteEfeito", getRootElement(), componenteEfeito)

colGeral = {}
function acertou (agressor, arma, parte, perda)
	if dummy[source] then alvo = dummy[source] else return end
	if agressor == alvo then cancelEvent() return end
	if agressor ~= localPlayer and alvo ~= localPlayer then return end
	local veiculo = getPedOccupiedVehicle (alvo)
		if isElement(veiculo) and veiculo == agressor or veiculo == getPedOccupiedVehicle(agressor) then cancelEvent() return end
	cancelEvent()
		if headshot == true then
			if parte == 9 then
			--setPedAnimation (alvo, "ped", "bike_fall_off", -1, false, true, false, true)
			triggerServerEvent ("PUNKHeadshotMatarJogador", alvo, alvo, agressor, arma, parte, perda)
			return
			end
		end
	local vida = getElementHealth (alvo) - perda
	if vida > perda then
	setElementHealth (alvo, vida - perda)
		if isElement (dummy[alvo]) then setElementHealth (dummy[alvo], vida - perda) end
	else
	triggerServerEvent ("PUNKRoadRageDummyDano", alvo, agressor, arma, parte)
	end
end
addEventHandler("onClientPedDamage", getRootElement (), acertou)

local HS = getResourceFromName("PUNKHeadshot")
if HS and getResourceState(HS) == "running" then	
	headshot = true
end
function headshotLigar (r)
	if r == getResourceFromName("PUNKHeadshot") then
		if eventName == "onClientResourceStart" then
		headshot = true
		else
		headshot = false
		end
	end
end
addEventHandler ("onClientResourceStart", getRootElement(), headshotLigar)
addEventHandler ("onClientResourceStop", getRootElement(), headshotLigar)

function criarSangue (alvo,dano)
	local number = {3, 4, 5, 6, 7, 8} 
	local posicoesCostas = number [ math.random ( #number ) ] 
	local px,py,pz = getPedBonePosition (alvo, posicoesCostas)
	fxAddBlood ( px,py,pz, 0,0,0, dano*2, 1)
end
addEventHandler ("PUNKRoadRageCriarSangue", getRootElement(), criarSangue)

--armas
function switch(anterior, novo)
	local a,b =  getPedTask ( getLocalPlayer(), "primary", 3 )
	if a == "TASK_COMPLEX_LEAVE_CAR" and b == "TASK_SIMPLE_CAR_GET_OUT" then
	cancelEvent()
	end
	if atacando == true then
	setPedWeaponSlot(localPlayer, anterior)
	end
end
addEventHandler ("onClientPlayerWeaponSwitch", root, switch)

function disparo (arma, municao, pente, x,y,z,alvo,px,py,pz)
local jogador = source
	if jogador == localPlayer then
		if isPedDoingGangDriveby(jogador) == true then
			if delay[tostring(arma)] then
			toggleControl ("fire", false)
			toggleControl ("vehicle_fire", false)
				tempoDelay[jogador] = setTimer (function ()
				toggleControl ("fire", true)
				toggleControl ("vehicle_fire", true)
				end, delay[tostring(arma)], 1)
			end
			--[[
			if municao == 1 then
				if isPedDoingGangDriveby (jogador) then
				return
				setPedDoingGangDriveby(jogador, false)
				end
			end]]
			if pente == 0 then
			triggerServerEvent ("PUNKRoadRageReload", jogador)
			end
		end
	end
end
addEventHandler ("onClientPlayerWeaponFire", root, disparo)

function parou ()
	if getPedControlState ("fire") ~= true then
	toggleControl ("fire", true)
	end
	if getPedControlState ("vehicle_fire") ~= true then
	toggleControl ("vehicle_fire", true)
	end
	if atacando == true then setPedAnimation (localPlayer) end
	setPedDoingGangDriveby(localPlayer, false)
	if getElementData(localPlayer, "PUNKRoadRageCol") then
	setElementData (localPlayer, "PUNKRoadRageCol", nil, true)
	end
	if getElementData(localPlayer, "PUNKRoadRage") then
	setElementData (localPlayer, "PUNKRoadRage", nil, true)
	end
end
addEventHandler ("onClientResourceStop", root, parou)

function soundOnPosition (fonte, grupo, id1, id2, x,y,z, loop, volume)
	local som = playSFX3D (grupo, id1, id2, x,y,z, lopp)
	local dim, int = getElementDimension (fonte), getElementInterior (fonte)
	setElementDimension (som, dim)
	setElementInterior (som, dim)
		if volume then
		setSoundVolume (som, volume)
		end
end
--addEvent ("PUNKRoadRageSoundOnPosition", true)
addEventHandler ("PUNKRoadRageSoundOnPosition", getRootElement(), soundOnPosition)

function getPositionFromElementOffset(element,offX,offY,offZ)
    local m = getElementMatrix ( element )  -- Get the matrix
    local x = offX * m[1][1] + offY * m[2][1] + offZ * m[3][1] + m[4][1]  -- Apply transform
    local y = offX * m[1][2] + offY * m[2][2] + offZ * m[3][2] + m[4][2]
    local z = offX * m[1][3] + offY * m[2][3] + offZ * m[3][3] + m[4][3]
    return x, y, z                               -- Return the transformed point
end

function findRotation( x1, y1, x2, y2 ) 
    local t = -math.deg( math.atan2( x2 - x1, y2 - y1 ) )
    return t < 0 and t + 360 or t
end

--
end
addEvent ("PUNKRoadRageReceber", true)
addEventHandler ("PUNKRoadRageReceber", getRootElement(), receber)

end

--Server
if isElement (localPlayer) == false then

jogadoresProntos = {}
temporizador = {}
function adicionarJogador (mod)
	if mod ~= getThisResource() then return end
table.insert (jogadoresProntos, source)
end
addEventHandler ("onPlayerResourceStart", getRootElement(), adicionarJogador)

function removerJogador ()
local jogador = source
	for i=1, #jogadoresProntos do
		if jogadoresProntos[i] == jogador then
		table.remove (jogadoresProntos, i)
		break
		end
	end
end
addEventHandler ("onPlayerQuit", getRootElement(), removerJogador)

function iniciando ()
atacando = {}
porradaShape = {}
tempoDelay = {}
tabelaAtivos = {}
armas = {}
motorista = {}
slot = {}
wep = {}
grupo = {}
animacao = {}
prog = {}

golpe = {}
vidaComponentes = {}
temporizadorParte = {}
motorFundido = {}
lanternaQuebrada = {}
janelaQuebrada = {}
vidaPortas = {}
colisaoVeiculo = {}
carrosRenderizados = {}

tempoPorta = {}
anims = {
--bikes
[509] = {animCimaE = {group = "bmx", anim = "bmx_driveby_lhs"}, animCimaD = {group = "bmx", anim = "bmx_driveby_rhs"}, animBaixoE = {group = "bmx", anim ="bmx_left"}, animBaixoD = {group = "bmx", anim = "bmx_right"}},
[510] = {animCimaE = {group = "bmx", anim = "bmx_driveby_lhs"}, animCimaD = {group = "bmx", anim = "bmx_driveby_rhs"}, animBaixoE = {group = "bmx", anim ="bmx_left"}, animBaixoD = {group = "bmx", anim = "bmx_right"}},
[481] = {animCimaE = {group = "bmx", anim = "bmx_driveby_lhs"}, animCimaD = {group = "bmx", anim = "bmx_driveby_rhs"}, animBaixoE = {group = "bmx", anim ="bmx_left"}, animBaixoD = {group = "bmx", anim = "bmx_right"}},


--sport
--soco
[581] = {animCimaE = {group = "bikes", anim = "bikes_drivebylhs"}, animCimaD = {group = "bikes", anim = "bikes_drivebyrhs"}, animBaixoE = {group = "biked", anim ="biked_left"}, animBaixoD = {group = "biked", anim = "biked_right"}},
[521] = {animCimaE = {group = "bikes", anim = "bikes_drivebylhs"}, animCimaD = {group = "bikes", anim = "bikes_drivebyrhs"}, animBaixoE = {group = "biked", anim ="biked_left"}, animBaixoD = {group = "biked", anim = "biked_right"}},
[522] = {animCimaE = {group = "bikes", anim = "bikes_drivebylhs"}, animCimaD = {group = "bikes", anim = "bikes_drivebyrhs"}, animBaixoE = {group = "biked", anim ="biked_left"}, animBaixoD = {group = "biked", anim = "biked_right"}},
[461] = {animCimaE = {group = "bikes", anim = "bikes_drivebylhs"}, animCimaD = {group = "bikes", anim = "bikes_drivebyrhs"}, animBaixoE = {group = "biked", anim ="biked_left"}, animBaixoD = {group = "biked", anim = "biked_right"}},
[523] = {animCimaE = {group = "bikes", anim = "bikes_drivebylhs"}, animCimaD = {group = "bikes", anim = "bikes_drivebyrhs"}, animBaixoE = {group = "biked", anim ="biked_left"}, animBaixoD = {group = "biked", anim = "biked_right"}},
[586] = {animCimaE = {group = "bikes", anim = "bikes_drivebylhs"}, animCimaD = {group = "bikes", anim = "bikes_drivebyrhs"}, animBaixoE = {group = "biked", anim ="biked_left"}, animBaixoD = {group = "biked", anim = "biked_right"}},

--wayfarer
[586] = {animCimaE = {group = "wayfarer", anim = "wf_drivebylhs"}, animCimaD = {group = "wayfarer", anim = "wf_drivebyrhs"}, animBaixoE = {group = "biked", anim ="biked_left"}, animBaixoD = {group = "biked", anim = "biked_right"}},
--
--freeway
[463] = {animCimaE = {group = "bikeh", anim = "bikeh_drivebylhs"}, animCimaD = {group = "bikeh", anim = "bikeh_drivebyrhs"}, animBaixoE = {group = "bikeh", anim ="bikeh_left"}, animBaixoD = {group = "bikeh", anim = "bikeh_right"}},
--

--sanchez
[468] = {animCimaE = {group = "biked", anim = "biked_drivebylhs"}, animCimaD = {group = "biked", anim = "biked_drivebyrhs"}, animBaixoE = {group = "biked", anim ="biked_left"}, animBaixoD = {group = "biked", anim = "biked_right"}},
--

--faggio
[462] = {animCimaE = {group = "bikev", anim = "bikev_drivebylhs"}, animCimaD = {group = "bikev", anim = "bikev_drivebyrhs"}, animBaixoE = {group = "bmx", anim ="bmx_left"}, animBaixoD = {group = "bmx", anim = "bmx_right"}},
[448] = {animCimaE = {group = "bikev", anim = "bikev_drivebylhs"}, animCimaD = {group = "bikev", anim = "bikev_drivebyrhs"}, animBaixoE = {group = "bmx", anim ="bmx_left"}, animBaixoD = {group = "bmx", anim = "bmx_right"}},

--quad
[471] = {animCimaE = {group = "quad", anim = "quad_driveby_lhs"}, animCimaD = {group = "quad", anim = "quad_driveby_rhs"}, animBaixoE = {group = "biked", anim ="biked_left"}, animBaixoD = {group = "biked", anim = "biked_right"}},


}

animCarro = {
[0] = {"car_rolldoor", 0.33},
[1] = {"driveby_R", 1},
[2] = {"car_rolldoor", 0.33},
[3] = {"driveby_R", 1},
}

function tabelaContem (tabela, item)
	if tabela and #tabela > 0 then
		for i=1, #tabela do
			if tabela[i] == item then
			return true
			end
		end
	end
end

function table.contain (tabela, item)
	for index, value in ipairs(tabela) do
		if value == item then
		return true
		end
	end
	return false
end

function trocarArma (jogador, botao, estado)
	if isCursorShowing (jogador) then return end
	
	if estado == "down" then estado = true else estado = false end
	if getResourceFromName("PUNKPacifico") and getResourceState(getResourceFromName("PUNKPacifico")) == "running" then
	local pacifico = exports.PUNKPacifico:exportarEstado(jogador) or false
		if pacifico == true then return end
	end
	if estado == true and atacando[jogador] == true then return end
	if estado == false and atacando[jogador] ~= true then return end
	if getPedOccupiedVehicle(jogador) then
	local veiculo = getPedOccupiedVehicle(jogador)
		if table.contain (bloqueados, getElementModel(veiculo)) then return end
		if checarCondicoes (jogador) == true then
			if (botao == "e") and estado then
				if getVehicleType (veiculo) == "Bike" or getVehicleType (veiculo) == "Quad" or getVehicleType (veiculo) == "BMX" then
					if isTimer (tempoDelay[jogador]) then
					return
					end
					weapons = nil
					weapons = obterArmas (jogador,true)
				else
				weapons = nil
				weapons = obterArmas (jogador)
				end
				for i=1, #weapons do
					if getPedWeapon (jogador) == weapons[i] then
					local valor = i-1
						if valor < 1 then valor = #weapons end
					slot[jogador] = getSlotFromWeapon(weapons[valor])
					setPedWeaponSlot (jogador, slot[jogador])
					cancelEvent()
					break
					end
				end
			elseif (botao == "q") and estado then
				if getVehicleType (veiculo) == "Bike" or getVehicleType (veiculo) == "Quad" or getVehicleType (veiculo) == "BMX" then
					if isTimer (tempoDelay[jogador]) then
					return
					end
					weapons = nil
					weapons = obterArmas (jogador,true)
				else
				weapons = nil
				weapons = obterArmas (jogador)
				end
				for i = #weapons, 1, -1 do
					if getPedWeapon (jogador) == weapons[i] then
					local valor = i+1
						if valor > #weapons then valor = 1 end
					slot[jogador] = getSlotFromWeapon(weapons[valor])
					setPedWeaponSlot (jogador, slot[jogador])
					cancelEvent()
					break
					end
				end
			end
		end
	end
end

function trocarArtificial (anterior, atual)
	if isPedDoingGangDriveby (source) then
		if table.contain (armasMotorista.atirar, atual) == false and table.contain (armasPassageiro.atirar, atual) == false then
		funcaoDummy (jogador, false)
		end
	else
		if isElement(dummy[source]) then
		funcaoDummy (jogador, false)
		end
	end
end
addEventHandler ( "onPlayerWeaponSwitch", getRootElement ( ), trocarArtificial)

--[[
local veiculo = createVehicle (429, getElementPosition (getElementsByType ("player")[1]))
local ped = createPed (0, getElementPosition (getElementsByType ("player")[1]))



setTimer (function ()
warpPedIntoVehicle (ped, veiculo, 1)
giveWeapon (ped, 29, 30, true)
setTimer (function ()
setPedDoingGangDriveby (ped, true)
end, 500, 1)
end, 5000, 1)
]]


function golpear (jogador, tipo, lado)
	if isCursorShowing (jogador) then return end
	
	if getResourceFromName("PUNKPacifico") and getResourceState(getResourceFromName("PUNKPacifico")) == "running" then
	local pacifico = exports.PUNKPacifico:exportarEstado(jogador) or false
		if pacifico == true then return end
	end
	--estado = not isPedDoingGangDriveby(jogador)
	if isElement(getPedOccupiedVehicle (jogador)) then
	local veiculo = getPedOccupiedVehicle (jogador)
		if table.contain (bloqueados, getElementModel(veiculo)) then return end
		if mirando[jogador] == true then return end
		--if atacando[jogador] == true then return end
		local veiculo = getPedOccupiedVehicle(jogador)
		if not isElement (veiculo) then return end
		if tipo == "golpe" and lado == "direito" then
			if getVehicleType (veiculo) == "Bike" or getVehicleType (veiculo) == "Quad" or getVehicleType (veiculo) == "BMX" then
			weapons = obterArmas (jogador,true)
			else
			weapons = obterArmas (jogador)
			end
			for i=1, #weapons do
				if getPedWeapon (jogador) == weapons[i] then
				
				return
				else
					if getPedWeaponSlot(jogador) == 0 then
					slot[jogador] = getSlotFromWeapon ( weapons[1])
					end
				if not slot[jogador] then slot[jogador] = getSlotFromWeapon(getPedWeapon(jogador)) end
				
				return
				end
			end
		end
	local x,y,z = getElementPosition(jogador) 
	local a,b,rot = getElementRotation(jogador)
		estado = not atacando[jogador]
			if lado == "esquerda" then
			x = x + ((math.cos(math.rad(rot + 115))) * 1) 
			y = y + ((math.sin(math.rad(rot + 115))) * 1)
			x = x + ((math.cos(math.rad(rot - 90))) * 0.5) 
			y = y + ((math.sin(math.rad(rot - 90))) * 0.5)
			direcao = false
			else
			direcao = true
			x = x + ((math.cos(math.rad(rot + 60))) * 1) 
			y = y + ((math.sin(math.rad(rot + 60))) * 1)
			x = x + ((math.cos(math.rad(rot - 90))) * 0.5) 
			y = y + ((math.sin(math.rad(rot - 90))) * 0.5)
			end
		if getVehicleType (veiculo) == "Bike" or getVehicleType (veiculo) == "Quad" or getVehicleType (veiculo) == "BMX" then
			if estado == true then
				if checarCondicoes(jogador) == false then return end
			buscarAnimacao(jogador, veiculo, tipo, lado)
			atacando[jogador] = true
				--colisao
				if isElement (porradaShape[jogador]) then destroyElement(porradaShape[jogador]) end
				if golpe[jogador] == "esquerda" or golpe[jogador] == "direita" then
				setPedAnimation( jogador, grupo[jogador], animacao[jogador],-1,false,false,false,false, -1)
				setPedAnimationProgress ( jogador, animacao[jogador], 1.0)
				end
			porradaShape[jogador] = createColTube (x,y,z-0.5, 0.5,2)
			setElementData (jogador, "PUNKRoadRageCol", porradaShape[jogador], true)
			--triggerClientEvent ("PUNKRoadRageReconhecer", jogador, porradaShape[jogador])
			porradaShape[porradaShape[jogador]] = jogador
			setElementParent (porradaShape[jogador], jogador)
				if direcao == true then
					if lado == "direita" then
					a,b,c = 0.5, 0.5, -0.5
					else
					a,b,c = 0.5, 0.75, -0.5
					end
				else
					if lado == "esquerda" then
					a,b,c = -0.5, 0.5, -0.5
					else
					a,b,c = -0.5, 0.75, -0.5
					end
				end
				attachElements(porradaShape[jogador], jogador, a,b,c-0.5)
			direcao = nil
				--som
				if getPedWeapon (jogador) == 4 or getPedWeapon(jogador) == 8 then
					if lado == "esquerda" or lado == "direita" then
					soundOnPosition (jogador,"genrl", 136, 86, x,y,z, false)
					else
					soundOnPosition (jogador,"genrl", 136, 88, x,y,z, false)
					end
				else
				soundOnPosition (jogador,"genrl", 136, 86, x,y,z, false)
				end
				--
			local tabela = buscarElementos (jogador, veiculo)
				for i=1, #tabela do
				colHit (tabela[i], estado, jogador, true)
					--if i == #tabela then
					--return 
					--end
				end
				if isElement(porradaShape[jogador]) then
					--if isEventHandlerAdded ("onColShapeHit", porradaShape[jogador], colHit) == false then
					addEventHandler ("onColShapeHit", porradaShape[jogador], colHit)
					--end
				end
				--
				if isTimer (tempoDelay[jogador]) then killTimer (tempoDelay[jogador]) end
				tempoDelay[jogador] = setTimer (function ()
					if atacando[jogador] == true then atacando[jogador] = false end
					if isElement (porradaShape[jogador]) then
					destroyElement(porradaShape[jogador])
					end
					if isPedDead(jogador) == false then
					setPedAnimation( jogador )
					end
				end, 300, 1)
			end
		else
			if tipo == "porta" then
			estado = not atacando[jogador]
				if getVehicleDoorState (veiculo, getPedOccupiedVehicleSeat(jogador)+2) == 4 then 
					if estado == true then
						if checarCondicoes(jogador) == true then
						portaQuebrada (jogador, veiculo, lado)
						end
					end
				return
				end
				if estado == true then
					if isTimer (tempoDelay[jogador]) then return end
					if isElement(porradaShape[jogador]) then return end
				atacando[jogador] = estado
					--if getVehicleDoorOpenRatio (veiculo, getPedOccupiedVehicleSeat(jogador)+2) ~= 0 then return end -- > 0.3 soluçao porta nao abrir na batida
				setVehicleDoorOpenRatio ( veiculo, getPedOccupiedVehicleSeat(jogador)+2, 0.7, 150 )
				local x,y,z = getElementPosition (jogador)
				x = x + ((math.cos(math.rad(rot + 115))) * 1) 
				y = y + ((math.sin(math.rad(rot + 115))) * 1)
				buscarAnimacao(jogador, veiculo, lado, estado)
				--colisao
				porradaShape[jogador] = createColTube (x,y,z-0.5, 1,1)
				setElementData (jogador, "PUNKRoadRageCol", porradaShape[jogador], true)
				--triggerClientEvent ("PUNKRoadRageReconhecer", jogador, porradaShape[jogador])
				porradaShape[porradaShape[jogador]] = jogador
				setElementParent (porradaShape[jogador], jogador)
					if getPedOccupiedVehicleSeat (jogador) == 0 then
					a,b,c = -1, 0.5, -0.5
					elseif getPedOccupiedVehicleSeat (jogador) == 1 then
					a,b,c = 1, 0.5, -0.5
					elseif getPedOccupiedVehicleSeat (jogador) == 2 then
					a,b,c = -1, -0.5, -0.5
					elseif getPedOccupiedVehicleSeat (jogador) == 3 then
					a,b,c = 1, -0.5, -0.5
					end
				attachElements(porradaShape[jogador], jogador, a,b,c+0.2)
				soundOnPosition (jogador,"genrl", 131, 40, x,y,z+0.5, false, 0.5)
				local tab = buscarElementos (jogador, veiculo)
					for i=1, #tab do
						colHit (tab[i], estado, jogador, true)
						if i == #tab then
						pegou = true
						end
					end
					if not pegou or pegou ~= true then
						if isElement(porradaShape[jogador]) then
							--if isEventHandlerAdded ("onColShapeHit", porradaShape[jogador], colHit) == false then
							addEventHandler ("onColShapeHit", porradaShape[jogador], colHit)
							--end
						end
					end
					pegou = nil
					if isTimer (tempoDelay[jogador]) then killTimer (tempoDelay[jogador]) end
					tempoDelay[jogador] = setTimer (function ()
						if atacando[jogador] == false then
						atacando[jogador] = false
							if isPedDead(jogador) == false then
							setPedAnimation( jogador )
							end
							if isElement (porradaShape[jogador]) then
							destroyElement(porradaShape[jogador])
							end
						end
					end, 600, 1)
				else
					--if getVehicleDoorOpenRatio (veiculo, getPedOccupiedVehicleSeat(jogador)+2) == 0 then return end
				atacando[jogador] = estado
				setVehicleDoorOpenRatio ( veiculo, getPedOccupiedVehicleSeat(jogador)+2, 0, 150 )
					setTimer (function ()
						if isElement(veiculo) then
						x,y,z = getElementPosition (veiculo)
						else
							if isElement(jogador) then x,y,z = getElementPosition (jogador) else return end
						end
					soundOnPosition (jogador,"genrl", 131, 33, x,y,z+0.5, false, 0.5)
					end, 150, 1)
					if isElement (porradaShape[jogador]) then
					destroyElement(porradaShape[jogador])
					porradaShape[porradaShape[jogador]] = nil
					porradaShape[jogador] = nil
					end
					if isPedDead(jogador) == false then
					setPedAnimation( jogador )
					end
				end
			end
		end
	end
end
addCommandHandler ("golpe", golpear, false)
addCommandHandler ("chute", golpear, false)
addCommandHandler ("porta", golpear, false)

mirando = {}
function driveBy (jogador,tipo, lado)
	if isCursorShowing (jogador) then return end
	
	if getResourceFromName("PUNKPacifico") and getResourceState(getResourceFromName("PUNKPacifico")) == "running" then
	local pacifico = exports.PUNKPacifico:exportarEstado(jogador) or false
		if pacifico == true then return end
	end
	--estado = not isPedDoingGangDriveby(jogador)
	if isElement(getPedOccupiedVehicle (jogador)) then
	local veiculo = getPedOccupiedVehicle (jogador)
		if table.contain (bloqueados, getElementModel(veiculo)) then return end
		if tipo == "mirar" then
		weapons = nil
			if getVehicleController(veiculo) == jogador then
				if table.contain (armasMotorista.atirar, getPedWeapon(jogador)) then
				estado = true
				end
			else
				if table.contain (armasPassageiro.atirar, getPedWeapon(jogador)) then
				estado = true
				end
			end
			if estado == true then
			estado = nil
			slot[jogador] = getSlotFromWeapon (getPedWeapon (jogador))
			setPedWeaponSlot (jogador, 0)
			setPedWeaponSlot (jogador, slot[jogador])
				if getVehicleType (veiculo) == "Bike" or getVehicleType (veiculo) == "Quad" or getVehicleType (veiculo) == "BMX" then
				funcaoDummy (jogador,  not isPedDoingGangDriveby (jogador))
				end
					if not isPedDoingGangDriveby(jogador) == true then
						if golpeE then unbindKey (jogador, golpeE, "down", "golpe", "esquerda") end
						if golpeD then unbindKey (jogador, golpeD, "down", "golpe", "direita") end
						if chuteE then unbindKey (jogador, chuteE, "down", "chute", "esquerda") end
						if chuteD then unbindKey (jogador, chuteD, "down", "chute", "direita") end
						if porta then unbindKey (jogador, porta, "down", "porta") end
					else
						if golpeE then bindKey (jogador, golpeE, "down", "golpe", "esquerda") end
						if golpeD then bindKey (jogador, golpeD, "down", "golpe", "direita") end
						if chuteE then bindKey (jogador, chuteE, "down", "chute", "esquerda") end
						if chuteD then bindKey (jogador, chuteD, "down", "chute", "direita") end
						if porta then bindKey (jogador, porta, "down", "porta") end
					end	
			mirando[jogador] = not isPedDoingGangDriveby (jogador)
			setPedDoingGangDriveby (jogador, not isPedDoingGangDriveby (jogador))
			end
			if getPedAmmoInClip (jogador) <= 0 or getPedTotalAmmo(jogador) <= 0 then
			reload(jogador)
			end
		end
	end
end
addCommandHandler ("mirar", driveBy, false)

addEventHandler ("onPlayerVehicleExit", getRootElement(), function ()
local jogador = source
	mirando[jogador] = false
	if golpeE then bindKey (jogador, golpeE, "down", "golpe", "esquerda") end
	if golpeD then bindKey (jogador, golpeD, "down", "golpe", "direita") end
	if chuteE then bindKey (jogador, chuteE, "down", "chute", "esquerda") end
	if chuteD then bindKey (jogador, chuteD, "down", "chute", "direita") end
	if porta then bindKey (jogador, porta, "down", "porta") end
end)

function buscarElementos(jogador, veiculo)
local elementos = {}
local jogadores = getElementsByType ("player")
	if jogadores and #jogadores > 0 then
		for i=1, #jogadores do
			if jogadores[i] ~= jogador then
				if isPedInVehicle(jogadores[i]) == false or (isPedInVehicle(jogadores[i]) and getPedOccupiedVehicle (jogadores[i]) ~= veiculo) then
					if isElementWithinColShape (jogadores[i], porradaShape[jogador]) then
					table.insert (elementos, jogadores[i])
					end
				end
			end
		end
	end
--[[
local veiculos = getElementsByType ("vehicle")
	if veiculos and #veiculos > 0 then
		for i=1, #veiculos do
			if veiculo ~= veiculos[i] then
				if isElementWithinColShape (veiculos[i], porradaShape[jogador]) then
				table.insert (elementos, veiculos[i])
				end
			end
		end
	end
]]
	return elementos
end

function buscarAnimacao (jogador, veiculo, tipo, lado)
local modelo = getElementModel (veiculo)
	if getVehicleType (veiculo) == "Bike" or getVehicleType (veiculo) == "Quad" or getVehicleType (veiculo) == "BMX" then
	checagem = nil
		if tipo == "golpe" then
			if lado == "esquerda" then
			group, anim = anims[modelo].animCimaE.group, anims[modelo].animCimaE.anim
			prog[jogador] = anims[modelo].animCimaE.p
			else
			group, anim = anims[modelo].animCimaD.group, anims[modelo].animCimaD.anim
			prog[jogador] = anims[modelo].animCimaD.p
			end
		elseif tipo == "chute" then
			if lado == "esquerda" then
			group, anim = anims[modelo].animBaixoE.group, anims[modelo].animBaixoE.anim
			prog[jogador] = anims[modelo].animBaixoE.p
			else
			group, anim = anims[modelo].animBaixoD.group, anims[modelo].animBaixoD.anim
			prog[jogador] = anims[modelo].animBaixoD.p
			end
		end
	golpe[jogador] = tipo
	grupo[jogador], animacao[jogador] = group, anim
	prog[jogador] = 0.2
	else
	grupo[jogador], animacao[jogador] = "ped", animCarro[getPedOccupiedVehicleSeat(jogador)][1]
	prog[jogador] = animCarro[getPedOccupiedVehicleSeat(jogador)][2]
	end
table.insert (tabelaAtivos, jogador)

setPedAnimation( jogador, grupo[jogador], animacao[jogador],-1,false,false,false,false, -1)

	if getVehicleType (veiculo) == "Bike" or getVehicleType (veiculo) == "Quad" or getVehicleType (veiculo) == "BMX" then
	else
		if getVehicleDoorState (veiculo, getPedOccupiedVehicleSeat(jogador)+2) == 4 then
		else
			if isTimer (tempoPorta[jogador]) then killTimer (tempoPorta[jogador]) end
			tempoPorta[jogador] = setTimer (function ()
			setPedAnimationSpeed (jogador, animacao[jogador], 0.0)
			setPedAnimationProgress (jogador, animacao[jogador], prog[jogador])
			end, 200, 1)
		end
	end
end

function checarCondicoes (jogador)
	local veiculo = getPedOccupiedVehicle (jogador)
	if not veiculo then return false end
	if atacando[jogador] == true then return false end
	if isElement(porradaShape[jogador]) then return false end
	if isTimer (tempoDelay[jogador]) then return false end
	if getVehicleType (veiculo) == "Bike" or getVehicleType (veiculo) == "Quad" or getVehicleType (veiculo) == "BMX" then
	local weapons = nil
	local weapons = obterArmas (jogador,true)
		for i=1, #weapons do
			if getPedWeapon (jogador) == weapons[i] or getPedWeapon (jogador) == 0 then
			estado = true
			break
			end
		end
		if not estado or estado ~= true then return false end
		estado = nil
	end
	return true
end

function ativar (a,b, j)
	
	if not j then j = source end
	local jogador = j
		if table.contain (jogadoresProntos, jogador) then
			if golpeE then bindKey (jogador, golpeE, "down", "golpe", "esquerda") end
			if golpeD then bindKey (jogador, golpeD, "down", "golpe", "direita") end
			if chuteE then bindKey (jogador, chuteE, "down", "chute", "esquerda") end
			if chuteD then bindKey (jogador, chuteD, "down", "chute", "direita") end
			if porta then bindKey (jogador, porta, "down", "porta") end
			if apontar then
			unbindKey (jogador, apontar, "both", "mirar")
			bindKey (jogador, apontar, "both", "mirar")
			end
		bindKey (jogador, "e", "down", trocarArma)
		bindKey (jogador, "q", "down", trocarArma)
		triggerClientEvent (jogador, "PUNKRoadRageReceber", jogador)
		else
		local str = tostring (jogador)
			temporizador[str] = setTimer (function ()
				if isElement (jogador) then
					if table.contain (jogadoresProntos, jogador) then
						if golpeE then bindKey (jogador, golpeE, "down", "golpe", "esquerda") end
						if golpeD then bindKey (jogador, golpeD, "down", "golpe", "direita") end
						if chuteE then bindKey (jogador, chuteE, "down", "chute", "esquerda") end
						if chuteD then bindKey (jogador, chuteD, "down", "chute", "direita") end
						if porta then bindKey (jogador, porta, "down", "porta") end
						if apontar then
						unbindKey (jogador, apontar, "both", "mirar")
						bindKey (jogador, apontar, "both", "mirar")
						end
					bindKey (jogador, "e", "down", trocarArma)
					bindKey (jogador, "q", "down", trocarArma)
					triggerClientEvent (jogador, "PUNKRoadRageReceber", jogador)
					killTimer (temporizador[str])
					end
				end
			end, 1000, 0)
		end
end
addEventHandler ("onPlayerLogin", getRootElement(), ativar)

local jogadores = getElementsByType ("player")
	for i=1, #jogadores do
		if isGuestAccount(getPlayerAccount(jogadores[i])) == false then
		ativar(nil,nil,jogadores[i])
		end
	end

function colHit (alvo, estado, agressor, insta)
	if getResourceFromName("PUNKPacifico") and getResourceState(getResourceFromName("PUNKPacifico")) == "running" then
	local pacifico = exports.PUNKPacifico:exportarEstado(alvo) or false
		if pacifico == true then return end
	end
	if not estado or estado == false then return end
	if not agressor then agressor = porradaShape[source] end
		if isElement (agressor) then
		if (alvo ~= agressor) and (getPedOccupiedVehicle(agressor) ~= alvo) then
			if getPedOccupiedVehicle(agressor) then
			local veiculo = getPedOccupiedVehicle(agressor)
				if getElementType (alvo) == "player" and getPedOccupiedVehicle(alvo) and getPedOccupiedVehicle(alvo) == veiculo then return end
				--if getVehicleType (veiculo) == "Bike" or getVehicleType (veiculo) == "BMX" or getVehicleType (veiculo) == "Quad" then
					
				--else
				local state = getVehicleDoorState (veiculo, getPedOccupiedVehicleSeat(agressor)+2)
					if state == 4 then
						
					else
						if not vidaPortas[veiculo] then
						vidaPortas[veiculo] = {
						[0] = 1,
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
						[5] = 1,
						}
						end
						if vidaPortas[veiculo][getPedOccupiedVehicleSeat(agressor)+2] == 1 then
						setVehicleDoorState ( veiculo, getPedOccupiedVehicleSeat(agressor)+2, 2)
						elseif vidaPortas[veiculo][getPedOccupiedVehicleSeat(agressor)+2] == vidaPorta then
						setVehicleDoorState ( veiculo, getPedOccupiedVehicleSeat(agressor)+2, 4)
						setPedAnimation (agressor)
						atacando[agressor] = false
							if isElement (porradaShape[agressor]) then
							destroyElement (porradaShape[agressor])
							end
						end
					vidaPortas[veiculo][getPedOccupiedVehicleSeat(agressor)+2] = vidaPortas[veiculo][getPedOccupiedVehicleSeat(agressor)+2] + 1
						if insta then
						acertar (agressor, alvo)
							if getElementType(alvo) == "player" or getElementType(alvo) == "player" then
							--efeitosBater (agressor, alvo, 10)
							end
							--if isEventHandlerAdded ("onClientColShapeHit", porradaShape[agressor], colHit) then
								if isElement (porradaShape[agressor]) then
								removeEventHandler ("onClientColShapeHit", porradaShape[agressor], colHit)
								end
							--end
						return
						else
						setPedAnimation (agressor)
						setVehicleDoorOpenRatio ( veiculo, getPedOccupiedVehicleSeat(agressor)+2, 0, 150 )
						end
					end
				--end
				--efeitosBater (agressor, alvo, 10)
				acertar (agressor, alvo)
				if getElementType(alvo) == "player" or getElementType(alvo) == "player" then
				
				end
				--if isEventHandlerAdded ("onClientColShapeHit", porradaShape[agressor], colHit) then
				--removeEventHandler ("onClientColShapeHit", porradaShape[agressor], colHit)
				--end
				if atacando[agressor] == true then
				atacando[agressor] = false
					if isElement (porradaShape[agressor]) then
					destroyElement(porradaShape[agressor])
					end
				end
			end
		end
	end
end
addEvent ("PUNKRoadRageColHit", true)
addEventHandler ("PUNKroadRageColHit", getRootElement(), colHit)

function portaQuebrada( jogador, veiculo, tecla)
local x,y,z = getElementPosition(jogador) 
local a,b,rot = getElementRotation(jogador)
	buscarAnimacao(jogador, veiculo, tecla, false)
	atacando[jogador] = true
		--colisao
		if isElement (porradaShape[jogador]) then destroyElement(porradaShape[jogador]) end
		if golpe[jogador] == "q" or golpe[jogador] == "e" then
		setPedAnimation( jogador, grupo[jogador], animacao[jogador],-1,false,false,false,false, -1)
		setPedAnimationProgress ( jogador, animacao[jogador], 1.0)
		end
	porradaShape[jogador] = createColTube (x,y,z-1, 1,1)
	setElementData (jogador, "PUNKRoadRageCol", porradaShape[jogador], true)
	--triggerClientEvent ("PUNKRoadRageReconhecer", jogador, porradaShape[jogador])
	porradaShape[porradaShape[jogador]] = jogador
		if getPedOccupiedVehicleSeat (jogador) == 0 then
		a,b,c = -1, 0.5, -0.5
		elseif getPedOccupiedVehicleSeat (jogador) == 1 then
		a,b,c = 1, 0.5, -0.5
		elseif getPedOccupiedVehicleSeat (jogador) == 2 then
		a,b,c = -1, -0.5, -0.5
		elseif getPedOccupiedVehicleSeat (jogador) == 3 then
		a,b,c = 1, -0.5, -0.5
		end
	attachElements(porradaShape[jogador], jogador, a,b,c+0.2)
		--som
		if getPedWeapon (jogador) == 4 or getPedWeapon(jogador) == 8 then
		soundOnPosition (jogador, "genrl", 136, 88, x,y,z, false)
		else
		soundOnPosition (jogador, "genrl", 136, 86, x,y,z, false)
		end
		--
		local tabela = {}
		local jogadores = getElementsByType ("player")
			for i=1, #jogadores do
				if jogadores[i] ~= jogador then
					local acompanhantes = getVehicleOccupants (veiculo)
					for k=1, #acompanhantes do
						if jogadores[i] ~= acompanhantes[k] then
							if isElementWithinColShape (jogadores[i], porradaShape[jogador]) then
							table.insert (tabela, jogadores[i])
							end
						end
					end
				end
			end
		local veiculos = getElementsByType ("vehicle")
			for i=1, #veiculos do
				if veiculo ~= veiculos[i] then
					if isElementWithinColShape (veiculos[i], porradaShape[jogador]) then
					table.insert (tabela, veiculos[i])
					end
				end
			end
			for i=1, #tabela do
			colHit (tabela[i], true, jogador, true)
			end
		local tabela = nil
		if isElement(porradaShape[jogador]) then
		addEventHandler ("onColShapeHit", porradaShape[jogador], colHit)
		end
		if isTimer (tempoDelay[jogador]) then killTimer (tempoDelay[jogador]) end
		tempoDelay[jogador] = setTimer (function ()
			if atacando[jogador] == true then atacando[jogador] = false end
			if isElement (porradaShape[jogador]) then
			destroyElement(porradaShape[jogador])
			end
			if isPedDead(jogador) == false then
			setPedAnimation( jogador )
			end
		end, 300, 1)
end

function acertar (agressor, alvo)
	if getResourceFromName("PUNKPacifico") and getResourceState(getResourceFromName("PUNKPacifico")) == "running" then
	local pacifico = exports.PUNKPacifico:exportarEstado(alvo) or false
		if pacifico == true then return end
	end
	if isElement (agressor) and isElement(alvo) then
	local arma = getPedWeapon (agressor)
	local vida = getElementHealth (alvo) or 0
		--[[
		if getElementType (alvo) == "player" then
		colete = getPedArmor (alvo)
		end
		if colete and colete > 0 then
		result = colete - dano
			if colete < result then
			setPedHealth (alvo, vida - (result))
			else
				if result > 0 then
				setPedArmor (alvo, result)
				else
				setPedArmor (alvo, 0)
				setElementHealth (alvo, vida - result)
				end
			end
		else
		]]
		if vida > 0 then
		result = vida - dano
			if vida < result then
				if getElementType (alvo) == "player" then
				triggerServerEvent ("dano", alvo, agressor, arma, dano, true)
				elseif getElementType (alvo) == "ped" then
				killPed (alvo, agressor, getPedWeapon(agressor))
				else
				blowVehicle (alvo)
				end
			else
				if getElementType (alvo) == "player" then
				causarDano (alvo, agressor, arma, result)
				else
				setElementHealth(alvo, result)
				end
			end
		end
		efeitosBater(agressor, alvo, dano)
		result = nil
		colete = nil
	end
end

function acertarParte (veiculo, parte, agressor, perda, ax,ay,az)
	if getResourceFromName("PUNKPacifico") and getResourceState(getResourceFromName("PUNKPacifico")) == "running" then
	local pacifico = exports.PUNKPacifico:exportarEstado(veiculo) or false
		if pacifico == true then return end
	end
	if isTimer (temporizadorParte[veiculo]) then return end
	if agressor and getElementType (agressor) == "player" then
	else
		temporizadorParte[veiculo] = setTimer (function ()
		end, 1000, 1)
	end
	if not vidaComponentes[veiculo] then
	vidaComponentes[veiculo] = {
		--portas dianteiras
		["door_lf_dummy"] =	0, -- porta esquerda
		["door_rf_dummy"] = 0, -- porta direita
		--portas traseiras
		["door_rl_dummy"] = 0, -- porta esquerda
		["door_rr_dummy"] = 0, -- porta direita
		--para-choques
		["bump_front_dummy"] = 0, --dianteiro
		["bump_rear_dummy"] = 0, --traseiro
		--capo e porta mala
		["bonnet_dummy"] = 0, -- capo (frontal)
		["boot_dummy"] = 0, -- mala (traseira)
		--vidros
		["windscreen_dummy"] = 0, -- frontal
		["ug_nitro"] = 0, -- traseiro
		--lanternas frontais
		["lanterna_lf"] = 0, -- esquerda
		["lanterna_rf"] = 0, -- direita
		--lanternas traseiras
		["lanterna_lr"] = 0, -- esquerda
		["lantera_rr"] = 0, --direita
		--janela frontais
		["janela_lf"] = 0, -- janela esquerda
		["janela_rf"] = 0, -- janela direita
		--janela traseiras
		["janela_lr"] = 0, -- janela esquerda
		["janela_rr"] = 0, -- janela direita
	}
	end
	vidaComponentes[veiculo][parte] = (vidaComponentes[veiculo][parte] or 0 ) + 1
	if string.match (parte, "door") then
		if parte == "door_rf_dummy" then
		comp = 3
		elseif parte == "door_lf_dummy" then
		comp = 2
		elseif parte == "door_rr_dummy" then
		comp = 5
		elseif parte == "door_lr_dummy" then
		comp = 4
		end
		if getVehicleDoorState (veiculo, comp) ~= 4 then
			if vidaComponentes[veiculo][parte] < (vidaPorta/2) then
			setVehicleDoorState ( veiculo, comp, 2)
			elseif vidaComponentes[veiculo][parte] < (vidaPorta/3) then
			
			else
			setVehicleDoorState ( veiculo, comp, 4)
			end
			--if vidaComponentes[veiculo][parte] < (vidaPorta/2) then
			--setVehiclePanelState (veiculo, comp, 1)
			--elseif vidaComponentes[veiculo][parte] < (vidaPorta/3) then
			--setVehiclePanelState (veiculo, comp, 2)
			--else
			--setVehiclePanelState (veiculo, comp, 3)
			--end
		end
	end
	if parte == "bonnet_dummy" or parte == "boot_dummy" then
		if parte == "bonnet_dummy" then
		comp = 0
		elseif parte == "boot_dummy" then
		comp = 1
		end
		if getVehicleDoorState (veiculo, comp) ~= 4 then
			if vidaComponentes[veiculo][parte] < (vidaPorta/2) then
			setVehicleDoorState ( veiculo, comp, 2)
			elseif vidaComponentes[veiculo][parte] < (vidaPorta/3) then
			--setVehiclePanelState (veiculo, comp, 2)
			else
			setVehicleDoorState ( veiculo, comp, 4)
				if comp == 0 then
				setVehicleEngineState (veiculo, false)
				motorFundido[veiculo] = true
				end
			end
		end
	end
	if parte == "bump_front_dummy" or parte == "bump_rear_dummy" then
		if parte == "bump_front_dummy" then
		comp = 5
		elseif parte == "bump_rear_dummy" then
		comp = 6
		end
		if getVehiclePanelState (veiculo, comp) ~= 3 then
			if vidaComponentes[veiculo][parte] < (vidaPorta/2) then
			setVehiclePanelState (veiculo, comp, 1)
			elseif vidaComponentes[veiculo][parte] < (vidaPorta/3) then
			setVehiclePanelState (veiculo, comp, 2)
			else
			setVehiclePanelState (veiculo, comp, 3)
			end
		end
	end
	if parte == "windscreen_dummy" or parte == "ug_nitro" then
		if parte == "windscreen_dummy" then
		comp = 4
			if getVehiclePanelState (veiculo, comp) ~= 3 then
				if vidaComponentes[veiculo][parte] < (vidaPorta/2) then
				setVehiclePanelState (veiculo, comp, 1)
				elseif vidaComponentes[veiculo][parte] < (vidaPorta/3) then
				setVehiclePanelState (veiculo, comp, 2)
				else
				setVehiclePanelState (veiculo, comp, 3)
				end
			end
		elseif parte == "ug_nitro" then
		comp = 1
			if getVehiclePanelState (veiculo, comp) ~= 3 then
				if vidaComponentes[veiculo][parte] < (vidaPorta/2) then
				setVehiclePanelState (veiculo, comp, 1)
				elseif vidaComponentes[veiculo][parte] < (vidaPorta/3) then
				setVehiclePanelState (veiculo, comp, 2)
				else
				setVehiclePanelState (veiculo, comp, 3)
				--triggerClientEvent ("PUNKRoadRageDestruirParte", root, veiculo, parte, perda)
				end
			end
		end
	end
	if parte == "lanterna_lf" or parte == "lanterna_rf" or parte == "lanterna_lr" or parte == "lantera_rr" then
		if parte == "lanterna_lf" then
		comp = 0
		elseif parte == "lanterna_rf" then
		comp = 1
		elseif parte == "lanterna_lr" then
		comp = 3
		elseif parte == "lantera_rr" then
		comp = 2
		end
		if getVehicleLightState (veiculo, comp) ~= 1 then
			if vidaComponentes[veiculo][parte] < (vidaPorta/2) then
			--setVehiclePanelState (veiculo, comp, 1)
			elseif vidaComponentes[veiculo][parte] < (vidaPorta/3) then
			--setVehiclePanelState (veiculo, comp, 2)
			else
			setVehicleLightState (veiculo, comp, 1)
			--lanternaQuebrada[veiculo][parte] = true
			end
		end
	end
	if parte == "janela_lf" or parte == "janela_rf" or parte == "janela_lr" or parte == "janela_rr" then
		if parte == "janela_lf" then
		comp = 0
		elseif parte == "janela_rf" then
		comp = 1
		elseif parte == "janela_lr" then
		comp = 3
		elseif parte == "janela_rr" then
		comp = 2
		end
		if vidaComponentes[veiculo][parte] < (vidaPorta/2) then
		--setVehiclePanelState (veiculo, comp, 1)
		elseif vidaComponentes[veiculo][parte] < (vidaPorta/3) then
		--setVehiclePanelState (veiculo, comp, 2)
		else
		--triggerClientEvent ("PUNKRoadRageDestruirParte", root, veiculo, parte, perda)
		--setVehicleLightState (veiculo, comp, 1)
		--janelaQuebrada[veiculo][parte] = true
		end
	end
	colHit (veiculo, true, agressor)

	local number = {0,1,2,3}
	local som = number [ math.random ( #number ) ] 
	soundOnPosition (veiculo, "script", 87, som, ax,ay,az, false)
	triggerClientEvent (jogadoresProntos, "PUNKRoadRageBuscarComponenteEfeito", root, veiculo, parte)
end
addEvent ("PUNKRoadRageAcertarParte", true)
addEventHandler ("PUNKRoadRageAcertarParte", getRootElement(), acertarParte)

function efeitosBater(agressor, alvo, dano)
local x,y,z = getElementPosition(agressor) 
local px,py,pz = getElementPosition(alvo) 
local rot = findRotation (x,y,px,py)
local rot2 = findRotation (px,py,x,y)
	if getElementType (alvo) == "player" then
	local rot = findRotation (x,y,px,py)
	local rot2 = findRotation (px,py,x,y)
		if rot < 180 then
			if isPedDead (alvo) == false then
			setPedRotation (alvo, rot)
			setPedAnimation (alvo, "ped", "hit_behind", -1, false, true, false, false)
			end
		else
			if isPedDead (alvo) == false then
			setPedAnimation (alvo, "ped", "hit_front", -1, false, true, false, false)
			setPedRotation (alvo, rot2)
			end
		end
		local veiculo = getPedOccupiedVehicle (agressor)
		if getVehicleType (veiculo) == "Bike" then
			setTimer (function ()
				if getPedWeapon(agressor) == 4 or getPedWeapon(agressor) == 9 then
				soundOnPosition (agressor,"genrl", 136, 81, x,y,z, false)
				else
				local number = {59,60,61,62} 
				local som = number [ math.random ( #number ) ] 
				soundOnPosition (agressor,"genrl", 136, som, x,y,z, false)
				end
			end, 100, 1)
		else
			if getVehicleDoorState (veiculo, getPedOccupiedVehicleSeat(agressor)+2) == 4 then
				if getPedWeapon(agressor) == 4 or getPedWeapon(agressor) == 9 then
				soundOnPosition (agressor,"genrl", 136, 81, x,y,z, false)
				else
				local number = {59,60,61,62} 
				local som = number [ math.random ( #number ) ] 
				soundOnPosition (agressor,"genrl", 136, som, x,y,z, false)
				end
			else
			local number = {59,60,61,62} 
			local som = number [ math.random ( #number ) ] 
			soundOnPosition (agressor,"genrl", 136, som, x,y,z, false)
			end
		end
		if sangueAtivado == true then
		triggerClientEvent (jogadoresProntos, "PUNKRoadRageCriarSangue", root, alvo, dano)
		end
	elseif getElementType (alvo) == "vehicle" then
		if golpe[agressor] == "q" or golpe[agressor] == "e" then
		local number = {59,60,61,62} 
		local som = number [ math.random ( #number ) ] 
		soundOnPosition (agressor,"genrl", 136, som, x,y,z, false)
		else
			if getPedWeapon(agressor) == 4 or getPedWeapon(agressor) == 9 then
			soundOnPosition (agressor,"genrl", 136, 81, x,y,z, false)
			else
			local number = {59,60,61,62} 
			local som = number [ math.random ( #number ) ] 
			soundOnPosition (agressor,"genrl", 136, som, x,y,z, false)
			end
		end
			
		if getVehicleType (alvo) == "Bike" or getVehicleType (alvo) == "Quad" or getVehicleType (alvo) == "BMX" then
			if isElement(getVehicleController(alvo)) then
			piloto = getVehicleController(alvo)
			end
			if isElement (getVehicleOccupant (alvo, 1)) then
			passageiro = getVehicleOccupant (alvo, 1)
			end
			if golpe[agressor] == "q" or golpe[agressor] == "e" then

			else

			end
			if rot < 180 then
				if golpe[agressor] == "q" or golpe[agressor] == "e" then
				local x,y,z = getElementPosition (alvo)
				local a,b,c = getElementRotation (alvo)
				setElementRotation (alvo, 0, b+45, c+45)
				setElementPosition (alvo, x,y,z+0.1)
				else
					if isElement (passageiro) then
					acertar (agressor, passageiro)
					else
						if isElement(piloto) then
						acertar (agressor, piloto)
						piloto = nil
						end
					end
				end
			else
				if golpe[agressor] == "q" or golpe[agressor] == "e" then
					if isElement (piloto) then
					acertar (agressor, piloto)
					else
						if isElement(passageiro) then
						acertar (agressor, passageiro)
						passageiro = nil
						end
					end
				else
				local x,y,z = getElementPosition (alvo)
				local a,b,c = getElementRotation (alvo)
				setElementRotation (alvo, 0, b-45, c-45)
				setElementPosition (alvo, x,y,z+0.1)
				end
			end
		else
		--triggerClientEvent ("PUNKRoadRageBuscarComponente", agressor, alvo)
		end
	end
end

function componenteRetorno (alvo, comp)
local agressor = source
	if string.match (comp, "door") then
		if comp == "door_lf_dummy" then
		comp = 2
		elseif comp == "door_rf_dummy" then
		comp = 3
		elseif comp == "door_rb_dummy" then
		comp = 4
		elseif comp == "door_lb_dummy" then
		comp = 5
		end
	local state = getVehicleDoorState (alvo, comp)
		if state == 4 then
		local ocupante = getVehicleOccupant(alvo, comp)
			if isElement (ocupante) then
			acertar (agressor,ocupante)
			return
			end
		end
	end
--danificarComponente (alvo, comp)
end
addEvent ("PUNKRoadRageBuscarComponenteRetorno", true)
addEventHandler ("PUNKRoadRageBuscarComponenteRetorno", getRootElement(), componenteRetorno)

function causarDano (alvo, agressor, arma, dano, matar)
	if getResourceFromName("PUNKPacifico") and getResourceState(getResourceFromName("PUNKPacifico")) == "running" then
	local pacifico = exports.PUNKPacifico:exportarEstado(alvo) or false
		if pacifico == true then return end
	end
	if matar then killPed(alvo, agressor, arma) return end
setElementHealth (alvo, dano)
end

--[[
function danificarComponente (alvo, comp)
	if string.match (comp, "door") then
		if comp == "door_lf_dummy" then
		compN = 2
		elseif comp == "door_rf_dummy" then
		compN = 3
		elseif comp == "door_rb_dummy" then
		compN = 4
		elseif comp == "door_lb_dummy" then
		compN = 5
		end
	local state = getVehicleDoorState (alvo, compN)
		if state == 4 then
		else
			if not vidaPortas[alvo] then
			vidaPortas[alvo] = {
			[0] = 1,
			[1] = 1,
			[2] = 1,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			}
		end
		if vidaPortas[alvo][compN] == 1 then
		setVehicleDoorState ( alvo, compN, 2)
		elseif vidaPortas[alvo][compN] == vidaPorta then
		setVehicleDoorState ( alvo, compN, 4)
		end
		vidaPortas[alvo][compN] = vidaPortas[alvo][compN] + 1
		setVehicleDoorOpenRatio (alvo, compN, 0, 100)
		end
	else
		if comp == "wheel_lf_dummy" then
		compN = 0
		elseif comp == "wheel_rf_dummy" then
		compN = 1
		elseif comp == "wheel_lb_dummy" then
		compN = 2
		elseif comp == "wheel_rb_dummy" then
		compN = 3
		elseif comp == "windscreen_dummy" then
		compN = 4
		elseif comp == "bump_front_dummy" then
		compN = 5
		elseif comp == "bump_rear_dummy" then
		compN = 6
		end
		if tonumber(compN) then
		setVehiclePanelState (alvo, compN, 3)
		end
	end
	triggerClientEvent ("PUNKRoadRageBuscarComponenteEfeito", root, alvo, comp)
end
]]

dummy = {}
function funcaoDummy (jogador, estado)
	if PUNKSTUDIOSkoasd9jaindsaj == false then return end
	if estado == true then
	dummy[jogador] = createPed (getElementModel (jogador), getElementPosition (jogador))
	setElementVisibleTo (dummy[jogador], root, false)
	setElementAlpha (dummy[jogador], 0)
	--setElementCollidableWith ( dummy[jogador], jogador, false )
	--setElementCollidableWith ( dummy[jogador], getPedOccupiedVehicle(jogador), false ) 
	--attachElements (dummy[jogador], jogador, 0,0.5,0)
	--attachElementToBone (dummy[jogador], jogador, 3, 0,0.10,-0.15, 0,0,0, true)
	data = nil
	data = getElementData (jogador, "PUNKRoadRage") or {}
	data.elemento = dummy[jogador]
	setElementData (jogador, "PUNKRoadRage", data, true)
	
	--triggerClientEvent (jogadoresProntos, "PUNKRoadRageDummy", jogador, jogador, dummy[jogador])
	else
		if isElement (dummy[jogador]) then
		data = nil
		data = getElementData (jogador, "PUNKRoadRage")
		data.elemento = nil
		setElementData (jogador, "PUNKRoadRage", data, true)
		destroyElement (dummy[jogador])
		dummy[jogador] = nil
		end
	end
end
addEvent ("PUNKRoadRageDummy", true)
addEventHandler ("PUNKRoadRageDummy", getRootElement(), funcaoDummy)

function entrarSair ()
	if isElement(dummy[source]) then destroyElement(dummy[source]) end
end
addEventHandler ("onPlayerVehicleEnter", getRootElement(), entrarSair)
addEventHandler ("onPlayerVehicleExit", getRootElement(), entrarSair)

function PUNKRoadRageDummyDano (agressor, arma, parte, dano)
local alvo = source
	if pacifico == true then
	local p = exports.PUNKPacifico:exportarEstado(alvo) or false
		if p == true then return end
	end
	if isPedDead (alvo) == false then
			if isPedInVehicle (alvo) then
			removePedFromVehicle(alvo)
			end
		setPedAnimation (alvo, "ped", "bike_fall_off", -1, false, true, false, true)
			setTimer (function ()
			killPed(alvo, agressor, arma, parte)
				if isElement(dummy[alvo]) then
				destroyElement (dummy[alvo])
				end
			end, 250, 1)
	end
end
addEventHandler ("PUNKRoadRageDummyDano", getRootElement(), PUNKRoadRageDummyDano)


addEventHandler ("onPlayerDamage", getRootElement(), function (agressor, arma, parte, perda)
local alvo = source
	if isElement(getPedOccupiedVehicle (alvo)) == true then
		if isPedDoingGangDriveby (alvo) then
		local veiculo = getPedOccupiedVehicle (alvo)
			if (getVehicleType (veiculo) == "Bike" or getVehicleType (veiculo) == "BMX" or getVehicleType (veiculo) == "Quad") then else
			local vida = getElementHealth (alvo)
				if vida <= dano then
					if headshot == true then
					exports.PUNKHeadshot:headshot(alvo, agressor, arma, parte, perda)
					triggerEvent ("PUNKHeadshotMatarJogador", alvo, alvo, agressor, arma, parte)
					else
					killPed (alvo, agressor, arma, parte)
					end
				else
				--setElementHealth (alvo, vida - dano)
					if tremerCamera == sim then
					triggerClientEvent (alvo, "PUNKHeadshotTremer", alvo, perda)
					end
				end
			end
		end
	end
end)


function dummySaiu (jogador)
	if jogador and isElement (jogador) == false then jogador = source end
	if dummy[jogador] then
		if isElement (dummy[jogador]) then
		destroyElement(dummy[jogador])
		end
	dummy[jogador] = nil
	end
	if porradaShape[jogador] then
		if isElement (porradaShape[jogador]) then
		destroyElement (porradaShape[jogador])
		porradaShape[jogador] = nil
		end
	end
end
addEventHandler ("onPlayerQuit", getRootElement(), dummySaiu)
addEventHandler ("onVehicleStartExit", getRootElement(), dummySaiu)

addEventHandler("onElementDestroy", getRootElement(), function ()
	if getElementType(source) == "vehicle" then
		for seat, occupant in pairs(getVehicleOccupants(source)) do
		dummySaiu (occupant)
		end
	end
end)

--[[
function checarCondicoes (jogador)
	local veiculo = getPedOccupiedVehicle(jogador)
	if not veiculo then return false end
	if isPedDoingGangDriveby(jogador) == true then return false end
	return true
end
]]

function soundOnPosition (fonte, grupo, id1, id2, x,y,z, loop, volume)
triggerClientEvent (jogadoresProntos, "PUNKRoadRageSoundOnPosition", root, fonte, grupo, id1, id2, x,y,z, loop, volume)
end

function table.merge(t1, t2)
    for k,v in pairs(t2) do
        if type(v) == "table" then
            if type(t1[k] or false) == "table" then
                table.merge(t1[k] or {}, t2[k] or {})
            else
                t1[k] = v
            end
        else
            t1[k] = v
        end
    end
    return t1
end

function obterArmas (jogador,estado)
local veiculo = getPedOccupiedVehicle(jogador)
	if not veiculo then return end
local weapons = {}
local tabela = {}
		if drivebyBater == true then
			if getVehicleController (veiculo) == jogador then
			local tab = {}
				for i=1, #armasMotorista.atirar do
				table.insert (tab, armasMotorista.atirar[i])
				end
			local tab2 = {}
				for i=1, #armasMotorista.bater do
				table.insert (tab, armasMotorista.bater[i])
				end
			tabela = table.merge (tab, tab2)
			else
			local tab = {}
				for i=1, #armasPassageiro.atirar do
				table.insert (tab, armasPassageiro.atirar[i])
				end
			local tab2 = {}
				for i=1, #armasPassageiro.bater do
				table.insert (tab, armasPassageiro.bater[i])
				end
			tabela = table.merge (tab, tab2)
			end
		else
			if getVehicleController (veiculo) == jogador then
			tabela = armasMotorista.atirar
			else
			tabela = armasPassageiro.atirar
			end
		end
	for i=1, 11 do
		if getPedWeapon(jogador, i-1) ~= 0 then
			if tabela and #tabela > 0 then
				for k=1, #tabela do
					if getPedWeapon(jogador, i-1) == tabela[k] then
					table.insert (weapons, getPedWeapon(jogador, i-1))
					end
				end
			end
		else
			if i-1 == 0 then
				if tabela and #tabela > 0 then
					for k=1, #tabela do
						if getPedWeapon(jogador, i-1) == tabela[k] then
						table.insert (weapons, getPedWeapon(jogador, i-1))
						end
					end
				end
			end
		end
	end
	if weapons and #weapons > 0 then
	return weapons
	else
	return false
	end
end

function reload (jogador)
	if not jogador then jogador = source end
reloadPedWeapon (jogador)
end
addEvent ("PUNKRoadRageReload", true)
addEventHandler ("PUNKRoadRageReload", getRootElement(), reload)

function morreu ()
local jogador = source
	if isElement(dummy[jogador]) then
	destroyElement(dummy[jogador])
	end
	if isElement(porradaShape[jogador]) then
	destroyElement(porradaShape[jogador])
	end
end
addEventHandler ("onPlayerWasted", getRootElement(), morreu)

function findRotation( x1, y1, x2, y2 ) 
    local t = -math.deg( math.atan2( x2 - x1, y2 - y1 ) )
    return t < 0 and t + 360 or t
end


end
  iniciando () 
end
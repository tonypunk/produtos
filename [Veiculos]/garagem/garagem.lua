
--Eventos
addEvent ("PUNKVeiculosAtualizarCustoms", true)

--Shared
aquaticos = {}
aereos = {}

local PC = getResourceFromName("PUNKInformativo")
if PC and getResourceState(PC) == "running" then	
	informativo = true
end

function infoLigar (r)
	if r == getResourceFromName("PUNKInformativo") then
		if eventName == "onResourceStart" or eventName == "onClientResourceStart" then
		informativo = true
		else
		informativo = false
		end
	end
end
addEventHandler ("onClientResourceStart", getRootElement(), infoLigar)
addEventHandler ("onClientResourceStop", getRootElement(), infoLigar)
addEventHandler ("onResourceStart", getRootElement(), infoLigar)
addEventHandler ("onResourceStop", getRootElement(), infoLigar)

function table.contain (tabela, item)
	for index, value in ipairs(tabela) do
		if value == item then
		return true
		end
	end
	return false
end

function table.removeValue(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            table.remove(tab, index)
            return index
        end
    end
    return false
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

function findRotation(x1,y1,x2,y2) 
  local t = -math.deg(math.atan2(x2-x1,y2-y1)) 
  if t < 0 then t = t + 360 end 
  return t 
end

function getOffsetFromXYZ( mat, vec )
    -- make sure our matrix is setup correctly 'cos MTA used to set all of these to 1.
    mat[1][4] = 0
    mat[2][4] = 0
    mat[3][4] = 0
    mat[4][4] = 1
    mat = matrix.invert( mat )
    local offX = vec[1] * mat[1][1] + vec[2] * mat[2][1] + vec[3] * mat[3][1] + mat[4][1]
    local offY = vec[1] * mat[1][2] + vec[2] * mat[2][2] + vec[3] * mat[3][2] + mat[4][2]
    local offZ = vec[1] * mat[1][3] + vec[2] * mat[2][3] + vec[3] * mat[3][3] + mat[4][3]
    return {offX, offY, offZ}
end

function getNearestElement(element, elementType, distance)
local lastMinDis = distance-0.0001
local nearestElement = false
local px,py,pz = getElementPosition(element)
local pInt = getElementInterior(element)
local pDim = getElementDimension(element)
	for _,e in pairs(getElementsByType(elementType)) do
		local eInt,eDim = getElementInterior(e),getElementDimension(e)
		if eInt == pInt and eDim == pDim and e ~= element then
			local ex,ey,ez = getElementPosition(e)
			local dis = getDistanceBetweenPoints3D(px,py,pz,ex,ey,ez)
			if dis < distance then
				if dis < lastMinDis then
					lastMinDis = dis
					nearestElement = e
				end
			end
		end
	end
	return nearestElement
end

function getPositionFromElementOffset(element,offX,offY,offZ)
		local m = getElementMatrix ( element )  -- Get the matrix
		local x = offX * m[1][1] + offY * m[2][1] + offZ * m[3][1] + m[4][1]  -- Apply transform
		local y = offX * m[1][2] + offY * m[2][2] + offZ * m[3][2] + m[4][2]
		local z = offX * m[1][3] + offY * m[2][3] + offZ * m[3][3] + m[4][3]
		return x, y, z                               -- Return the transformed point
		end
		
function isElementMoving (theElement )
   if isElement ( theElement ) then                                   -- First check if the given argument is an element
	  return Vector3( getElementVelocity( theElement ) ).length ~= 0
   end
   return false
end

function table.toString(tab)
	if type(tab) ~= 'table' then return false end
local str = '{'
	for k,v in pairs(tab) do
		local kType = (type(k) == 'string') and "'%s'" or (type(k) == 'number') and "%s"
		if type(v) == 'string' then
			str = string.format(str.."[%s]='%s',",string.format(kType,k),v)
		elseif type(v) == 'number' then
			str = string.format(str.."[%s]=%s,",string.format(kType,k),v)
		elseif type(v) == 'table' then
			str = string.format(str.."[%s]=%s,",string.format(kType,k),table.toString(v))
		end
	end
return (str == '{' and '{}' or string.sub(str,1,-2)..'}')
end
		
function table.fromString(str)
	if type(str) ~= 'string' then return false end
return (loadstring)('return '..str)()
end

function teaEncodeBinary( data, key ) 
return teaEncode( base64Encode( data ), key ) 
end 
		
function teaDecodeBinary( data, key ) 
	return base64Decode( teaDecode( data, key ) ) 
end 

function getPlayerFromPartialName(name)
		local name = name and name:gsub("#%x%x%x%x%x%x", ""):lower() or nil
		if name then
			for _, player in ipairs(getElementsByType("player")) do
				local name_ = getPlayerName(player):gsub("#%x%x%x%x%x%x", ""):lower()
				if name_:find(name, 1, true) then
					return player
				end
			end
		end
	end

local vehicleIds = {400, 401, 402, 403, 404, 405, 407, 408, 409, 410, 411, 412, 413, 414, 415,
	416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 433,
	434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451,
	452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469,
	470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487,
	488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505,
	506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523,
	524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541,
	542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559,
	560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577,
	578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595,
	596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611
}

--Cliente
if isElement(localPlayer) then


function clienteRecebeu ()
--Visual
local scX,scY = GuiElement.getScreenSize()
local tamanhoX = 1
local tamanhoY = 1
function getScale()
	if ( scX <= 320 ) then
		tamanhoX = 0.5
    elseif ( scX <= 640 ) then
		tamanhoX = 1
	elseif ( scX <= 720 ) then
		tamanhoX = 1.125
	elseif ( scX <= 800 ) then
		tamanhoX = 1.25
    elseif ( scX <= 1024 ) then
        tamanhoX = 1.6
	elseif ( scX <= 1152 ) then
		tamanhoX = 1.8
    elseif ( scX <= 1280 ) then
        tamanhoX = 2
    elseif ( scX <= 1366 ) then
        tamanhoX = 2.134375
	 elseif ( scX <= 1440 ) then
        tamanhoX = 2.25
	elseif ( scX <= 1600 ) then
		tamanhoX = 2.5
	elseif ( scX <= 1680 ) then
		tamanhoX = 2.625
    elseif ( scX <= 1920 ) then
        tamanhoX = 3
	elseif (scX <= 2560) then
		tamanhoX = 4
	elseif (scX <= 3840) then
		tamanhoX = 6
    end
	
	if ( scY <= 240 ) then
		tamanhoY = 0.5
	elseif ( scY <= 480 ) then
		tamanhoY = 1
	elseif ( scY <= 576 ) then
		tamanhoY = 1.2
	elseif ( scY <= 600 ) then
		tamanhoY = 1.25
    elseif ( scY <= 720 ) then
        tamanhoY = 1.5
	elseif ( scY <= 768 ) then
		tamanhoY = 1.6
    elseif ( scY <= 800 ) then
        tamanhoY = 1.666666666666667
    elseif ( scY <= 900 ) then
        tamanhoY = 1.875
	elseif ( scY <= 960 ) then
		tamanhoY = 2
	elseif ( scY <= 1024 ) then
		tamanhoY = 2.133333333333333
    elseif ( scY <= 1050 ) then
        tamanhoY = 2.1875
	elseif (scY <= 1080) then
		tamanhoY = 2.25
	elseif (scY <= 1440) then
		tamanhoY = 3
	elseif (scY <= 2160) then
		tamanhoY = 4.5
    end
end
getScale()
local sx,sy = GuiElement.getScreenSize()
local px,py = sx,sy
local scX,scY =  (sx/px), (sy/py) 


somInfo = {}
function infoSom (grupo, id1, id2, x,y,z, loop, volume)
	if grupo then
	local som = playSFX3D (grupo, id1, id2, x,y,z, loop)
	table.insert (somInfo, som)
		if volume then
		setSoundVolume (som, volume)
		end
	else
		if somInfo and #somInfo > 0 then
			for i=1, #somInfo do
			local som = somInfo[i]
				if isElement(som) then
				stopSound (som)
				table.remove (somInfo, i)
				end
			end
		end
	end
end
addEvent ("PUNKVeiculosSom", true)
addEventHandler ("PUNKVeiculosSom", getRootElement(), infoSom)

function teaDecodeBinary( data, key ) 
	return base64Decode( teaDecode( data, key ) ) 
end 

nomes = {
		["aquatico"] = "aquatico",
		["aereo"] = "aereo",
		["massa"] = "mass",
		["curvas"] = "turnMass",
		["aderência"] = "dragCoeff",
		["centro"] = "centerOfMass",
		["submerssão"] = "percentSubmerged",
		["tração"] = "tractionMultiplier",
		["perda de tração"] =  "tractionLoss",
		["relação de tração"] = "tractionBias",
		["marchas"] = "numberOfGears",
		["velocidade"] = "maxVelocity",
		["aceleração"] = "engineAcceleration",
		["inercia"] = "engineInertia",
		["direção"] = "driveType",
		["alimentacao"] = "engineType",
		["desaceleração"] = "brakeDeceleration",
		["relação dos freios"] = "brakeBias",
		["ABS"] = "ABS",
		["limite direcional"] = "steeringLock",
		["suspensão"] = "suspensionForceLevel",
		["lubrificação"] = "suspensionDamping",
		["lubrificação alta"] = "suspensionHighSpeedDamping",
		["suspensão superior"] = "suspensionUpperLimit",
		["suspensão inferior"] = "suspensionLowerLimit",
		["relação da suspensão"] = "suspensionFrontRearBias",
		["embicagem"] = "suspensionAntiDiveMultiplier",
		["assentos"] = "seatOffsetDistance",
		["colisão"] = "collisionDamageMultiplier",
		["valor"] = "monetary",
		["marcadores do modelo"] = "modelFlags",
		["marcadores do manuseio"] = "handlingFlags",
		["faróis frontais"] = "headLight",
		["faróis traseiros"] = "tailLight",
		["animações"] = "animGroup",
	}

--Garagem
if garagens then
	if getElementData (localPlayer, "PUNKVeiculosGaragem") then
	emGaragem = true
	end

	function garagemChegou (elemento, estado)
		if emGaragem ~= true then return end
		if not estado or estado == false then cancelEvent () end
		if getElementType (elemento) == "player" then
			if elemento ~= localPlayer then return end
		evento = "PUNKVeiculosGaragemSairJogador"
		elseif getElementType(elemento) == "vehicle" then
			if (getVehicleController (elemento) and getVehicleController(elemento) ~= localPlayer) or not getVehicleController (elemento) then return end
		evento = "PUNKVeiculosGaragemSairVeiculo"
		else
		return
		end
		triggerServerEvent (evento, root, elemento, estado)
		emGaragem = false
	end
	addEventHandler ("onClientColShapeHit", getRootElement(), garagemChegou)

	garagemMarkers = {}
	function garagemMostrarSaida (col, motorista, elem1, elem2, dim)
	local dim = getElementDimension (motorista)
	setElementDimension (col, dim)
		if elem1 and isElement (elem1) then
		setElementDimension (elem1, dim)
			if table.contain (garagemMarkers, elem1) == false then
			setElementDimension (elem1, dim+1)
			table.insert (garagemMarkers, elem1)
			end
		end
		if elem2 and isElement (elem2) then
		setElementDimension (elem2, dim)
			if table.contain (garagemMarkers, elem2) == false then
			setElementDimension (elem2, dim+1)
			table.insert (garagemMarkers, elem2)
			end
		end
	emGaragem = true
	end
	addEvent ("PUNKVeiculosGaragemMostrarSaida", true)
	addEventHandler ("PUNKVeiculosGaragemMostrarSaida", getRootElement(), garagemMostrarSaida)

	function danoGaragem(agressor, arma, perda, x, y, z, pneu)
	local veiculo = source
		for i=1, 50 do
		local west, east, south, north = getGarageBoundingBox ( i-1 )
		local x, y, z = getElementPosition ( veiculo )
			if x > west and x < east and y > south and y < north then
				if isGarageOpen (i-1) then
				--outputChatBox ("Garagem aberta, dano contando")
				else
				--outputChatBox ("Garagem fechada, veiculo protegido")
				cancelEvent ()
				end
			end
		end
	end
	addEventHandler ("onClientVehicleDamage", getRootElement(), danoGaragem)

end

--Spray
if sprays then
function efeitosSpray (veiculo)
local x,y,z = getElementPosition (veiculo)
local eff = createEffect ("carwashspray", x,y,z, 0,0,0, 50, true)
local passageiros = getVehicleOccupants (veiculo)
	for lugar, passageiro in pairs (passageiros) do
		if passageiro == localPlayer then
		local cam = getCameraViewMode ()
		--setCameraClip (false, true)
		setCameraViewMode (5)
			setTimer (function ()
			setCameraViewMode (cam)
			--setCameraClip (true, true)
			end, 4000, 1)
		end
	end
	setTimer (function ()
	destroyElement (eff)
	end, 3500, 1)
end
addEvent ("PUNKVeiculosEfeitoSpray", true)
addEventHandler ("PUNKVeiculosEfeitoSpray", getRootElement(), efeitosSpray)
end

--Blindagem
if blindagem then
blindado = {}
lataria = {}
pneus = {}
janelas = {}
perfurantes = {}
colisoes = {}

function blindarVeiculo (veiculo, estado, lat, pne, jan, col, per)
blindado[veiculo] = estado
lataria[veiculo] = lat
pneus[veiculo] = pne
janelas[veiculo] = jan
colisoes[veiculo] = col
perfurantes[veiculo] = per
end
addEvent ("PUNKVeiculosBlindar", true)
addEventHandler ("PUNKVeiculosBlindar", getRootElement(), blindarVeiculo)

function blindagemDano(agressor, arma, perda, x, y, z, pneu)
local veiculo = source
	if blindado[veiculo] or (getElementType (veiculo) == "player" and blindado[getPedOccupiedVehicle(veiculo)]) then
		if agressor then
			--
			if perfurantes[veiculo] and #perfurantes[veiculo] > 0 then
				for i=1, #perfurantes[veiculo] do
					if arma == perfurantes[veiculo][i] then
                    return end
				end
			end
			--
			if lataria[veiculo] == sim then
			cancelEvent()
				--
				for i=0, 6 do
					if i ~= 4 then
					setVehiclePanelState (veiculo, i, 0)
					end
				end
				--
				for i=0, 5 do
				local estado = getVehicleDoorState (veiculo, i)
					if estado == 0 or estado == 2 then
					setVehicleDoorState (veiculo, i, 0)
					else
						if estado == 1 or estado == 3 then
						setVehicleDoorState (veiculo, i, 1)
						end
					end
				end
				--
			end
			--
			if pneu ~= nil then
				if pneus[veiculo] == sim then
				cancelEvent ()
				end
			end
			--
			if janelas[veiculo] == sim then
				if getVehiclePanelState (veiculo, 4) ~= 0 then
				setVehiclePanelState (veiculo, 4, 0)
				cancelEvent()
				end
			end
			--
		else
			if colisoes[veiculo] == sim then
			cancelEvent ()
				--
				for i=0, 6 do
					if i ~= 4 then
					setVehiclePanelState (veiculo, i, 0)
					end
				end
				--
				for i=0, 5 do
				local estado = getVehicleDoorState (veiculo, i)
					if estado == 0 or estado == 2 then
					setVehicleDoorState (veiculo, i, 0)
					else
						if estado == 1 or estado == 3 then
						setVehicleDoorState (veiculo, i, 1)
						end
					end
				end
				--
			end
		end
		if getElementType (source) == "player" then
			if isPedInVehicle (source) then
				if janelas[getPedOccupiedVehicle(source)] == sim then
					if perfurantes[getPedOccupiedVehicle(source)] then
						for i=1, #perfurantes[getPedOccupiedVehicle(source)] do
							if arma == perfurantes[getPedOccupiedVehicle(source)][i] then
							return end
						end
					end
				cancelEvent ()
				end
			end
		end
	end
end
addEventHandler("onClientVehicleDamage", root, blindagemDano)
addEventHandler("onClientPlayerDamage", root, blindagemDano)

function blindagemStream ()
	if eventName then
	local veiculo = source
	local modelo = getElementModel (veiculo)
		if not blindado[veiculo] then
			if blindagem.nativos[modelo] then
			blindado[veiculo] = true
			lataria[veiculo] = blindagem.nativos[modelo].lataria
			pneus[veiculo] = blindagem.nativos[modelo].pneus
			janelas[veiculo] = blindagem.nativos[modelo].janelas
			perfurantes[veiculo] = blindagem.nativos[modelo].perfurantes
			colisoes[veiculo] = blindagem.nativos[modelo].colisoes
			end
		end
	else
	local veiculos = getElementsByType ("vehicle")
		if veiculos and #veiculos > 0 then
			for i=1, #veiculos do
			local modelo = getElementModel (veiculos[i])
				if blindagem.nativos[modelo] then
				local a = veiculos[i]
				blindado[a] = true
				lataria[a] = blindagem.nativos[modelo].lataria
				pneus[a] = blindagem.nativos[modelo].pneus
				janelas[a] = blindagem.nativos[modelo].janelas
				perfurantes[a] = blindagem.nativos[modelo].perfurantes
				colisoes[a] = blindagem.nativos[modelo].colisoes
				end
			end
		end
	end
end
addEventHandler ("onClientElementStreamIn", getRootElement(), blindagemStream)
blindagemStream()
end

function notificacao (a,b,c,d,e,f,g,h,i,j,l,m,n,o,p)
	if informativo == true then
	exports.PUNKInformativo:notificacao (a,b,c,d,e,f,g,h,i,j,l,m,n,o,p)
	else
	local r,g,b = 255,255,255	
		if p == "sucesso" then
		r,g,b = 0,255,0
		elseif p == "falha" then
		r,b,g = 255, 0, 0
		elseif p == "coletavel" then
		r,g,b = 255,255,0
		end
	outputChatBox (c, r,g,b)
	end
end

triggerServerEvent ("PUNKVeiculosInicializacoes", localPlayer)

end
addEvent ("PUNKVeiculosRecebeu", true)
addEventHandler ("PUNKVeiculosRecebeu", getRootElement(), clienteRecebeu)

end


--Server
if isElement(localPlayer) == false then

local sim = true
local nao = false

jogadoresProntos = {}
temporizador = {}

function adicionarJogador (mod)
	if mod == getThisResource() then
	table.insert (jogadoresProntos, source)
	end
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

function notificacao (a,b,c,d,e,f,g,h,i,j,l,m,n,o,p)
	if informativo == true then
	exports.PUNKInformativo:notificacao (a,b,c,d,e,f,g,h,i,j,l,m,n,o,p)
	else
	local r,g,b = 255,255,255	
		if p == "sucesso" then
		r,g,b = 0,255,0
		elseif p == "falha" then
		r,b,g = 255, 0, 0
		elseif p == "coletavel" then
		r,g,b = 255,255,0
		end
	outputChatBox (c, a, r,g,b)
	end
end

somInfo = {}
function infoSom (grupo, id1, id2, x,y,z, loop, volume, elementos)
local tempTab = {}
	if not elementos then
		for i=1, #jogadoresProntos do
		local px,py,pz = getElementPosition (jogadoresProntos[i])
		local dist = getDistanceBetweenPoints3D (x,y,z,px,py,pz)
			if dist <= 5 then
			table.insert (tempTab, jogadoresProntos[i])
			end
		end
	else
		for i=1, #elementos do
			if table.contain (jogadoresProntos, elementos[i]) then
			table.insert (tempTab, elementos[i])
			end
		end
	end
triggerClientEvent (tempTab, "PUNKVeiculosSom", root, grupo, id1, id2, x,y,z, loop, volume)
end

function iniciando ()

--Funções úteis
local nomes = {
		--["base"] = "base",
		--["modelo"] = "modelo",
		--["substituir"] = nao,
		["aquatico"] = "aquatico",
		["aereo"] = "aereo",
		["massa"] = "mass",
		["curvas"] = "turnMass",
		["aderência"] = "dragCoeff",
		["centro"] = "centerOfMass",
		["submerssão"] = "percentSubmerged",
		["tração"] = "tractionMultiplier",
		["perda de tração"] =  "tractionLoss",
		["relação de tração"] = "tractionBias",
		["marchas"] = "numberOfGears",
		["velocidade"] = "maxVelocity",
		["aceleração"] = "engineAcceleration",
		["inercia"] = "engineInertia",
		["direção"] = "driveType",
		["alimentacao"] = "engineType",
		["desaceleração"] = "brakeDeceleration",
		["relação dos freios"] = "brakeBias",
		["ABS"] = "ABS",
		["limite direcional"] = "steeringLock",
		["suspensão"] = "suspensionForceLevel",
		["lubrificação"] = "suspensionDamping",
		["lubrificação alta"] = "suspensionHighSpeedDamping",
		["suspensão superior"] = "suspensionUpperLimit",
		["suspensão inferior"] = "suspensionLowerLimit",
		["relação da suspensão"] = "suspensionFrontRearBias",
		["embicagem"] = "suspensionAntiDiveMultiplier",
		["assentos"] = "seatOffsetDistance",
		["colisão"] = "collisionDamageMultiplier",
		["valor"] = "monetary",
		["marcadores do modelo"] = "modelFlags",
		["marcadores do manuseio"] = "handlingFlags",
		["faróis frontais"] = "headLight",
		["faróis traseiros"] = "tailLight",
		["animações"] = "animGroup",
	}

nomeVeiculo = {}
veiculosCustom = {}
veiculoVaga = {}
veiculoRestock = {}
mAlimentacao = {}
preco = {}

	--Garagem
	if garagens then
		function efeitoTransparente (boneco, estado)
		local tab = {}
			if isTimer (tab.tempTimer) then killTimer (tab.tempTimer) end
			if estado == true then
			tab.counter = 0
		--		setElementDimension( boneco, dimensao )
			setElementAlpha (boneco, tab.counter)
				tab.tempTimer = setTimer (function ()
				tab.counter = tab.counter + 10
					if tab.counter > 255 then tab.counter = 255 end
				setElementAlpha (boneco, tab.counter)
					if getElementAlpha (boneco) >= 255 then
					killTimer (tab.tempTimer)
					end
				end, 25, 26)
			return
			end
			tab.counter = 255
			tab.tempTimer = setTimer (function ()
			tab.counter = tab.counter - 10
				if tab.counter < 0 then tab.counter = 0 end
			setElementAlpha (boneco, tab.counter)
				if getElementAlpha (boneco) == 0 then
				local dim = getElementDimension (boneco)
				--setElementDimension (boneco, 100)
				killTimer (tab.tempTimer)
					--tab.tempTimer = setTimer (function ()
					--setElementDimension( boneco, dimensao )
					setElementAlpha (boneco, tab.counter)
					--killTimer (tab.tempTimer)
						
					--end, 1000, 1)
				end
			end, 25, 26)
		end
		dadosGaragem = {}
		function garagemEntrouJogador (elemento, estado)
			if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
			if not estado or estado == false then return end
		local col = source
		local destino = dadosGaragem[source].destino
			if getElementType (elemento) =="player" and isPedInVehicle (elemento) == false then
				if not temporizadorGaragem[elemento] or isTimer(temporizadorGaragem[elemento]) == false then
				setElementFrozen (elemento, true)
				fadeCamera (elemento, false)
				efeitoTransparente (elemento, false)
				toggleAllControls (elemento, false, true, true)
					temporizadorGaragem[elemento] = setTimer (function ()
						temporizadorGaragem[elemento] = setTimer (function ()
						setElementFrozen (elemento, false)
						fadeCamera (elemento, true)
						efeitoTransparente (elemento, true)
						setCameraTarget (elemento)
						toggleAllControls (elemento, true, true, true)
						setPedAnimation (elemento)
						setElementInterior (elemento, destino.interior)
						setElementPosition (elemento, Vector3 (destino.posicao))
						setElementRotation (elemento, 0,0, destino.rotacao, "default", true)
						setElementDimension (elemento, getAccountID(getPlayerAccount(elemento)))
						dadosGaragem[elemento] = dadosGaragem[col]
						setElementData (elemento, "PUNKVeiculosGaragem", dadosGaragem[elemento])
						triggerClientEvent (elemento, "PUNKVeiculosGaragemMostrarSaida", root, col, elemento, dadosGaragem[col].saidaJogador, dadosGaragem[col].saidaVeiculo, getAccountID(getPlayerAccount(elemento)))
						end, 500, 1)
					end, 500, 1)
				end
			end
		end
			
			function garagemSaiuJogador (elemento, estado)
			--if not estado or estado == false then return end
				--if not estado or estado == false then return end
			local col = source
			d = nil
				if getElementData (elemento, "PUNKVeiculosGaragem") then
				local t = getElementData (elemento, "PUNKVeiculosGaragem")
				d = t.saida
				else
				d = dadosGaragem[elemento].saida
				end
			local destino = d
				if getElementType (elemento) =="player" and isPedInVehicle (elemento) == false then
					if not temporizadorGaragem[elemento] or isTimer(temporizadorGaragem[elemento]) == false then
					setElementFrozen (elemento, true)
					fadeCamera (elemento, false)
					efeitoTransparente (elemento, false)
					toggleAllControls (elemento, false, true, true)
						temporizadorGaragem[elemento] = setTimer (function ()
							temporizadorGaragem[elemento] = setTimer (function ()
							setElementFrozen (elemento, false)
							fadeCamera (elemento, true)
							efeitoTransparente (elemento, true)
							setCameraTarget (elemento)
							toggleAllControls (elemento, true, true, true)
							setPedAnimation (elemento)
							setElementInterior (elemento, destino.interior)
							setElementPosition (elemento, Vector3 (destino.posicao))
							setElementRotation (elemento, 0,0, destino.rotacao, "default", true)
							setElementDimension (elemento, destino.dimensao)
							dadosGaragem[elemento] = {}
							removeElementData (elemento, "PUNKVeiculosGaragem")
							end, 500, 1)
						end, 500, 1)
					end
				
				end
			end
			addEvent ("PUNKVeiculosGaragemSairJogador", true)
			addEventHandler ("PUNKVeiculosGaragemSairJogador", getRootElement(), garagemSaiuJogador)
		
			function garagemEntrouVeiculo (elemento, estado)
			if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
			local col = source
			local destino = dadosGaragem[col].destino
			dadosGaragem[elemento] = {}
				if getElementType (elemento) == "vehicle" then
					if getVehicleController (elemento) then
					local motorista = getVehicleController (elemento)
						if garagens.configuracoes then
						local t = garagens.configuracoes
							if t.dono == sim then
								if getElementData(elemento, elementData.dono) and getElementData(elemento, elementData.dono) ~= motorista then
									if not nomeVeiculo[elemento] then nomeVeiculo[elemento] = getVehicleNameFromModel (getElementModel(elemento)) end
								notificacao (motorista, nil, "Você não é dono deste "..nomeVeiculo[elemento], "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})			
								return
								end
							end
						end
						if not temporizadorGaragem[motorista] or isTimer(temporizadorGaragem[motorista]) == false then
						
						local passageiros = {}
							for seat, passageiro in ipairs(getVehicleOccupants(elemento)) do 
							table.insert (passageiros, passageiro)
							--removePedFromVehicle (passageiro)
							end
						table.insert (passageiros, motorista)
							for i=1, #passageiros do
							local passageiro = passageiros[i]
							fadeCamera (passageiro, false)
							efeitoTransparente (passageiro, false)
							toggleAllControls (passageiro, false, true, true)
							end
						setElementCollisionsEnabled (elemento, false)
						setElementFrozen (elemento, true)
						efeitoTransparente (elemento, false)
						setVehicleDamageProof (elemento, true)
							temporizadorGaragem[elemento] = setTimer (function ()
								temporizadorGaragem[elemento] = setTimer (function ()
								setElementFrozen (elemento, false)
								efeitoTransparente (elemento, true)
								setElementInterior (elemento, destino.interior)
								setElementDimension (elemento, getAccountID(getPlayerAccount(motorista)))
								setElementPosition (elemento, Vector3 (destino.posicao), true)
								setElementRotation (elemento, 0,0, destino.rotacao, "default", true)
								setElementCollisionsEnabled (elemento, true)
								local passageiros = {}
								table.insert (passageiros, motorista)
									for seat, passageiro in pairs(getVehicleOccupants(elemento)) do 
									table.insert (passageiros, passageiro)
									end
									for i=1, #passageiros do
									local passageiro = passageiros[i]
									fadeCamera (passageiro, true)
									efeitoTransparente (passageiro, true)
									setCameraTarget (passageiro)
									toggleAllControls (passageiro, true, true, true)
									setElementInterior (passageiro, destino.interior)
									setElementDimension (passageiro, getAccountID(getPlayerAccount(motorista)))
									dadosGaragem[passageiro] = dadosGaragem[col]
									setElementData (passageiro, "PUNKVeiculosGaragem", dadosGaragem[passageiro])
									end
								dadosGaragem[elemento] = dadosGaragem[col]
								setElementData (elemento, "PUNKVeiculosGaragem", dadosGaragem[elemento])
								triggerClientEvent (passageiros, "PUNKVeiculosGaragemMostrarSaida", root, col, motorista, dadosGaragem[col].saidaJogador, dadosGaragem[col].saidaVeiculo, getAccountID(getPlayerAccount(motorista)))
								--warpPedIntoVehicle (motorista, elemento)
								end, 500, 1)
							end, 500, 1)
						end
					end
				end
			end

			function garagemSaiuVeiculo (elemento, estado)
			--if not estado or estado == false then return end
				--if not estado or estado == false then return end
			local col = source
			--local destino = dadosGaragem[elemento].saida
				if getElementType (elemento) == "vehicle" then
					if getVehicleController (elemento) then
					local motorista = getVehicleController (elemento)
					d = nil
						if getElementData (motorista, "PUNKVeiculosGaragem") then
						local t = getElementData (motorista, "PUNKVeiculosGaragem")
						d = t.saida
						else
						d = dadosGaragem[motorista].saida
						end
					local destino = d
						if not temporizadorGaragem[motorista] or isTimer(temporizadorGaragem[motorista]) == false then
						local passageiros = {}
							for seat, passageiro in ipairs(getVehicleOccupants(elemento)) do 
							--removePedFromVehicle (passageiro)
							table.insert (passageiros, passageiro)
							end
						table.insert (passageiros, motorista)
							for i=1, #passageiros do
							local passageiro = passageiros[i]
							fadeCamera (passageiro, false)
							efeitoTransparente (passageiro, false)
							toggleAllControls (passageiro, false, true, true)
							end
						setElementCollisionsEnabled (elemento, false)
						setElementFrozen (elemento, true)
						efeitoTransparente (elemento, false)
							temporizadorGaragem[elemento] = setTimer (function ()
								temporizadorGaragem[elemento] = setTimer (function ()
								setElementInterior (elemento, destino.interior)
								setElementPosition (elemento, Vector3 (destino.posicao), true)
								setElementRotation (elemento, 0,0, destino.rotacao, "default", true)
								setElementDimension (elemento, destino.dimensao)
								setVehicleDamageProof (elemento, false)
								setElementFrozen (elemento, false)
								setElementCollisionsEnabled (elemento, true)
								efeitoTransparente (elemento, true)
								local passageiros = {}
								table.insert (passageiros, motorista)
									for seat, passageiro in pairs(getVehicleOccupants(elemento)) do 
									table.insert (passageiros, passageiro)
									end
									for i=1, #passageiros do
									local passageiro = passageiros[i]
									fadeCamera (passageiro, true)
									efeitoTransparente (passageiro, true)
									setCameraTarget (passageiro)
									toggleAllControls (passageiro, true, true, true)
									setElementInterior (passageiro, destino.interior)
									setElementDimension (passageiro, destino.dimensao)
									dadosGaragem[passageiro] = {}
									removeElementData (passageiro, "PUNKVeiculosGaragem")
									end
								dadosGaragem[elemento] = {}
								removeElementData (elemento, "PUNKVeiculosGaragem")
								--warpPedIntoVehicle (motorista, elemento)
								end, 500, 1)
							end, 500, 1)
						end
					end
				end
			end
			addEvent ("PUNKVeiculosGaragemSairVeiculo", true)
			addEventHandler ("PUNKVeiculosGaragemSairVeiculo", getRootElement(), garagemSaiuVeiculo)
		
		temporizadorGaragem = {}
		for i=1, #garagens do
			if garagens[i].icone then
			local temp = garagens[i].icone
			local id = temp.id
			local posicao = temp.posicao
				if id and posicao then createBlip (Vector3 (posicao), id, 1, 0,0,0,0, posicao[3], 180) end
			end
			
			
			--Jogador
			--Entrada
			local entrada = garagens[i].entrada.jogador
			local posicao = entrada.posicao
			local interior = entrada.interior
			local dimensao = entrada.dimensao
			local destino = entrada.destino
			local garagemEntradaJogador = createColSphere (Vector3(posicao), entrada.tamanho)
			dadosGaragem[garagemEntradaJogador] = {}
			dadosGaragem[garagemEntradaJogador].destino = destino
			local entradaJogador = garagemEntradaJogador
			setElementInterior (garagemEntradaJogador, interior)
			setElementDimension (garagemEntradaJogador, dimensao)
			local marker = createMarker (posicao[1], posicao[2], posicao[3]+1.5, "arrow", 1, 255,255,0,126)
			setElementInterior (marker, interior)
			setElementDimension (marker, dimensao)
			addEventHandler ("onColShapeHit", garagemEntradaJogador, garagemEntrouJogador)
			--Saida
			local saida = garagens[i].saida.jogador
			local posicao = saida.posicao
			local interior = saida.interior
			--local dimensao = saida.dimensao
			local destino = saida.destino
			local garagemSaida = createColSphere (Vector3(posicao), saida.tamanho)
			dadosGaragem[garagemSaida] = {}
			dadosGaragem[garagemSaida].destino = destino
			setElementInterior (garagemSaida, interior)
			--setElementDimension (garagemSaida, dimensao)
			local marker = createMarker (posicao[1], posicao[2], posicao[3]+1.5, "arrow", 1, 255,255,0,126)
			local saidaJogador = marker
			setElementInterior (marker, interior)
			--setElementDimension (marker, dimensao)
			--addEventHandler ("onColShapeHit", garagemSaida, garagemSaiu)
			dadosGaragem[garagemEntradaJogador].saidaJogador = saidaJogador
			dadosGaragem[garagemEntradaJogador].saida = destino
			--
			--Veiculos
			--Entrada
			local entrada = garagens[i].entrada.veiculo
			local posicao = entrada.posicao
			local interior = entrada.interior
			local dimensao = entrada.dimensao
			local destino = entrada.destino
			local garagemEntradaVeiculo = createColTube (Vector3(posicao), entrada.tamanho[1], entrada.tamanho[2])
			dadosGaragem[garagemEntradaVeiculo] = {}
			dadosGaragem[garagemEntradaVeiculo].destino = destino
			dadosGaragem[garagemEntradaVeiculo].saidaJogador = saidaJogador
			setElementInterior (garagemEntradaVeiculo, interior)
			setElementDimension (garagemEntradaVeiculo, dimensao)
			local marker = createMarker (Vector3 (posicao), "cylinder", 4, 255,0,0,126)
			local entradaVeiculo = marker
			setElementInterior (marker, interior)
			setElementDimension (marker, dimensao)
			addEventHandler ("onColShapeHit", garagemEntradaVeiculo, garagemEntrouVeiculo)
			
			
			--Saida
			local saida = garagens[i].saida.veiculo
			local posicao = saida.posicao
			local interior = saida.interior
			--local dimensao = saida.dimensao
			local destino = saida.destino
			local garagemSaidaVeiculo = createColTube (Vector3(posicao), saida.tamanho[1], saida.tamanho[2])
			dadosGaragem[garagemSaidaVeiculo] = {}
			dadosGaragem[garagemSaidaVeiculo].destino = destino
			local marker = createMarker (Vector3 (posicao), "cylinder", 4, 255,0,0,126)
			local saidaVeiculo = marker
			
			dadosGaragem[garagemEntradaVeiculo].saidaVeiculo = saidaVeiculo
			dadosGaragem[garagemEntradaVeiculo].saida = destino
			setElementInterior (garagemSaidaVeiculo, interior)
			--setElementDimension (garagemSaidaVeiculo, dimensao)
			setElementInterior (marker, interior)
			--setElementDimension (marker, dimensao)
		
			dadosGaragem[garagemEntradaJogador].saidaVeiculo = saidaVeiculo
			
			
			
		end
		--
	end
	--
	
	--Spray
	if sprays then
	garagens = { 
		ids = {
		["Idlewood"] = 8,
		["Temple"] = 11,
		["Santa Maria"] = 12,
		["Downtown 1"] = 19,
		["Downtown 2"] = 24,
		["Junipher Hollow"] = 27,
		["Redsands East"] = 32,
		["El Quebrados"] = 36,
		["Fort Carson"] = 40,
		["Dillimore"] = 47,
		},

		posicoes = {
		["Idlewood"] = {2063.4775390625, -1831.4167480469, 12.546875},
		["Temple"] = {1024.7972412109, -1023.6457519531, 31.1015625},
		["Santa Maria"] = {487.16723632812, -1741.5830078125, 10.127095222473},
		["Downtown 1"] = {-1904.7092285156, 285.77325439453, 40.046875},
		["Downtown 2"] = {-1786.8226318359, 1215.9763183594, 24.125},
		["Junipher Hollow"] = {-2425.6804199219, 1019.0797119141, 49.397659301758},
		["Redsands East"] = {1976.9653320312, 2162.0869140625, 10.0703125},
		["El Quebrados"] = {-1420.3399658203, 2582.5939941406, 54.84326171875},
		["Fort Carson"] = {-99.930572509766, 1120.9291992188, 18.74169921875},
		["Dillimore"] = {720.14453125, -453.48822021484, 15.3359375},
		},
	}

	local tabPos = {}
	local tabId = {}
		for nome, valor in pairs (sprays.nativos) do
			for n, v in pairs (garagens.ids) do
				if nome == n then
					if valor == sim then
						if table.contain (tabId, n) == false then
						table.insert (tabId, v)
						table.insert (tabPos, garagens.posicoes[nome])
						end
					end
				end
			end
		end
		for i=1, #sprays.custom do
		table.insert (tabPos, sprays.custom[i])
		end
		for i=1, #tabPos do
		createBlip (tabPos[i][1], tabPos[i][2], tabPos[i][3], 63, 1, 0,0,0,0, tabPos[i][3], 180)
		local mark = createMarker (tabPos[i][1], tabPos[i][2], tabPos[i][3], "cylinder", 4, 255,0,0,126)
			addEventHandler ("onMarkerHit", mark, function (elemento, estado)
				if estado == true then
					if getElementType(elemento) == "vehicle" and isElement(getVehicleController(elemento)) then
					local motorista = getVehicleController(elemento)
						if getPlayerMoney (motorista) >= sprays.preco then
						setElementFrozen (elemento, true)
							if table.contain (sprays.custom, tabPos[i]) == false then
							setGarageOpen (tabId[i], false)
							end
						toggleAllControls (motorista, false, true, false)
						triggerClientEvent ("PUNKVeiculosEfeitoSpray", root, elemento)
							setTimer (function ()
								if isElement(elemento) then
								setElementFrozen (elemento, false)
								setVehicleColor (elemento, math.random(126), math.random(126), math.random(126), math.random(126), math.random(126), math.random(126))
									if sprays.consertar == sim then
										if getElementHealth(elemento) < 1000 then
										fixVehicle(elemento)
										end
									end
								end
								if isElement(motorista) then
								toggleAllControls (motorista, true, true, false)
								takePlayerMoney (motorista, sprays.preco, true)
									if sprays.consertar == sim then
									notificacao (motorista, nil, "Funilaria e pintura $"..sprays.preco, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})		
									else
									notificacao (motorista, nil, "Pintura $"..sprays.preco, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})		
									end
								end
								if table.contain (sprays.custom, tabPos[i]) == false then
								setGarageOpen (tabId[i], true)
								end
							end, 2000, 1)
						else
						notificacao (motorista, nil, "Dinheiro insuficiente $"..sprays.preco, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
						end
					end
				end
			end)
		end
		for i=1, #tabId do
		setGarageOpen (tabId[i], true)
		end
	end
	--	
	
	--8 Ball 
	if bombas then
	garagens = { 
		ids = {
		["Unity Station"] = 3,
		["Redsands East"] = 35,
		},

		posicoes = {
		["Unity Station"] = {1851.0306396484, -1856.2840576172, 12.3828125},
		["Redsands East"] = {2006.3645019531, 2311.4663085938, 9.8203125},
		},
	}

	local tabPos = {}
	local tabId = {}
		for nome, valor in pairs (bombas.nativos) do
			for n, v in pairs (garagens.ids) do
				if nome == n then
					if valor == sim then
						if table.contain (tabId, n) == false then
						table.insert (tabId, v)
						table.insert (tabPos, garagens.posicoes[nome])
						end
					end
				end
			end
		end
		for i=1, #bombas.custom do
		table.insert (tabPos, bombas.custom[i])
		end
		for i=1, #tabPos do
		createBlip (tabPos[i][1], tabPos[i][2], tabPos[i][3], 23, 1, 0,0,0,0, tabPos[i][3], 180)
		local mark = createMarker (tabPos[i][1], tabPos[i][2], tabPos[i][3], "cylinder", 4, 255,0,0,126)
			addEventHandler ("onMarkerHit", mark, function (elemento, estado)
				if estado == true then
					if getElementType(elemento) == "vehicle" and isElement(getVehicleController(elemento)) and getElementType (getVehicleController(elemento)) == "player" then
					local motorista = getVehicleController(elemento)
						if getPlayerMoney (motorista) >= bombas.preco then
						setElementFrozen (elemento, true)
						toggleAllControls (motorista, false, true, false)
						--triggerClientEvent ("PUNKVeiculosEfeitoSpray", root, elemento)
							if table.contain (bombas.custom, tabPos[i]) == false then
							setGarageOpen (tabId[i], false)
							end
							setTimer (function ()
								if isElement(elemento) then
								carroBomba[elemento] = true
								setElementFrozen (elemento, false)
								end
								if isElement(motorista) then
								toggleAllControls (motorista, true, true, false)
								takePlayerMoney (motorista, bombas.preco, true)
								notificacao (motorista, nil, "Bomba instalada $"..bombas.preco, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
								notificacao (motorista, nil, "Pressione '"..bombas.tecla.."' para acionar", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
								end
								if table.contain (bombas.custom, tabPos[i]) == false then
								setGarageOpen (tabId[i], true)
								end
							end, 2000, 1)
						else
						notificacao (motorista, nil, "Dinheiro insuficiente $"..bombas.preco, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})		
						end
					end
				end
			end)
		end
		for i=1, #tabId do
		setGarageOpen (tabId[i], true)
		end
		
		carroBomba = {}
		acionandoBomba = {}
		function explodirVeiculo (jogador)
		local veiculo = getPedOccupiedVehicle (jogador)
			if isElement(veiculo) and carroBomba[veiculo] == true then
				--if acionandoBomba[veiculo] then
				--local tempo = getTickCount() - acionandoBomba[veiculo]
				notificacao (jogador, nil, "Bomba: "..bombas.tempo.." segundos", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
					setTimer (function ()
						if isElement(veiculo) then
						blowVehicle (veiculo, true)
						end
					end, bombas.tempo*1000, 1)
				--else
				--notificacao (jogador, nil, "Acionando bomba", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
					
				--acionandoBomba[veiculo] = getTickCount()
				--end
				end
			end
		if bombas.comando then
		addCommandHandler (bombas.comando, explodirVeiculo, false)
		end
	end
	--	
	
	--Blindagem
	if blindagem then
	blindagemLataria = {}
	blindagemPneus = {}
	blindagemJanelas = {}
	blindagemPerfurantes = {}
	blindagemColisoes = {}
	blindagemPreco = {}
	blindagemMarcador = {}
	blindado = {}

	function blindar (veh)
	if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
	local marcador = source
		if getElementType (veh) == "vehicle" then
		local jogador = getVehicleController (veh)
			if jogador and getElementType (jogador) == "player" then
				if blindagemPreco[marcador] and blindagemPreco[marcador] > 0 then
					if getPlayerMoney(jogador) >= blindagemPreco[marcador] then
					estado = true
					else
					notificacao (jogador, nil, "Dinheiro insuficiente $"..blindagemPreco[marcador], "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})		
					end
				else
				estado = true
				end
				if estado == true then
				setElementFrozen (veh, true )
				toggleAllControls (jogador, false, true, false)
					setTimer (function ()
						if isElement (veh) then
						setElementFrozen (veh, false )
							if estado == true then
							fixVehicle(veh)
							blindado[veh] = sim
							blindagemLataria[veh] = blindagemLataria[marcador]
							blindagemPneus[veh] = blindagemPneus[marcador]
							blindagemJanelas[veh] = blindagemJanelas[marcador]
							blindagemColisoes[veh] = blindagemColisoes[marcador]
							blindagemPerfurantes[veh] = blindagemPerfurantes[marcador]
							triggerClientEvent ("PUNKVeiculosBlindar", root, veh, sim, blindagemLataria[veh], blindagemPneus[veh], blindagemJanelas[veh], blindagemColisoes[veh], blindagemPerfurantes[veh])
							end
						end
						if isElement(jogador) then
						toggleAllControls (jogador, true, true, false)
							if blindagemPreco[marcador] and blindagemPreco[marcador] > 0 then
								if getPlayerMoney(jogador) >= blindagemPreco[marcador] then
								takePlayerMoney(jogador, blindagemPreco[marcador])
								notificacao (jogador, nil, "Veiculo blindado $"..blindagemPreco[marcador], "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})		
								end
							else
							notificacao (jogador, nil, "Veiculo blindado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
							end
							if isElement(veh) then
								if blindagemLataria[veh] == true then
								notificacao (jogador, nil, "Lataria", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
								end
								if blindagemPneus[veh] == true then
								notificacao (jogador, nil, "Pneus", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
								end
								if blindagemJanelas[veh] == true then
								notificacao (jogador, nil, "Janelas", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
								end
								if blindagemColisoes[veh] == true then
								notificacao (jogador, nil, "Colisoes", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
								end
							end
						end
					end, 1000, 1)
				end
			end
		end
	end

		if blindagem.localizacoes and #blindagem.localizacoes > 0 then
			function marcadoresBlindagem ()
				local marcadores = blindagem.localizacoes
					for i=1, #marcadores do
					local x,y,z = marcadores[i].posicao[1], marcadores[i].posicao[2], marcadores[i].posicao[3]
					blindagemMarcador[i] = createMarker(x,y,z,"cylinder",4,255,0,0,126)
					local a = blindagemMarcador[i]
					blindagemPreco[a] = marcadores[i].preco
					blindagemLataria[a] = marcadores[i].lataria
					blindagemPneus[a] = marcadores[i].pneus
					blindagemJanelas[a] = marcadores[i].janelas
					blindagemPerfurantes[a] = marcadores[i].perfurantes
					blindagemColisoes[a] = marcadores[i].colisoes
					createBlipAttachedTo (blindagemMarcador[i], 27, 1,  255,255,255,255,0,180)	
					addEventHandler("onMarkerHit",blindagemMarcador[i],blindar)
					end
			end
			marcadoresBlindagem()
		end

	local veiculo = getElementsByType ("vehicle")
		for i=1, #veiculo do
		local a = veiculo[i]
			if blindado[a] then
			triggerClientEvent ("PUNKVeiculosBlindar", root, veiculo[i], true, blindagemLataria[a], blindagemPneus[a], blindagemJanelas[a], blindagemColisoes[a], blindagemPerfurantes[a])
			end
		end

	function blindagemInicio ()
	local jogador = source
	local veiculo = getElementsByType ("vehicle")
		for i=1, #veiculo do
		local a = veiculo[i]
			if blindado[a] then
			triggerClientEvent ("PUNKVeiculosBlindar", jogador, veiculo[i], true, blindagemLataria[a], blindagemPneus[a], blindagemJanelas[a], blindagemColisoes[a], blindagemPerfurantes[a])
			end
		end
	end
	addEventHandler ("onPlayerLogin", getRootElement(), blindagemInicio)

	function blindagemObterMelhorias (veh)
		if PUNKSTUDIOSBDG == false then return end
	return blindado[veh] or false, blindagemLataria[veh] or false, blindagemPneus[veh] or false, blindagemJanelas[veh] or false, blindagemColisoes[veh] or false, blindagemPerfurantes[veh] or false
	end

	function blindagemAplicarMelhorias (veh,blindagem, corpo, pneu, janela, perf, coli)
		if PUNKSTUDIOSBDG == false then return end
	triggerClientEvent ("PUNKVeiculosBlindar", root, veh, blindagem, corpo, pneu, janela, perf, coli)
	end

	end
	--
--Inicio
function inicializacoes ()
local jogador = source
	if bombas and bombas.tecla then bindKey (jogador, bombas.tecla, "down", bombas.comando) end
end
addEvent ("PUNKVeiculosInicializacoes", true)
addEventHandler ("PUNKVeiculosInicializacoes", getRootElement(), inicializacoes)

	function inicio (jogador)
		
		if eventName then jogador = source end
		if table.contain (jogadoresProntos, jogador) then
		triggerClientEvent (jogador, "PUNKVeiculosRecebeu", jogador)
		--inicializacoes (jogador)
		else
		local conta = getPlayerAccount (jogador)
		local j = jogador
			local str = conta
			temporizador[str] = setTimer (function ()
				if isElement (j) then
					if table.contain (jogadoresProntos, j) then
					triggerClientEvent (j, "PUNKVeiculosRecebeu", j)
					--inicializacoes (jogador)
					jogador = nil
					killTimer (temporizador[str])
					end
				else
				killTimer (temporizador[str])
				end
			end, 1000 , 0)
		end
	end
	addEventHandler ("onPlayerJoin", getRootElement (), inicio)

	local jogadores = getElementsByType ("player")
	for i=1, #jogadores do
	inicio(jogadores[i])
	end
	
	
	
end

iniciando ()

end


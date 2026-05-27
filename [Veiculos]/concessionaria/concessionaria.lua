
--Eventos
addEvent ("PUNKConcessionariaAtualizarCustoms", true)

--Shared
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

function getVehicleHandlingProperty ( element, property )
    if isElement ( element ) and getElementType ( element ) == "vehicle" and type ( property ) == "string" then -- Make sure there's a valid vehicle and a property string
        local handlingTable = getVehicleHandling ( element ) -- Get the handling as table and save as handlingTable
        local value = handlingTable[property] -- Get the value from the table
        
        if value then -- If there's a value (valid property)
            return value -- Return it
        end
    end
    
    return false -- Not an element, not a vehicle or no valid property string. Return failure
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

aquaticos = {}
aereos = {}
preco = {}

--Cliente
if isElement(localPlayer) then

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
addEvent ("PUNKFuncoesSom", true)
addEventHandler ("PUNKFuncoesSom", getRootElement(), infoSom)

function clienteRecebeu ()

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

--Veiculos
if veiculos then
nomeVeiculo = {}
veiculosAVenda = {}
function atualizarVeiculos (aVenda, ns)
	if aVenda then
		if #aVenda > 0 then
			for i=1, #aVenda do
			local veiculo = aVenda[i].elemento
				if table.contain (veiculosAVenda, veiculo) == false then
				nomeVeiculo[veiculo] = aVenda[i].nome
					--if aVenda[i].preco ~= nil then
					preco[veiculo] = aVenda[i].preco
					setElementData (veiculo, "preço", preco[veiculo], true)
					--end
				table.insert (veiculosAVenda, veiculo)
				addEventHandler ("onClientVehicleEnter", veiculo, veiculoVendaEntrou)
				addEventHandler ("onClientVehicleStartEnter", veiculo, anularEntrada)
					if getVehicleHandling(veiculo).engineType == "electric" then
					setVehicleComponentPosition (veiculo, "exhaust_ok", 0,0,6000)
					setVehicleDummyPosition( veiculo, "exhaust", 0,0,6000 )
					end
				end
				
			end
		end
	end
	if ns ~= nil then
		if type (ns) == "table" then
			for i=1, #ns do
				if ns[i] and ns[i].veiculo then
				local v = ns[i].veiculo
					if not nomeVeiculo[v] then
						if ns[i].nome then
						nomeVeiculo[v] = ns[i].nome
						else
						nomeVeiculo[v] = getVehicleName (v)
						end
					end
				end
			end 
		end
	end
end
addEvent ("PUNKConcessionariaAtualizarVeiculos", true)
addEventHandler ("PUNKConcessionariaAtualizarVeiculos", getRootElement(), atualizarVeiculos)

function veiculoVendaEntrou (jogador, lugar)
local veiculo = source
	if jogador == localPlayer then
		if lugar == 0 then
		local veiculo = source
			if table.contain (veiculosAVenda, veiculo) == false then return end
		setVehicleEngineState (veiculo, false)
		setVehicleOverrideLights (veiculo, 1)
		local keys = getBoundKeys ("comprar")
			if keys then
			botao = keys
				for keyName, state in pairs(keys) do
				botao = keyName
				--break
				end
			else
			--botao = comprar
			end
		mostrandoVenda = true
			for i=1, #controlTable do
			toggleControl (controlTable[i], false)
			end
		carro = veiculo		
		mostrarVenda = true
		updateRenderCompra(veiculo)
		addEventHandler ("onClientRender", root, renderizarDados)
			local function entradaRetornarControles (veh)
			removeEventHandler ("onClientPlayerVehicleExit", jogador, entradaRetornarControles)
				if veh == veiculo then
				mostrandoVenda = false
				carro = nil
				removeEventHandler ("onClientRender", root, renderizarDados)
				mostrarVenda = false
					for i=1, #controlTable do
					toggleControl (controlTable[i], true)
					end
				end
			end
		addEventHandler ("onClientPlayerVehicleExit", jogador, entradaRetornarControles)
		end
	end
end

function anularEntrada (jogador, lugar, roubado, porta)
local veiculo = source
local handling = getVehicleHandling (veiculo)
	if (lugar ~= 0) or (getVehicleType (veiculo:getModel ()) == "Bike" or getVehicleType (veiculo:getModel ()) == "Quad" or getVehicleType (veiculo:getModel ()) == "BMX" and porta ~= 0) then
	--cancelEvent()
	end
end

function comprarDigitou (a)
	if a == true then
		if isChatBoxInputActive() then return end
		if isCursorShowing() then return end
	end
	if not carros then carros = {} end
	if table.contain (veiculosAVenda, localPlayer:getOccupiedVehicle()) == false then return end
local jogador = localPlayer
	if carros and (#carros) >= configuracoes.limite then
	notificacao (jogador, nil, "Você atingiu o limite de veiculos", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")			
	return
	end
	if getPedOccupiedVehicle(localPlayer) then
		if table.contain (veiculosAVenda, getPedOccupiedVehicle(localPlayer)) then
		local veiculo = localPlayer:getOccupiedVehicle()
		if not preco[veiculo] then preco[veiculo] = getVehicleHandling(veiculo).monetary setElementData (veiculo, "preço", preco[veiculo], true) end
			if getPlayerMoney (jogador) >= preco[veiculo] then
			--table.insert (carros, veiculo)
			setVehicleEngineState (veiculo, true)
			setVehicleOverrideLights (veiculo, 0)
			notificacao (jogador, nil, "Você adquiriu um(a) "..nomeVeiculo[veiculo].." por $"..preco[veiculo], "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")		
			removeEventHandler ("onClientVehicleStartEnter", veiculo, anularEntrada)
			removeEventHandler ("onClientVehicleEnter", veiculo, veiculoVendaEntrou)
			removeEventHandler ("onClientRender", root, renderizarDados)
			mostrarVenda = false
			carro = nil
			for i=1, #controlTable do
			toggleControl (controlTable[i], true)
			end
				--if isElement(veiculoDummy[veiculo]) then
				--removeEventHandler ("onClientVehicleStartEnter", veiculoDummy[veiculo], anularEntrada)
				--end
				if triggado ~= true then
				triggerServerEvent ("PUNKConcessionariaComprar", localPlayer, localPlayer, getPedOccupiedVehicle(localPlayer), true)
				end
			table.removeValue (veiculosAVenda, veiculo)
			else
			notificacao (jogador, nil, "Você não possui dinheiro suficiente!", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")			
			end
		end
	end
end
addCommandHandler (comandos.comprar, comprarDigitou, false )
local keys = getBoundKeys(comandos.comprar)
bindKey (controles.comprar, "down", comandos.comprar)

function encontrarVaga (veiculo)
	for i=1 , #vagas do 
	local posicao, rot, distanciaVaga, interior, dimensao = vagas[i].posicao, vagas[i].rotacao, vagas[i].tamanho, vagas[i].interior, vagas[i].dimensao
	return posicao, rot, interior, dimensao
	end
end

--Dono conce
function conceChegou (marker, v, con)
local carros, estacionamento = v.veiculos, v.localizacoes
local c = v.configuracoes
vitrine = c.vitrine
	playSFX("genrl", 52, 14, false)
	marcador = marker
	chegou = true
	conceTable = carros
	addEventHandler ("onClientRender", root, renderCompra)
	transportes = {}
		for i, a in pairs (conceTable) do
		nome = i
		table.insert (transportes, {nome = nome, modelo = nome, preco})
		end
	
	vagas = estacionamento
	conce = con
	opcoes = 2
	if isElement (marcador) then  setElementAlpha (marcador, 0) end
end
addEvent ("PUNKConcessionariaChegouLoja", true)
addEventHandler ("PUNKConcessionariaChegouLoja", getRootElement(), conceChegou)

function conceSaiu ()
local jogador = source
	chegou = false
	mostrarPainel = false
	fecharPainel("saiu")
	if isElement (marcador) then setElementAlpha (marcador, 50) end
	conceTable = nil
		if visitante == true then visitante = false end
		--if hudCar ~= true and renderMangueira ~= true and chegou ~= true then
		--renderAdd = nil
		--removeEventHandler ("onClientRender", root, renderizacao)
		--end
end
addEvent ("PUNKConcessionariaSaiuLoja", true)
addEventHandler ("PUNKConcessionariaSaiuLoja", getRootElement(), conceSaiu)

function transicao ()
transi = true
fadeCamera (false, 0, 0,0,0)
	setTimer (function ()
	transi = false
	fadeCamera (true, 0.5, 0,0,0)
	end,50,1)
end

function digitou (botao, estado )
	if isChatBoxInputActive () then return end
	if estado then
	if transi == true then return end
		--abrir/fechar menu
		if chegou == true then
			if mostrarPainel ~= true then
				if botao == controles.comprar then 
					if encontrarVaga () ~= false then
					if configuracoes and configuracoes.limite and carros and (#carros+1) > configuracoes.limite then
						cancelEvent()
						notificacao (localPlayer, nil, "Você atingiu o limite de veiculos", "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")			
						return
						end
					cancelEvent()
					--abrirPainel ()
					opcoes = 2
					selecao = 2
					abrirCarros()
					end
				return
				end
			elseif mostrarPainel == true then
			if botao == "arrow_u" or botao == "w" or botao == "arrow_l" or botao == "a" or botao == "arrow_r" or botao == "d" or botao == "arrow_d" or botao == "s" or botao == controles.comprar then
			cancelEvent()
			end
				--fechar
				if botao == controles.comprar and selecao == 1 then 
				cancelEvent()
				fecharPainel ()
				fecharPainel ()
				playSFX("genrl", 53, 1, false)
				return
				end
				--
				--navegação
				if mostrarVeiculos ~= true then
					if botao == "arrow_d" or botao == "s" then
					playSFX("genrl", 53, 4, false)
						for s=1, opcoes do
							if selecao == s then
							valor = s+1
								if valor > opcoes then valor = 1 end
							selecao = valor
							return
							end
						end
					elseif botao == "arrow_u" or botao == "w" then
					playSFX("genrl", 53, 4, false)
						for s=1, opcoes do
							if selecao == s then
							valor = s-1
								if valor < 1 then valor = opcoes end
							selecao = valor
							return
							end
						end
					end
					--selecionar
					if botao == controles.comprar then
						if mostrarVeiculos ~= true then
							if selecao == 2 then
							abrirCarros ()
							return
							end
						end
					end
				end
				--
				--carros
				if mostrarVeiculos == true then
					if botao == controles.comprar then
						if selecao == 1 then
						fecharPainel ()
						elseif selecao == 2 then
						p = nil
						n = nil
						if not preco[carro] then preco[carro] = getVehicleHandling(carro).monetary setElementData (carro, "preço", preco[carro], true) end
						p = preco[carro]--carro:getHandling()["monetary"]
						if p and p > 0 then
							if getPlayerMoney (localPlayer) >= p then
							notificacao (localPlayer, nil, "Você adquiriu um(a) "..getVehicleNameFromModel (getElementModel (carro)).." por $"..p, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")		
			
						--	notificacao (localPlayer, nil, "Você adquiriu um(a) veículo", "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
							else
							notificacao (localPlayer, nil, "Você não possui dinheiro suficiente!", "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "falha")	
							return
							end
						else
						--notificacao (localPlayer, nil, "Você adquiriu um(a) veículo", "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
						end
						transi = true
						setVehicleEngineState(carro, not getVehicleEngineState(carro))
							setTimer (function ()
							escolherItem ("veiculo", getElementModel (carro), intt[carro], dimm[carro])
							transi = false
							fecharPainel ("veiculo")
							fecharPainel ()
							end, 2000, 1)
						end
					elseif botao == "arrow_d" or botao == "s" then
					playSFX("genrl", 53, 4, false)
						for s=1, 2 do
							if selecao == s then
							valor = s+1
								if valor > 2 then valor = 1 end
							selecao = valor
							return
							end
						end
					elseif botao == "arrow_u" or botao == "w" then
					playSFX("genrl", 53, 4, false)
						for s=1, 2 do
							if selecao == s then
							valor = s-1
								if valor < 1 then valor = 2 end
							selecao = valor
							return
							end
						end
					end
					if selecao == 2 then
						if botao == "arrow_r" or botao == "d" or botao == "arrow_l" or botao == "a" then
						playSFX("genrl", 53, 4, false)
						modelo = getElementModel (carro)
						
							for s=1, #transportes do
								if modelo == transportes[s].modelo then
									if botao == "arrow_r" or botao == "d" then
									valor = s+1
										if valor > #transportes then valor = 1 end
									elseif botao == "arrow_l" or botao == "a" then
									valor = s-1
										if valor < 1 then valor = #transportes end
									end
								modelo = transportes[valor].modelo
								local a,b, rot = getElementRotation (carro)
								local x,y,z = getElementPosition(carro)
								destroyElement (carro)
								carro = createVehicle (transportes[valor].modelo, x,y,z, a,b,rot)
								updateRenderCompra (carro)
								setVehicleEngineState(carro, not getVehicleEngineState(carro))
								--setElementModel (carro, transportes[valor].modelo)
								nome, modelo = nil,nil
								return
								end
							end
						nome, modelo = nil,nil
						end
					end
				end
			end
		end
	end
end
addEventHandler ("onClientKey", root, digitou)

function encontrarDimensao ()
	dimJogador = getElementDimension (localPlayer)
	intJogador = getElementInterior (localPlayer)
	local jogador = getElementsByType ("player")
	if #jogador > 1 then
		for j=1, #jogador do
			if jogador[j] ~= localPlayer then
				if getElementDimension (jogador[j]) ~= i then
					for i=100, 1000 do
					setElementDimension (localPlayer, i)
					break
					end
				end
			end
		end
	else
	dimJogador2 = 100
	intJogador2 = intJogador
	setElementDimension (localPlayer, 100)
	end
end

function abrirPainel ()
transicao()
--playSFX("genrl", 52, 14, false)
--playSFX("genrl", 53, 6, false)
setPedWeaponSlot (localPlayer, 0)
mostrarVeiculos = false
mostrarPainel = true
selecao = 2
	--if isElement (ped) then setElementCollisionsEnabled (ped, false) end
local x,y,z = getElementPosition (localPlayer)
	--if isElement (ped) then destroyElement (ped) end
--ped = createPed (getElementModel (localPlayer), x,y,z, getPedRotation (localPlayer), true)
local dim = getElementDimension (localPlayer)
--setElementDimension (ped, dim)
--setElementInterior (ped, getElementInterior(localPlayer))
--setPedRotation(ped,45 )
togControles (false, true)
--encontrarDimensao ()
--
end

--carro
dimm = {}
intt = {}
toggleAllControls (true, true, true)
function abrirCarros ()
--carro
	--if isElement (transporte) == false then
	if isElement(carro) then destroyElement(carro) end
local posicao = vitrine.posicao
local rot = vitrine.rotacao
local int, dim = vitrine.interior, vitrine.dimensao
	if posicao then
	setPedWeaponSlot (localPlayer, 0)
	mostrarVeiculos = true
	mostrarPainel = true
	selecao = 2
	togControles (false, true)
	local x,y,z, rx,ry,rz = posicao[1], posicao[2], posicao[3], rot[1], rot[2], rot[3] 
	carro = createVehicle (transportes[1].nome, x,y,z, rx,ry,rz)
	updateRenderCompra (carro)
		if isElement(carro)	then
		transicao()
		playSFX("genrl", 52, 14, false)
			if int then
			setElementInterior (localPlayer, int)
			setElementInterior (carro, int)
			intt[carro] = int
			end
			if dim then
			setElementDimension (localPlayer, dim)
			setElementDimension (carro, dim)
			dimm[carro] = dim
			end
			if rot then
			setElementRotation (carro, Vector3(rot))
			end
		mostrarVeiculos = true
		opcoes = 2
		selecao = 2
--		local cores = transportes[1].cores[math.random(#transportes[1].cores)]
			if cores then
				for i=1, 12 do
					if cores[i] == -1 then
					cores[i] = math.random( 0, 255 )
					end
				end
			setVehicleColor (carro, cores[1], cores[2], cores[3], cores[4], cores[5], cores[6])
			end
		--setCameraTarget(localPlayer, carro)
		--setElementCollisionsEnabled (ped, true)
		setElementCollisionsEnabled (carro, true)
		--warpPedIntoVehicle (ped, carro, 0)
		--camera
			--setTimer (function ()
			local a,b,rot = getElementRotation (carro)
			local x,y,z = getElementPosition (carro)
			local rx = x + ((math.cos(math.rad(rot + 45))) * 7.5) 
			local ry = y + ((math.sin(math.rad(rot + 45))) * 7.5) 
			setCameraMatrix( rx, ry, z+1.5, x, y, z)	
			setVehicleEngineState(carro, not getVehicleEngineState(carro))
			--end, 50, 1)	
		else
		playSFX("genrl", 53, 2, false)
		end
	end
end

proximo = {}
veiculoVaga = {}
function encontrarVaga (veiculo)
	for i=1 , #vagas do 
	local posicao, rot, distanciaVaga, interior, dimensao = vagas[i].posicao, vagas[i].rotacao, vagas[i].tamanho, vagas[i].interior, vagas[i].dimensao
	
	
	--local x,y,z, rot, distanciaVaga = vagas[i][1], vagas[i][2], vagas[i][3], vagas[i][4], vagas[i][5]
	
		return posicao, rot, interior, dimensao
	end
end

function escolherItem (tipo, escolhido, int, dim)
	if tipo == "veiculo" then
	playSFX("genrl", 52, 14, false)
	--playSFX("genrl", 52, 9, false)
	local x,y,z = getElementPosition (carro)
	local rx,ry,rz = getElementRotation (carro)
				
		local p = preco[carro]--carro:getHandling()["monetary"]
		local cor = {getVehicleColor(carro, true)}
		local hand = getVehicleHandling (carro)
		if p and p > 0 then
			if getPlayerMoney (localPlayer) >= p then
			else
			--notificacao (jogador, nil, "Você não possui dinheiro suficiente!", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")			
			return
			end
		end
	triggerServerEvent ("PUNKConcessionariaEscolhaCarro", localPlayer, escolhido, x,y,z, rx,ry,rz, int, dim, cor, p, hand)
	--temporizadorVeiculos = setTimer (function () end, 60000*tempoVeiculos, 1)
	--notificacao (localPlayer, nil, "Vá até a garagem para retirar seu veículo!", "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")	
	else
	notificacao (localPlayer, nil, "Você requisitou um(a) "..tipo, "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
	end
end

function togControles (estado, estado2)
toggleAllControls (estado, true, false)
end

function fecharPainel (tipo)	
--playSFX("genrl", 53, 1, false)
	if tipo ~= "saiu" then
	transicao()	
	else
		togControles (true, false)
		if dimJogador and getElementDimension(localPlayer) ~= dimJogador then
		setElementDimension (localPlayer, dimJogador)
		end
		if intJogador and getElementInterior(localPlayer) ~= intJogador then
		setElementInterior (localPlayer, intJogador)
		end
		if getCameraTarget () ~= localPlayer then
		setCameraTarget (localPlayer)
		end
	removeEventHandler ("onClientRender", root, renderCompra)
	return
	end
	if isTimer (animTimer) then killTimer (animTimer) end
	if mostrarPainel == true then	
		if isElement (carro) then 
		destroyElement (carro)
		end
	opcoes = 2
		if mostrarVeiculos ~= true then
		togControles (true, false)
		mostrarPainel = false
		selecao = 2
		setPedAnimation (localPlayer)
		setCameraTarget (localPlayer)
			if dimJogador and getElementDimension(localPlayer) ~= dimJogador then
			setElementDimension (localPlayer, dimJogador)
			end
			if intJogador and getElementInterior(localPlayer) ~= intJogador then
			setElementInterior (localPlayer, intJogador)
			end
			if getCameraTarget () ~= localPlayer then
			setCameraTarget (localPlayer)
			end
		return
		end
	end
	if dimJogador2 then
	setElementDimension (localPlayer, dimJogador2)
	setElementInterior (localPlayer, intJogador2)
	end
	if mostrarVeiculos == true then
	mostrarVeiculos = false
	selecao = 2
	end
end					

local tecla = "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"
local chave = "punkstudiosicone"
local tecla = teaDecodeBinary(tecla,chave)
tecla = dxCreateTexture (tecla)
	
controlTable = { "fire", "aim_weapon", "next_weapon", "previous_weapon", "vehicle_secondary_fire", "vehicle_left", "vehicle_right",
 "steer_forward", "steer_back", "accelerate", "brake_reverse", "sub_mission",
 "handbrake", "special_control_left", "special_control_right",
 "special_control_down", "special_control_up" }


end

--Handling
if handling then

function vehicleStreamIn (veiculo)
	if eventName then veiculo = source end
	if getElementType (veiculo) == "vehicle" then
	local veiculo = source
		for nome, tabela in pairs (handling) do
			if getElementModel (veiculo) == tabela.id then
				if tabela.aereo == true then table.insert (aereos, veiculo) end
				if tabela.aquatico == true then table.insert (aquaticos, veiculo) end
				for atributo, valor in pairs (tabela) do
					for a, v in pairs (nomes) do
						if a == atributo then
						setVehicleHandling (veiculo, v, valor)
						end
					end
				end
				if getVehicleHandling(veiculo).engineType == "electric" then
				setVehicleComponentPosition (veiculo, "exhaust_ok", 0,0,6000)
				setVehicleDummyPosition( veiculo, "exhaust", 0,0,6000 )
				end
			end
		end
	end
end
addEventHandler ("onClientElementStreamIn", root, vehicleStreamIn)

--Aquaticos
plataforma = {}
waterTimer = {}
function WaterWalk() 
	if #aquaticos > 0 then
		for i=1, #aquaticos do
		local veiculo = aquaticos[i]
		local x, y, z = getElementPosition(veiculo)
		local rx,ry,rz = getElementRotation (veiculo)
			if isElement (plataforma[veiculo]) then
			setElementPosition(plataforma[veiculo],x,y,z-1.13)
			setElementRotation (plataforma[veiculo], 0,0,rz)
			end
			if testLineAgainstWater  (x,y,z, x,y,z-1.13) then
				if isTimer (waterTimer[veiculo]) then killTimer (waterTimer[veiculo]) end
				if isElement (plataforma[veiculo]) == false then
				local px,py,pz = getElementPosition(veiculo) 
				plataforma[veiculo] = createObject(3095,px,py,pz-1.13)
				local elems = getElementsWithinRange (px, py, pz, 1000)
					for k=1, #elems do
					setElementCollidableWith (plataforma[veiculo], elems[k], false)
					end
					addEventHandler ("onClientElementStreamIn", getRootElement(), function ()	if isElement(plataforma[veiculo]) then setElementCollidableWith (plataforma[veiculo], source, false) end  end)
				setElementAlpha (plataforma[veiculo], 0)
					--if isElementCollidableWith (plataforma[veiculo], veiculo) ~= true then
					setElementCollidableWith (plataforma[veiculo], veiculo, true)
					--end
				end
			else
				if isElement (plataforma[veiculo]) then
				destroyElement (plataforma[veiculo])
				end
			end
		end
	end
end 
addEventHandler ("onClientRender",root,WaterWalk)

--Voadores
function voarEntrar (jogador, assento)
	if table.contain (aereos, source) then
		if jogador == localPlayer and assento == 0 then
			if eventName == "onClientVehicleEnter" then
				if table.contain (aereos, source) then
				setWorldSpecialPropertyEnabled ("aircars", true)
				end
			else
			setWorldSpecialPropertyEnabled ("aircars", false)
			end
		end
	end
end
addEventHandler ("onClientVehicleEnter", getRootElement(), voarEntrar)
addEventHandler ("onClientVehicleExit", getRootElement(), voarEntrar)

function aereoParou ()
	if isPedInVehicle(localPlayer) then
	local veiculo = getPedOccupiedVehicle(localPlayer)
		if getVehicleController (veiculo) == localPlayer then
			if table.contain (aereos,veiculo) then
			setWorldSpecialPropertyEnabled ("aircars", false)
			end
		end
	end
end
addEventHandler ("onClientResourceStop", getResourceRootElement(getThisResource()), aereoParou)

function waterDestruiu ()
	if table.contain (aquaticos, source) then
	table.removeValue (aquaticos, source)
		if isElement (plataforma[source]) then
		destroyElement (plataforma[source])
		plataforma[source] = nil
		end
	end
	if table.contain (aereos, source) then
	table.removeValue (aereos, source)
		if getVehicleController (source) == localPlayer then
		setWorldSpecialPropertyEnabled ("aircars", false)
		end
	end
end
addEventHandler ("onClientElementDestroy", getRootElement(), waterDestruiu)

local veiculos = Element.getAllByType("vehicle")
	for i=1, #veiculos do
	vehicleStreamIn(veiculos[i])
	end

end

triggerServerEvent ("PUNKConcessionariaInicializacoes", localPlayer)

end
addEvent ("PUNKConcessionariaRecebeu", true)
addEventHandler ("PUNKConcessionariaRecebeu", getRootElement(), clienteRecebeu)

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
triggerClientEvent (tempTab, "PUNKFuncoesSom", root, grupo, id1, id2, x,y,z, loop, volume)
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

	function encontrarJogador (nome)
	proprietario = false
		if isElement(getPlayerFromName (nome)) then
		proprietario = getPlayerFromName (nome)
		end
		if isElement(proprietario) == false then
		local jogadores = getElementsByType ("player")
			for i=1, #jogadores do
			local j = jogadores[i]
				if elementData and elementData.ID then
					if (getElementData (j, elementData.ID)) == (tonumber(nome)) then
					proprietario = j
					break
					end
				end
			end
		end
		if isElement(proprietario) == false and isElement (getPlayerFromPartialName (nome)) then
		proprietario = getPlayerFromPartialName (nome)
		end
	return proprietario
	end
	
	if comandos then
		if comandos.criar then
			function criarComando (...)
				if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
			local a = {unpack (arg)}
			local admin = arg[1]
			local conta = getPlayerAccount (admin)
				if isGuestAccount (conta) == false then
				local cc = getAccountName (conta)
					if isObjectInACLGroup ("user."..cc, aclGetGroup ("Admin")) then
					local comando = a[2]
					local nome = a[3]
					local proprietario = encontrarJogador (a[#a])
						if proprietario == false then
							for i=4, #a do
							nome = nome.." "..a[i]
							end
						else
						local n = #a
							for i=4, n-1 do
							nome = nome.." "..a[i]
							end
						end
						if isElement(proprietario) then
						local interior = getElementInterior (proprietario)
						local dimensao = getElementDimension (proprietario)
						local rx,ry,rz = getElementRotation (proprietario)
						local x,y,z = getElementPosition (proprietario)
						local x = x + ((math.cos(math.rad(rz + 90))) * 2)
						local y = y + ((math.sin(math.rad(rz + 90))) * 2)
						local veh = createVehicle (nome, x,y,z,rx,ry,rz)
							if not dono then dono = {} end
						dono[veh] = proprietario
							if not carros[proprietario] then carros[proprietario] = {} end
						table.insert (carros[proprietario], veh)
						--triggerClientEvent (proprietario, "PUNKConcessionariaAtivarCarro", proprietario, veh)
						else
						local interior = getElementInterior (admin)
						local dimensao = getElementDimension (admin)
						local rx,ry,rz = getElementRotation (admin)
						local x,y,z = getElementPosition (admin)
						local x = x + ((math.cos(math.rad(rz + 90))) * 2)
						local y = y + ((math.sin(math.rad(rz + 90))) * 2)
						local veh = createVehicle (nome, x,y,z,rx,ry,rz)
							if isElement(veh) then
								if getElementInterior (veh) ~= interior then setElementInterior (veh, interior) end
								if getElementDimension (veh) ~= dimensao then setElementDimension (veh, dimensao) end
							else
							
							end
						end
					end
				end
			end
			addCommandHandler (comandos.criar, criarComando, false, false)
		end
		if comandos.resetar then
			function resetarComando (...)
				if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
			local a = {unpack (arg)}
			local admin = arg[1]
			local conta = getPlayerAccount (admin)
				if isGuestAccount (conta) == false then
				local cc = getAccountName (conta)
					if isObjectInACLGroup ("user."..cc, aclGetGroup ("Admin")) then
					local comando = a[2]
					local nome = a[3]
						for i=4, #a do
						nome = nome.." "..nome
						end
					local jogador = encontrarJogador (nome)
						if isElement(jogador) then
							if carros and carros[jogador] then
								for k=1, #carros[jogador] do
								destroyElement (carros[jogador][k])
								end
							carros[jogador] = {}
							end
							if carrosFila and carrosFila[jogador] then carrosFila[jogador] = {} end
							if veiculos then
							local conta = getPlayerAccount (jogador)
							setAccountData (conta, "PUNKConcessionariaDados", false)
							end
						end
					end
				end
			end
			addCommandHandler (comandos.resetar, resetarComando, false, false)
		end
	end

	--Veiculos
	if veiculos then
	veiculosAvenda = {}
	conce = {}
	marcadores = {}
		function criarVeiculos ()
		arquivo = nil
		handC = nil
		local eventTab = {}
			for i, v in pairs (veiculos) do
			local nome = i
				if veiculos[i].configuracoes then
				local icone = veiculos[i].configuracoes.icone
					if icone then createBlip (Vector3 (icone), 55, 1, 0,0,0,0, icone[3], 180) end
				--local c = veiculos[i].configuracoes
				--vitrine = c.vitrine
				end
			--dono
				if veiculos[i].configuracoes then
				local a = veiculos[i].configuracoes
					if a.acesso then
					local acesso = a.acesso
					local dono = acesso.dono
					local m = createMarker (Vector3(acesso.posicao), acesso.tipo, acesso.tamanho, unpack(acesso.cor))
					local marker = createColSphere (Vector3(acesso.posicao), acesso.tamanho)
					setElementInterior (marker, acesso.interior)
					setElementDimension (marker, acesso.dimensao)
						addEventHandler ("onColShapeHit", marker, function (jogador, estado)
							if estado then
								if getElementType (jogador) == "player" then
								local acc =  getPlayerAccount ( jogador )
									if isGuestAccount (acc) == false then
									local accNome = getAccountName ( acc )
										for bah=1, #dono do
											if isObjectInACLGroup ("user."..accNome, aclGetGroup (dono[bah]) ) then 
											triggerClientEvent (jogador,"PUNKConcessionariaChegouLoja", jogador, marker, veiculos[i], nome)
											break
											end
										end
									end
								end
							end
						end)
					
						addEventHandler ("onColShapeLeave", marker, function (jogador, estado)
							if getElementType (jogador) == "player" then
							triggerClientEvent (jogador, "PUNKConcessionariaSaiuLoja", jogador, source)
							end
						end)
					end
				--
				end
				
				local tab = veiculos[i].localizacoes
				if tab then
					for k=1, #tab do
					local posicao = tab[k].posicao
						if isElement(veiculoVaga[posicao]) then else
						local rotacao = tab[k].rotacao
						local interior = tab.interior
							if tab[k].interior then
							interior = tab[k].interior
							end
						local dimensao = tab.dimensao
							if tab[k].dimensao then
							dimensao = tab[k].dimensao
							end
						local marker = createMarker (posicao[1], posicao[2], posicao[3] + 2, "arrow", 1, 0,0,255,70)
						setElementInterior (marker, interior)
						setElementDimension (marker, dimensao)
						local col = createColSphere (posicao[1], posicao[2], posicao[3] + 1, 2)
						setElementInterior (col, interior)
						setElementDimension (col, dimensao)
						tab[k].marker = marker
						tab[k].col = col
						--setElementVisibleTo (mark, root, false)
						--setElementVisibleTo (marker, root, false)
						local lugar = i
							for nome, v in pairs (veiculos) do
								if nome == lugar then
								local t = v.configuracoes
								local ta = t.acesso
								d = ta.dono
								end
							end
						local dd = d
							addEventHandler ("onColShapeHit", col, function (elemento, estado)
								if estado then
									if getElementType (elemento) == "vehicle" then
									local jogador = getVehicleController (elemento)
										if isElement (jogador) then
										local acc =  getPlayerAccount ( jogador )
											if isGuestAccount (acc) == false then
											local accNome = getAccountName ( acc )
												for bah=1, #dd do
													if isObjectInACLGroup ("user."..accNome, aclGetGroup (dd[bah]) ) then 
													p = nil
														if preco[elemento] then
														p = (preco[elemento]*0.5) / (getElementHealth(elemento) / 1000)
														else
														p = (getVehicleHandling (elemento)["monetary"] *0.5) / (getElementHealth(elemento) / 1000)
														end
													notificacao (jogador, nil, (nomeVeiculo[elemento] or getVehicleName(elemento))..", ".."Preço: $"..p, "default-bold", 12, "esquerda", "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")	
													notificacao (jogador, nil, "Pressione '"..'e'.."' para vender", "default-bold", 12, "esquerda", "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")			
													bindKey (jogador, controles.vender, "down", "vender")
													--notificacao (jogador, nil, "Vender "..nomeVeiculo[elemento].." por $"..getVehicleHandling(elemento)["monetary"], "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")		
													conce[jogador] = lugar
													conce[elemento] = lugar
													marcadores[elemento] = {marker, col}		
													marcadores[jogador] = {marker, col}													
													end
												end
											end
										end
									end
								end
							end)
							addEventHandler ("onColShapeLeave", col, function (elemento, estado)
								if getElementType (elemento) == "player" then
								conce[elemento] = nil
								unbindKey (elemento, controles.vender, "down", "vender")
								end
							end)
						end
					
					end
				
				
				local localizacoes = {}
				quantidade = nil
					if veiculos[i].configuracoes then
					local q = veiculos[i].configuracoes
						if q.estoque then
						quantidade = q.estoque
						end
					end
					if quantidade then
						for j=1, quantidade do
						local n = math.random (#veiculos[i].localizacoes)
						table.insert (localizacoes, veiculos[i].localizacoes[n])
						end
					else
					localizacoes = veiculos[i].localizacoes
					end
				
					for k=1, #localizacoes do
					local posicao = localizacoes[k].posicao
						if isElement(veiculoVaga[posicao]) then else
						local rotacao = localizacoes[k].rotacao
						local interior = localizacoes.interior
						local interior = localizacoes[k].interior
						local dimensao = localizacoes.dimensao
						local dimensao = localizacoes[k].dimensao
						local tempTab = {}
						local transportes = veiculos[i].veiculos
						local marker = localizacoes[k].marker
						local col = localizacoes[k].col
							if #transportes > 0 then
								for o=1, #transportes do
									for nome, informacoes in pairs (transportes[o]) do
										if table.contain (vehicleIds, nome) then
										table.insert (tempTab, {nome, informacoes})
										else
										local v = transportes[o]
											if not v["base"] then
											else
											table.insert (tempTab, {nome, informacoes})
											end
										end
									end
								end
							else
								for nome, informacoes in pairs (transportes) do
								--local v = transportes[o]
									--if not v["base"] then
								table.insert (tempTab, {nome, informacoes})
								end
							end
						local n = tempTab [math.random ( #tempTab )]
						local nome = n[1]
						local informacoes = n[2]
							for n, a in pairs (informacoes) do
								if n == "base" then
								
								end
							end
						id, modelo, substituir, compravel, entravel, custo = nil,nil,nil,nil,nil,nil
						aquatico, aereo = nil, nil
							restock = nil
							if informacoes then
								for atributo, valor in pairs (informacoes) do
									if atributo == "valor" then
									custo = valor
									end
									if atributo == "nome" then
									nomeV = valor
									end
									if atributo == "base" then
									id = valor
									end
									if atributo == "modelo" then
									modelo = valor
									end
									if atributo == "substituir" then
									substituir = valor
									end
									if atributo == "compravel" then
									compravel = valor
									end
									if atributo == "entravel" then
									entravel = valor
									end
									if atributo == "re-estoque" then
									restock = valor
									end
									if atributo == "dono" then
									donoVeiculo = buscarDono (valor)
									end
									if atributo == "aquatico" then
									aquatico = valor
									end
									if atributo == "aereo" then
									aereo = valor
									end
								end
							end
							if not id then
							id = nome
								if informacoes then
									for atributo, valor in pairs (informacoes) do
										if atributo == "valor" then
										custo = valor
										end
										if atributo == "nome" then
										nomeV = valor
										end
										if atributo == "base" then
										id = valor
										end
										if atributo == "modelo" then
										modelo = valor
										end
										if atributo == "substituir" then
										substituir = valor
										end
										if atributo == "compravel" then
										compravel = valor
										end
										if atributo == "entravel" then
										entravel = valor
										end
										if atributo == "re-estoque" then
										restock = valor
										end
										if atributo == "dono" then
										donoVeiculo = buscarDono (valor)
										end
										if atributo == "aquatico" then
										aquatico = valor
										end
										if atributo == "aereo" then
										aereo = valor
										end
									end
								end
							end
							if type (id) == "number" then
							
							else
							id = getVehicleModelFromName(id)
							end
							if type (nome) == "number" then nome = getVehicleNameFromModel (nome) end
							if not nome then outputDebugString ("nome ausente: "..nome) end
							if not id then
							id = nome
							--outputDebugString ("ID base do veículo '"..nome.."' ausente no banco de dados (veiculos/handling)", 2)
							--id = vehicleIds[math.random(#vehicleIds)]
							end
						local veiculo = createVehicle (id, Vector3(posicao), 0,0,rotacao)
							if isElement(veiculo) then
								if aereo == true then table.insert (aereos, veiculo) end
								if aquatico == true then table.insert (aquaticos, veiculo) end
							conce[veiculo] = i			
								if isElement(veiculo) then
									if restock then
									veiculoRestock[veiculo] = restock
									restock = nil
									end
								table.insert (eventTab, veiculo)
								setElementPosition (veiculo, Vector3(posicao))
								veiculoVaga[posicao] = veiculo
								veiculoVaga[veiculo] = posicao
								marcadores[veiculo] = {marker, col}
								if informativo == true then
								setElementVisibleTo (marker, root, true)
								else
								setElementVisibleTo (marker, root, false)
								end
								setElementVisibleTo (col, root, false)
									if compravel ~= true and entravel == false then setVehicleLocked (veiculo, true) end
								setVehicleDamageProof (veiculo, true)
								setVehicleEngineState (veiculo, false)
									if interior and interior ~= 0 then
									setElementDimension (veiculo, dimensao)
									end
									if dimensao and dimensao ~= 0 then
									setElementInterior (veiculo, interior)
									end
									if nome and nome ~= nao then
										if nomeV then
										nomeVeiculo[veiculo] = nomeV
										nomeV = nil
										else
										nomeVeiculo[veiculo] = nome
										end
									else
									nomeVeiculo[veiculo] = getVehicleNameFromModel (id)
									end
									handC = nomeVeiculo[veiculo]
									if substituir == nao then
									end
									
									if handling and handling[handC] then
										for atributo, valor in pairs (handling[handC]) do
											for a, v in pairs (nomes) do
												if atributo == a then
												setVehicleHandling (veiculo, v, valor)
													if atributo == "valor" then
													preco[veiculo] = valor
													setElementData (veiculo, "preço", valor, true)
													end
													if atributo == "nome" then
													nomeV = valor
													end
													if atributo == "alimentacao" then
														if valor == "gasolina" then
														setVehicleHandling (veiculo, v, "petrol")
														mAlimentacao[veiculo] = "gasolina"
														end
														if valor == "alcool" then
														mAlimentacao[veiculo] = "alcool"
														end
														if valor == "eletronica" then
														setVehicleHandling (veiculo, v, "electric")
														mAlimentacao[veiculo] = "eletronica"
														end
														if valor == "diesel" then
														--setVehicleHandling (veiculo, v, "diesel")
														mAlimentacao[veiculo] = "diesel"
														end
													end
												end
											end
										end
									end
									for atributo, valor in pairs (informacoes) do
										for a, v in pairs (nomes) do
											if atributo == a then
											setVehicleHandling (veiculo, v, valor)
												if atributo == "valor" then
												preco[veiculo] = valor
												setElementData (veiculo, "preço", valor, true)
												end
												if atributo == "nome" then
												nomeV = valor
												end
												if atributo == "alimentacao" then
													if valor == "gasolina" then
													setVehicleHandling (veiculo, v, "petrol")
													mAlimentacao[veiculo] = "gasolina"
													end
													if valor == "alcool" then
													mAlimentacao[veiculo] = "alcool"
													end
													if valor == "eletronica" then
													setVehicleHandling (veiculo, v, "electric")
													mAlimentacao[veiculo] = "eletronica"
													end
													if valor == "diesel" then
													--setVehicleHandling (veiculo, v, "diesel")
													mAlimentacao[veiculo] = "diesel"
													end
												end
											end
										end
									end
									
									if custo then
									preco[veiculo] = custo
									else
									preco[veiculo] = getVehicleHandling(veiculo).monetary
									end
								setElementData (veiculo, "preço", preco[veiculo], true)
									--
									local dados = {
									elemento = veiculo,
									nome = nomeVeiculo[veiculo],
									preco = preco[veiculo],
									}
									--
									if compravel == true then
									table.insert (veiculosAvenda, dados)
									end
									if modelo then
									local tab =  {
									elemento = veiculo,
									nome = nomeVeiculo[veiculo],
									modelo = modelo,
									substituir = substituir,
									--alimentacao = mAlimentacao[veiculo],
									}
									table.insert (veiculosCustom, tab)
									
									end
									if not tabNomes then tabNomes = {} end
									if nomeVeiculo[veiculo] ~= getVehicleName (veiculo) then
									table.insert (tabNomes, {veiculo = veiculo, nome = nomeVeiculo[veiculo]})
									end
									if donoVeiculo then 
									comprarVeiculo (donoVeiculo, veiculo, true)
									end
								end
								donoVeiculo = nil
								nome = nil
								modelo = nil
								substituir = nil
								veiculo = nil
								nomeV = nil
							else
							outputDebugString ("veiculo nao criado "..id)
							end
						end
					end
				end
			end
			if #eventTab > 0 then
			triggerClientEvent (jogadoresProntos, "PUNKConcessionariaAtualizarVeiculos", root, veiculosAvenda, tabNomes)
			end
		end
		criarVeiculos()
		
		dono = {}
		carros = {}
		function comprarVeiculo (jogador, veiculo, estado)
			if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
			if not jogador then jogador = source end
			if not veiculo then veiculo = getPedOccupiedVehicle(jogador) end
			
			if not dono[veiculo] then
				if not preco[veiculo] then preco[veiculo] = getVehicleHandling(veiculo).monetary setElementData (veiculo, "preço", preco[veiculo], true) end
				if not estado then
					if getPlayerMoney (jogador) < preco[veiculo] then return end
				else
				takePlayerMoney (jogador, preco[veiculo])
				end
				if not carros[jogador] then carros[jogador] = {} end
				if configuracoes and configuracoes.limite and carros[jogador] and (#carros[jogador] + 1) > configuracoes.limite then
				notificacao (jogador, nil, "Você atingiu o limite de veiculos", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, "e", {255,255,255,255}, "sucesso")			
				return
				end
			table.removeValue (veiculosAvenda, veiculo)
				if veiculoRestock[veiculo] then
					if veiculoVaga[veiculo] then
					local vx,vy,vz = veiculoVaga[veiculo][1],veiculoVaga[veiculo][2],veiculoVaga[veiculo][3]
						if marcadores[veiculo] then
						marker = marcadores[veiculo][1]
						col = marcadores[veiculo][2]
						end
					local a = marker
					local b = col
					local a = veiculoVaga[veiculo]
					veiculoVaga[a] = nil
					veiculoVaga[veiculo] = nil
					veiculoVaga[veiculo] = setTimer (function ()
							if encontrarVaga (vx,vy,vz, 2) ~= false then
							setElementVisibleTo (a, root, true)
							setElementVisibleTo (b, root, true)
							killTimer (veiculoVaga[veiculo])
							end
						end, 1000, 0)
					end
				end
			dono[veiculo] = jogador
			setVehicleDamageProof (veiculo, false)
			table.insert (carros[jogador], veiculo)
				for i=1, #veiculosAvenda do
				local veh = veiculosAvenda[i].elemento
					if veiculo == veh then
					table.remove (veiculosAvenda, i)
					break
					end
				end
			triggerClientEvent (jogadoresProntos, "PUNKConcessionariaAtualizarVeiculos", root, veiculosAvenda, tabNomes)
			end
		end
		addEvent ("PUNKConcessionariaComprar", true)
		addEventHandler ("PUNKConcessionariaComprar", getRootElement(), comprarVeiculo)

		if comandos and comandos.vender then
		preco = {}
			function venderVeiculo (jogador)
				if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
				if not conce[jogador] then return end
			local elemento = getPedOccupiedVehicle (jogador)
			dono[elemento] = nil
			setControlState (jogador, "enter_exit", true)
				setTimer (function ()
				setControlState (jogador, "enter_exit", false)
				end, 100, 1)
						
				if preco[elemento] then
				p = preco[elemento]
				else
				p = getVehicleHandling(elemento).monetary
				end
				if nomeVeiculo[elemento] then nome = nomeVeiculo[elemento] else nome = getVehicleNameFromModel (getElementModel (elemento)) end
				local dados = {
				elemento = elemento,
				nome = nome,
				preco = p,
				}
				if carros[jogador] and table.contain (carros[jogador], elemento) then
				table.removeValue (carros[jogador], elemento)
				end
			local p = (p*0.5) / (getElementHealth(elemento) / 1000)
			givePlayerMoney (jogador, p)
			table.insert (veiculosAvenda, dados)
			
			local lugar = conce[elemento]
				if not lugar then lugar = conce[jogador] end
				for nome, v in pairs (veiculos) do
					if nome == lugar then
					local t = v.localizacoes
						for a, b in pairs (t) do
							if type (b) == "table" then
								if isElementWithinColShape(elemento, b.col) then
								local posicao = b.posicao
								veiculoVaga[elemento] = posicao
								veiculoVaga[posicao] = elemento
								marcadores[elemento] = {b.marker, b.col}
								setElementVisibleTo (b.marker, root, false)
								setElementVisibleTo (b.col, root, false)
								end
							end
						--b.marker
						--b.col
						end
					end	
				end
			triggerClientEvent (jogadoresProntos, "PUNKConcessionariaAtualizarVeiculos", root, veiculosAvenda, veiculosCustom, tabNomes)
			notificacao (jogador, nil, "Você vendeu seu "..nome.." por $"..p, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})									
			unbindKey (jogador, controles.vender, "down", "vender")
			end
			addCommandHandler (comandos.vender, venderVeiculo, false )
		end
		
		function escolhaCarro (id, x,y,z, rx,ry,rz, interior, dimensao, cor, p, hands)
		if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
		local jogador = source
		--local x,y,z = 555.515, -1265.623, 17.242
		veiculo = nil
			if p and p > 0 then
				if getPlayerMoney (jogador) >= p then
				--takePlayerMoney (jogador, p)
				--notificacaoInfo (jogador, nil, "Você adquiriu um(a) ".."veiculo".." por $"..preco, "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, "e", {255,255,255,255}, "sucesso")		
				--local veiculo = createVehicle (id, jogador, x,y,z,rotacao,0,0, true, false, p, hands)
				else
				return
				end
			end
			veiculo = createVehicle (id, x,y,z, rx,ry,rz)
				if isElement (veiculo) then else outputDebugString ("Falha ao criar um veículo") return end
			preco[veiculo] = p
			setVehicleColor (veiculo, cor[1], cor[2], cor[3], cor[4], cor[5], cor[6], cor[7], cor[8], cor[9], cor[10], cor[11], cor[12])
			comprarVeiculo (jogador, veiculo, true)
				if getElementInterior (veiculo) ~= interior then setElementInterior (veiculo, interior) end
				if getElementDimension (veiculo) ~= dimensao then setElementDimension (veiculo, dimensao) end
			preco[veiculo] = p
			if hands then
				for atributo, valor in pairs (hands) do
					for a, v in pairs (nomes) do
						if atributo == v then
						setVehicleHandling (veiculo, atributo, valor)
						end
						if atributo == "monetary" then
						preco[veiculo] = valor
						end
						if atributo == "re-estoque" then
						restock = valor
						end
					end
				end
			end
			setElementData (veiculo, "preço", preco[veiculo], true)
		end
		addEvent ("PUNKConcessionariaEscolhaCarro", true)
		addEventHandler ("PUNKConcessionariaEscolhaCarro", getRootElement(), escolhaCarro)

		--Restrição dirigir
		if configuracoes and configuracoes.restricao and configuracoes.restricao == sim then
			function entrarCarro (jogador,lugar, roubado)
				if lugar == 0 then
				local veiculo = source
					if restricaoDirigir == 1 then
						if dono[veiculo] and jogador ~= dono[veiculo] then
						cancelEvent()
						end
					end
				end
			end
		addEventHandler ("onVehicleStartEnter", getRootElement(), entrarCarro)
		end

	carrosFila = {}
	local temporizadorVeiculos = {}
	--veh_data = dbConnect("sqlite", "veh.db")
	--dbExec(veh_data, "CREATE TABLE IF NOT EXISTS vehicles (ID INTEGER PRIMARY KEY, nome TEXT, modelo TEXT, posicao TEXT, rotacao TEXT, interior TEXT, dimensao TEXT, cor TEXT, lataria TEXT, painel TEXT, portas TEXT, abertas TEXT, rodas TEXT, lanternas TEXT, farois TEXT, motor TEXT, alimentacao TEXT, handling TEXT, melhorias TEXT, arquivo TEXT, dono TEXT)")
		--dados
		function dadosVeiculo (jogador,estado)
		local conta = getPlayerAccount (jogador)
			if isGuestAccount (conta) then return end
			if estado == true then
			local tabela = {}
				if carros[jogador] and #carros[jogador] > 0 then
					for i=1, #carros[jogador] do
					local veiculo = carros[jogador][i]
						if isElement (veiculo) then
							if getElementHealth (veiculo) > 249 then
							local x,y,z = getElementPosition (veiculo)
							local a,b,rot = getElementRotation (veiculo)
							local int, dim = getElementInterior (veiculo), getElementDimension (veiculo)
							local modelo = getElementModel (veiculo)
							local cor = {getVehicleColor (veiculo, true)}
							local lataria = getElementHealth (veiculo)
							local handling = getVehicleHandling (veiculo)
							local farois = getVehicleOverrideLights ( veiculo )
							local melhorias = {}
								for j=0, 16 do
								table.insert (melhorias, getVehicleUpgradeOnSlot ( veiculo, j ))
								end
							local paineis = {}
								for j=0, 6 do
								table.insert (paineis, getVehiclePanelState(veiculo, j))
								end
							local portas = {}
								for j=0, 5 do
								table.insert (portas, getVehicleDoorState(veiculo, j))
								end
							local portasAbrir = {}
								for j=0, 5 do
								table.insert (portasAbrir, getVehicleDoorOpenRatio(veiculo, j))
								end
							local luzes = {}
								for j=0, 3 do
								table.insert (luzes, getVehicleLightState(veiculo, j))
								end
							local rodas = {}
							table.insert (rodas, {getVehicleWheelStates(veiculo)})
								for j=1, #veiculosCustom do
									if veiculo == veiculosCustom[j].elemento then
									arquivo = veiculosCustom[j]
									arquivo.elemento = nil
									arquivo.dummy = nil
									local m = arquivo.modelo
										if m then
											if fileExists ("modelos/"..m..".dff") then
											local punkstudiosveiculosRegistroDFF = "punkstudiosveiculos"
											local dff = fileOpen("modelos/"..m..".dff") 
											local tamanho = fileGetSize(dff)
											local conteudo = fileRead(dff, tamanho) 
											local informacao = teaEncodeBinary(conteudo, punkstudiosveiculosRegistroDFF) 
											veiculosCustom[j].dff = informacao
											fileClose (dff)
											end
											if fileExists ("modelos/"..m..".txd") then
											local punkstudiosveiculosRegistroDFF = "punkstudiosveiculos"
											local txd = fileOpen("modelos/"..m..".txd") 
											local tamanho = fileGetSize(txd)
											local conteudo = fileRead(txd, tamanho) 
											local informacao = teaEncodeBinary(conteudo, punkstudiosveiculosRegistroDFF) 
											veiculosCustom[j].txd = informacao
											fileClose (txd)
											end
											if fileExists ("modelos/"..m..".col") then
											local punkstudiosveiculosRegistroDFF = "punkstudiosveiculos"
											local col = fileOpen("modelos/"..m..".col") 
											local tamanho = fileGetSize(col)
											local conteudo = fileRead(col, tamanho) 
											local informacao = teaEncodeBinary(conteudo, punkstudiosveiculosRegistroDFF) 
											veiculosCustom[j].col = informacao
											fileClose (col)
											end
										end
									end
								end
								table.insert (tabela,
								{
								nome = nomeVeiculo[veiculo],
								pos = {x,y,z},
								rotacao = rot,
								skin = modelo,
								cores = cor,
								vida = lataria,
								interior = int,
								dimensao = dim,
								melhoria = melhorias,
								painel = paineis,
								porta = portas,
								portaAberta = portasAbrir,
								lanternas = luzes,
								roda = rodas,
								motor = getVehicleEngineState (veiculo),
								farois = farois,
								hands = handling,
								combustivel = veiculoCombustivel and veiculoCombustivel[veiculo] or nil,
								arquivo = arquivo,
								alimentacao = mAlimentacao[veiculo] or getVehicleHandling(veiculo).engineType,
									blindagem = blindagem and {
									lataria = blindagemLataria[veiculo],
									pneus = blindagemPneus[veiculo],
									janelas = blindagemJanelas[veiculo],
									perfurantes = blindagemPerfurantes[veiculo],
									colisoes = blindagemColisoes[veiculo],
									},
								})
							arquivo = nil
							--dbExec(veh_data, "INSERT INTO vehicles VALUES (NULL,?,?,?,?,?,?,?,?,?,?,?,?,?, ?, ?, ?, ?, ?, ?, ?)", nomeVeiculo[veiculo], modelo, toJSON({x,y,z}), rot, int, dim, toJSON(cor), lataria, toJSON(paineis), toJSON(portas), toJSON(portasAbrir), toJSON(rodas), toJSON(luzes), farois, getVehicleEngineState (veiculo), mAlimentacao[veiculo] or getVehicleHandling(veiculo).engineType, toJSON(handling), toJSON(melhorias), arquivo, getAccountName (conta))
							destroyElement (veiculo)
								if eventName == "onPlayerLogout" then
								--triggerClientEvent ("PUNKConcessionariaAtivarCarro", jogador)
								end
							else
							destroyElement (veiculo)
							end
						else
						table.remove (carros[jogador], i)
						end
					end
				end
				if carrosFila[jogador] and #carrosFila[jogador] > 0 then
					for j=1, #carrosFila[jogador] do
					local a = carrosFila[jogador][j]
					table.insert (tabela, {
					nome = a.nome,
					pos = {a.pos[1], a.pos[2], a.pos[3]},
					rotacao = a.rotacao,
					skin = a.skin,
					cores = a.cores,
					vida = a.vida,
					interior = a.int,
					dimensao = a.dim,
					melhoria = a.melhoria,
					painel = a.painel,
					porta = a.porta,
					portaAberta = a.portaAberta,
					lanternas = a.lanternas,
					roda = a.roda,
					motor = a.motor,
					farois = a.farois,
					hands = a.hands,
					combustivel = a.combustivel,
					arquivo = a.arquivo,
					alimentacao = a.alimentacao,
					blindagem = a.blindagem
					})
					end
				end
				if tabela and #tabela > 0 then
				local a = table.toString(tabela)
				setAccountData (conta, "PUNKConcessionariaDados", a)
				tabela = nil
				end
			else
				if getAccountData (conta, "PUNKConcessionariaDados") then
				local tabela = {}
				local tabela = table.fromString(getAccountData (conta, "PUNKConcessionariaDados"))
					if tabela and #tabela > 0 then
						for i=1, #tabela do
							if configuracoes and configuracoes.limite and i > configuracoes.limite then
							notificacao (jogador, nil, "Você atingiu o limite de veiculos", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, "e", {255,255,255,255}, "sucesso")			
								if not carrosFila[jogador] then carrosFila[jogador] = {} end
							table.insert (carrosFila[jogador], tabela[i])
							else
							local nome = tabela[i].nome
							local x,y,z = tabela[i].pos[1], tabela[i].pos[2], tabela[i].pos[3]
							local rot = tabela[i].rotacao
							local modelo = tabela[i].skin
							local cor = tabela[i].cores
							local vida = tabela[i].vida
							local interior = tabela[i].int
							local dimensao = tabela[i].dim
							local melhorias = tabela[i].melhoria
							local paineis = tabela[i].painel
							local portas = tabela[i].porta
							local abertas = tabela[i].portaAberta
							local luzes = tabela[i].lanternas
							local rodas = tabela[i].roda
							local motor = tabela[i].motor
							local farois = tabela[i].farois
							local hands = tabela[i].hands
							local combustivel = tabela[i].combustivel
							local arquivo = tabela[i].arquivo
							local alimentacao = tabela[i].alimentacao
							local blindagem = tabela[i].blindagem
							local tabelaCores = {}
								for k=1, #cor do
								table.insert (tabelaCores, cor[k])
								end
							local lataria = tabela[i].vida
								if lataria < 250 then lataria = 250 end
							local int, dim = tabela[i].int, tabela[i].dim
								if encontrarVaga(x,y,z,5) ~= false then
								local veh = criarVeiculo (modelo, x,y,z, rot, tabelaCores,jogador, lataria, paineis, portas, abertas, rodas, luzes, melhorias, motor, farois, hands, int, dim, combustivel, alimentacao, blindagem, arquivo)
									if not carros[jogador] then carros[jogador] = {} end
								table.insert (carros[jogador], veh)
									if encontrarVaga(x,y,z,5, jogador) == jogador then
										if isPedInVehicle (jogador) == false then warpPedIntoVehicle (jogador, veh, 0) end
									end
								nomeVeiculo[veh] = nome or getVehicleNameFromModel (modelo)
									if not tabNomes then tabNomes = {} end
									if nomeVeiculo[veh] ~= getVehicleName (veh) then
									table.insert (tabNomes, {veiculo = veh, nome = nomeVeiculo[veh]})
									end
								--return
								else
									if encontrarVaga(x,y,z,5, jogador) == jogador then
									local veh = criarVeiculo (modelo, x,y,z, rot, tabelaCores,jogador, lataria, paineis, portas, abertas, rodas, luzes, melhorias, motor, farois, hands, int, dim, combustivel, alimentacao, blindagem, arquivo)
										if isPedInVehicle (jogador) == false then warpPedIntoVehicle (jogador, veh, 0) end
									nomeVeiculo[veh] = nome
										if not tabNomes then tabNomes = {} end
										if nomeVeiculo[veh] ~= getVehicleName (veh) then
										table.insert (tabNomes, {veiculo = veh, nome = nomeVeiculo[veh]})
										end
										if nome then
										notificacao (jogador, nil, "Seu "..nome.." foi recriado com sucesso!", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})		
										else
										notificacao (jogador, nil, "Seu "..getVehicleNameFromModel (modelo).." foi recriado com sucesso!", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})		
										end
										if not carros[jogador] then carros[jogador] = {} end
									table.insert (carros[jogador], veh)
									else
									notificacao (jogador, nil, "Há um objeto obstruindo a criação do seu "..nome, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})		
										if not carrosFila[jogador] then carrosFila[jogador] = {} end
									table.insert (carrosFila[jogador], tabela[i])
									end
									if isTimer (temporizadorVeiculos[conta]) then killTimer(temporizadorVeiculos[conta]) end
										temporizadorVeiculos[conta] = setTimer (function ()
											if isElement (getAccountPlayer(conta)) then
												if carrosFila[jogador] and #carrosFila[jogador] > 0 then
													for j=1, #carrosFila[jogador] do
													local a = carrosFila[jogador][j]
														if a then
															if encontrarVaga(x,y,z,5) ~= false then
															local nome = a.nome
															local x,y,z = a.pos[1], a.pos[2], a.pos[3]
															local rot = a.rotacao
															local modelo = a.skin
															local cor = a.cores
															local vida = a.vida
															local interior = a.int
															local dimensao = a.dim
															local melhorias = a.melhoria
															local paineis = a.painel
															local portas = a.porta
															local abertas = a.portaAberta
															local luzes = a.lanternas
															local rodas = a.roda
															local motor = a.motor
															local farois = a.farois
															local hands = a.hands
															local combustivel = a.combustivel
															local arquivo = a.arquivo
															local alimentacao = a.alimentacao
															local blindagem = a.blindagem
																if nome then
																notificacao (jogador, nil, "Seu "..nome.." foi recriado com sucesso!", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})		
																else
																notificacao (jogador, nil, "Seu "..getVehicleNameFromModel (modelo).." foi recriado com sucesso!", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})		
																end
															local veh = criarVeiculo (modelo, x,y,z, rot, tabelaCores,jogador, lataria, paineis, portas, abertas, rodas, luzes, melhorias, motor, farois, hands, int, dim, combustivel, alimentacao, blindagem, arquivo)
															nomeVeiculo[veh] = nome
																if not tabNomes then tabNomes = {} end
																if nomeVeiculo[veh] ~= getVehicleName (veh) then
																table.insert (tabNomes, {veiculo = veh, nome = nomeVeiculo[veh]})
																end
																if not carros[jogador] then carros[jogador] = {} end
															table.insert (carros[jogador], veh)
															table.remove (carrosFila[jogador], j)
																if #carrosFila[jogador] <= 0 then
																killTimer (temporizadorVeiculos[conta])
																end
															end
														else
														table.remove (carrosFila[jogador], j)
														end
													end
												end
											else
												if isTimer (temporizadorVeiculos[conta]) then
												killTimer (temporizadorVeiculos[conta])
												end
											end
										end, 1000, 0)
									--end
								end
							end
						end
					end
				end
			end
		end
		--
		function loginCarro ()
		local jogador = source
			local conta = getPlayerAccount(jogador)
			if isGuestAccount(conta) == false then
				if eventName == "onPlayerQuit" or eventName == "onPlayerLogout" then
				dadosVeiculo (jogador, true)
				elseif eventName == "onPlayerLogin" then
				dadosVeiculo (jogador, false)
				end
			end
		end
		addEventHandler ("onPlayerLogin", getRootElement(), loginCarro)
		addEventHandler ("onPlayerLogout", getRootElement(), loginCarro)
		addEventHandler ("onPlayerQuit", getRootElement(), loginCarro)
		--
		function criarVeiculo (id, x,y,z, rot, cor, jogador, lataria, painel, porta, abertas, rodas, luzes, melhorias, motor, farois, hands, int, dim, combustivel, alimentacao, blind, arquivo)
			if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
			--if isElement (source) then jogador = source end
			if type (id) == "string" then
			
			end
			if not carros[jogador] then carros[jogador] = {} end
			if configuracoes and configuracoes.limite and (carros[jogador] and (#carros[jogador] + 1) > configuracoes.limite) then
			notificacao (jogador, nil, "Você atingiu o limite de veiculos", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, "e", {255,255,255,255}, "sucesso")			
			return
			end
		local veiculo = createVehicle (id, x,y,z,0,0,rot)
			if #carros[jogador] > 0 then
				for i=1, #carros[jogador] do
					if veiculo == carros[jogador][i] then
					table.insert (carros[jogador], veiculo)
					break
					end
				end
			end
			if jogador then
			dono[veiculo] = jogador
			--triggerClientEvent ("PUNKConcessionariaAtivarCarro", jogador, veiculo)
			end
			if cor then
			setVehicleColor (veiculo, cor[1], cor[2], cor[3], cor[4], cor[5], cor[6], cor[7], cor[8], cor[9], cor[10], cor[11], cor[12])
			end
			if motor then
			setVehicleEngineState (veiculo, motor)
			end
			if farois then
			setVehicleOverrideLights (veiculo, farois)
			end
			if lataria then
			setElementHealth (veiculo, lataria)
			end
			if int then
			setElementInterior (veiculo, int)
			end
			if dim then
			setElementDimension (veiculo, dim)
			end
			if melhorias then
				for i=1, #melhorias do
					if melhorias[i-1] then
					addVehicleUpgrade (veiculo, melhorias[i-1])
					end
				end
			end
			if painel then
				for i=1, #painel do
				setVehiclePanelState(veiculo, i-1, painel[i])
				end
			end
			if porta then
				for i=1, #porta do
				setVehicleDoorState(veiculo, i-1, porta[i], false)
				end
				if abertas then
					setTimer (function ()
						if isElement(veiculo) then
							for i=1, #abertas do
							setVehicleDoorOpenRatio (veiculo, i-1, abertas[i], 0)
							end
						end
					end, 500, 1)
				end
			end
			if luzes then
				for i=1, #luzes do
				setVehicleLightState(veiculo, i-1, luzes[i])
				end
			end
			if rodas then
			setVehicleWheelStates (veiculo, rodas[1][1], rodas[1][2], rodas[1][3], rodas[1][4])
			end
			if hands then
				for atributo, valor in pairs (hands) do
				setVehicleHandling (veiculo, atributo, valor)
				end
			end
			--if combustivelAtivado == sim then
				if combustivel then
				veiculoCombustivel[veiculo] = combustivel
				end
				if not mAlimentacao then mAlimentacao = {} end
				mAlimentacao[veiculo] = alimentacao
			--end
			if blindagem then
				if blind then
				blindagemLataria[veiculo] = blind.lataria
				blindagemPneus[veiculo] = blind.pneus
				blindagemJanelas[veiculo] = blind.janelas
				blindagemPerfurantes[veiculo] = blind.perfurantes
				blindagemColisoes[veiculo] = blind.colisoes
				triggerClientEvent ("PUNKConcessionariaBlindar", root, veiculo, true, blindagemLataria[veiculo], blindagemPneus[veiculo], blindagemJanelas[veiculo], blindagemColisoes[veiculo], blindagemPerfurantes[veiculo])
				end
			end
			if elementData then 
				if elementData.combustivel and elementData.combustivel == sim then
				setElementData (veiculo, elementData.combustivel, combustivel)
				end
				if nomeVeiculo[veiculo] and nomeVeiculo[veiculo] ~= getVehicleName (veiculo) then
				setElementData (veiculo, elementData.nome, nomeVeiculo[veiculo])
				end
			end
			if not tabNomes then tabNomes = {} end
			if nomeVeiculo[veiculo] ~= getVehicleName (veiculo) then
			table.insert (tabNomes, {veiculo = veiculo, nome = nomeVeiculo[veiculo]})
			end
			if arquivo then
			arquivo.elemento = veiculo
				if arquivo.substituir ~= true and arquivo.modelo ~= nao then
				end
			table.insert (veiculosCustom, arquivo)
			triggerClientEvent ("PUNKConcessionariaAtualizarCustoms", root, veiculosCustom, tabNomes)
			arquivo = nil
			end
			return veiculo
		end

		function modParou ()
			local jogadores = getElementsByType ("player")
			for i=1, #jogadores do
			local jogador = jogadores[i]
				if (carros[jogador] and #carros[jogador] > 0) or (carrosFila and carrosFila[jogador] and #carrosFila[jogador] > 0) then
				local conta = getPlayerAccount(jogadores[i])
					if isGuestAccount (conta) == false then
						if eventName == "onResourceStop" then
						dadosVeiculo(jogadores[i], true)
						else
						dadosVeiculo(jogadores[i], false)
						end
					end
				end
			end
		end
		addEventHandler("onResourceStop", getResourceRootElement(getThisResource()), modParou) 
		modParou ()
		
		function encontrarVaga (x,y,z,distanciaVaga, jogador)
		local jogadores = getElementsByType ("player")
			if not distanciaVaga then distanciaVaga = 5 end
			for j=1, #jogadores do
			local px,py,pz = getElementPosition (jogadores[j])
			local dist = getDistanceBetweenPoints3D (x,y,z,px,py,pz)
				if dist <= distanciaVaga then
					if jogadores[j] ~= jogador then
					return false
					else
					return jogadores[j]
					end
				end
			end
		local vehs = getElementsByType ("vehicle")
			for k=1, #vehs do
				if isElement (vehs[k]) then
				local px,py,pz = getElementPosition (vehs[k])
				local dist = getDistanceBetweenPoints3D (x,y,z,px,py,pz)
					if dist <= distanciaVaga then
						if vehs[k] ~= veiculo then
							return false
						end
					end
				end
			end
		end

	end
	--

	if handling then
	--Setando handling no modelo
		for nome, tabela in pairs (handling) do
			if type (nome) == "number" then
				for atributo, valor in pairs (tabela) do
					for a, v in pairs (nomes) do
						if a == atributo then
						setModelHandling (nome, v, valor)
						end
					end
				end
			end
		end
		--ABS
		drag = {}
		function freio (jogador, tecla, estado)
		if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
		local veiculo = getPedOccupiedVehicle (jogador)
			if estado == "down" then
				if getVehicleController (veiculo) == jogador and getVehicleHandling(veiculo).ABS == true then
					if not drag[veiculo] then drag[veiculo] = getVehicleHandling(veiculo).tractionMultiplier end
				setVehicleHandling (veiculo, "tractionMultiplier", drag[veiculo]*10)
				bindKey (jogador, "handbrake", "up", freio)
				unbindKey (jogador, "handbrake", "down", freio)
				end
			else
				if drag[veiculo] and drag[veiculo] ~= getVehicleHandling(veiculo).tractionMultiplier then
				setVehicleHandling (veiculo, "tractionMultiplier", drag[veiculo])
				unbindKey (jogador, "handbrake", "up", freio)
				bindKey (jogador, "handbrake", "down", freio)
				end
			end
		end

		function bindarABS (jogador, lugar)
		local veiculo = source
			if eventName == "onVehicleEnter" then
				if getVehicleController (veiculo) == jogador and getVehicleHandling(veiculo).ABS == true then
				bindKey (jogador, "handbrake", "down", freio)
				end
			else
				if getVehicleController (veiculo) == jogador and getVehicleHandling(veiculo).ABS == true then
				unbindKey (jogador, "handbrake", "down", freio)
				end
			end
		end
		addEventHandler ("onVehicleEnter", getRootElement(), bindarABS)
		--
	end
	--
	
	--ABS
	if configuracoes and configuracoes.ABS and configuracoes.ABS == sim then
	drag = {}
	function freio (jogador, tecla, estado)
	if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
	local veiculo = getPedOccupiedVehicle (jogador)
		if estado == "down" then
			if getVehicleController (veiculo) == jogador and getVehicleHandling(veiculo).ABS == true then
				if not drag[veiculo] then drag[veiculo] = getVehicleHandling(veiculo).tractionMultiplier end
			setVehicleHandling (veiculo, "tractionMultiplier", drag[veiculo]*10)
			bindKey (jogador, "handbrake", "up", freio)
			unbindKey (jogador, "handbrake", "down", freio)
			end
		else
			if drag[veiculo] and drag[veiculo] ~= getVehicleHandling(veiculo).tractionMultiplier then
			setVehicleHandling (veiculo, "tractionMultiplier", drag[veiculo])
			unbindKey (jogador, "handbrake", "up", freio)
			bindKey (jogador, "handbrake", "down", freio)
			end
		end
	end

	function bindarABS (jogador, lugar)
	local veiculo = source
		if eventName == "onVehicleEnter" then
			if getVehicleController (veiculo) == jogador and getVehicleHandling(veiculo).ABS == true then
			bindKey (jogador, "handbrake", "down", freio)
			end
		else
			if getVehicleController (veiculo) == jogador and getVehicleHandling(veiculo).ABS == true then
			unbindKey (jogador, "handbrake", "down", freio)
			end
		end
	end
	addEventHandler ("onVehicleEnter", getRootElement(), bindarABS)
	end
	--

--Inicio
function inicializacoes ()
local jogador = source
	if veiculos then
	triggerClientEvent (jogador, "PUNKConcessionariaAtualizarVeiculos", jogador, veiculosAvenda, tabNomes)
	dadosVeiculo (jogador, false)
	end
	if handling then
	bindKey (jogador, "handbrake", "down", freio)
	end
end
addEvent ("PUNKConcessionariaInicializacoes", true)
addEventHandler ("PUNKConcessionariaInicializacoes", getRootElement(), inicializacoes)

	function inicio (jogador)
		
		if eventName then jogador = source end
		if table.contain (jogadoresProntos, jogador) then
		triggerClientEvent (jogador, "PUNKConcessionariaRecebeu", jogador)
		--inicializacoes (jogador)
		else
		local conta = getPlayerAccount (jogador)
		local j = jogador
			local str = conta
			temporizador[str] = setTimer (function ()
				if isElement (j) then
					if table.contain (jogadoresProntos, j) then
					triggerClientEvent (j, "PUNKConcessionariaRecebeu", j)
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

end

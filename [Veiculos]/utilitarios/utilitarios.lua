
--Eventos

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

function findRotation(x1,y1,x2,y2) 
  local t = -math.deg(math.atan2(x2-x1,y2-y1)) 
  if t < 0 then t = t + 360 end 
  return t 
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

--Shader
local dadosShader = [[
		texture tex;
		technique replace {
			pass P0 {
				Texture[0] = tex;
			}
		}
	]]

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


triggerServerEvent ("PUNKFuncoesInicializacoes", localPlayer)

end
addEvent ("PUNKFuncoesRecebeu", true)
addEventHandler ("PUNKFuncoesRecebeu", getRootElement(), clienteRecebeu)

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
	
	--Funções
	if comandos then
	afivelado = {}
	veiculosSemTranca = {448,461,462,463,481,509,510,521,522,581,586,430,446,452,453,454,472,473,484,493,595,424,457,471,539,568,571}
		function funcoesVeiculoDigitou (jogador, comando, arg1)
			if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
			if isCursorShowing(jogador) then return end
		local veiculo = getPedOccupiedVehicle (jogador)
			if isElement (veiculo) then
				if getVehicleController (veiculo) == jogador then
					--if table.contain (emVeiculo, jogador) == false then return end
					if comando == comandos.motor then
						if dono and dono[veiculo] and getVehicleEngineState(veiculo) == false and (carros[jogador] and table.contain (carros[jogador], veiculo) == false) then notificacao (jogador, nil, "Chaves ausentes", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, nil)				 return end
						if getVehicleType (veiculo) ~= "Bike" and getVehicleType (veiculo) ~= "BMX" and getVehicleType (veiculo) ~= "Quad" then setPedAnimation(jogador, "ped", "car_tune_radio", -1, false, false, false, false) end
						--if combustivelAtivado == sim then
							if veiculoCombustivel and veiculoCombustivel[veiculo] then
								if veiculoCombustivel[veiculo] > 0 then
								setVehicleEngineState (veiculo, not getVehicleEngineState (veiculo))
									if getVehicleEngineState (veiculo) then
									notificacao (jogador, nil, "Motor ligado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
									else
									notificacao (jogador, nil, "Motor desligado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
									end
								else
								notificacao (jogador, nil, "Sem combustivel", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "falha")
								end
							else
							setVehicleEngineState (veiculo, not getVehicleEngineState (veiculo))
								if getVehicleEngineState (veiculo) then
								notificacao (jogador, nil, "Motor ligado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
								else
								notificacao (jogador, nil, "Motor desligado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
								end
							end
						--else
						--setVehicleEngineState (veiculo, not getVehicleEngineState (veiculo))
						--	if getVehicleEngineState (veiculo) then
							--notificacao (jogador, nil, "Motor ligado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, nil)				
							--else
							--notificacao (jogador, nil, "Motor desligado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, nil)				
							--end
						--end
					end
					if comando == comandos.farol then
					local x,y,z = getElementPosition (jogador)
					setPedAnimation(jogador, "ped", "car_lb_pro", -1, false, false, false, false) 
						if getVehicleOverrideLights ( veiculo ) ~= 2 then
						notificacao (jogador, nil, "Faróis ligados", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")				
						infoSom ("genrl", 98, 11, x,y,z, false, 1)
						setVehicleOverrideLights ( veiculo, 2 )
						else
						notificacao (jogador, nil, "Faróis desligados", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")				
						infoSom ("genrl", 98, 10, x,y,z, false, 1)
						setVehicleOverrideLights ( veiculo, 1 )
						end
					end
					if comando == comandos.seta then
						if getVehicleType (veiculo) == "Bike" or getVehicleType (veiculo) == "BMX" or getVehicleType (veiculo) == "Quad" then return end
					setPedAnimation(jogador, "ped", "car_lb_pro", -1, false, false, false, false) 
						if not setasEstado[veiculo] then setasEstado[veiculo] = {} end
						if setasEstado[veiculo].comando == arg1 then
							if setasEstado[veiculo].FE == true then
							setVehicleLightState ( veiculo, 0,  0 )
							end
							if setasEstado[veiculo].TE == true then
							setVehicleLightState ( veiculo, 3,  0 )
							end
							if setasEstado[veiculo].FD == true then
							setVehicleLightState ( veiculo, 1,  0 )
							end
							if setasEstado[veiculo].TD == true then
							setVehicleLightState ( veiculo, 2,  0 )
							end
						setasEstado[veiculo] = nil
						return
						end
						if not setasEstado[veiculo] then setasEstado[veiculo] = {} end
						if getVehicleLightState (veiculo, 0 ) == 0 then
						setasEstado[veiculo].FE = true
						else
						setasEstado[veiculo].FE = false
						end
						if getVehicleLightState (veiculo, 3 ) == 0 then
						setasEstado[veiculo].TE = true
						else
						setasEstado[veiculo].TE = false
						end
						if getVehicleLightState (veiculo, 0 ) == 0 then
						setasEstado[veiculo].FD = true
						else
						setasEstado[veiculo].FD = false
						end
						if getVehicleLightState (veiculo, 3 ) == 0 then
						setasEstado[veiculo].TD = true
						else
						setasEstado[veiculo].TD = false
						end
						setasEstado[veiculo].comando = arg1
					end
					if comando == comandos.pisca then
						if getVehicleType (veiculo) == "Bike" or getVehicleType (veiculo) == "BMX" or getVehicleType (veiculo) == "Quad" then return end
					setPedAnimation(jogador, "ped", "car_lb_pro", -1, false, false, false, false) 
						if not piscasEstado[veiculo] then
						piscasEstado[veiculo] = false
						end
					piscasEstado[veiculo] = not piscasEstado[veiculo]
						if piscasEstado[veiculo] == true then
						notificacao (jogador, nil, "Pisca alerta ligado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
									
							setVehicleLightState ( veiculo, 0,  0 )
							setVehicleLightState ( veiculo, 3,  0 )
							setVehicleLightState ( veiculo, 1,  0 )
							setVehicleLightState ( veiculo, 2,  0 )
						else
						notificacao (jogador, nil, "Pisca alerta desligado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
						end
					end
				end
			else
				
			end
			if comando == comandos.trancar then
				if isElement(veiculo) and table.contain (emVeiculo, jogador) then
				
				if table.contain (veiculosSemTranca, getElementModel (veiculo)) --[[or (veiculoDummy[veiculo] and table.contain (veiculosSemTranca, getElementModel (veiculoDummy[veiculo])))]] then return end
					for i=0,5 do
						if getVehicleDoorOpenRatio (veiculo, i) ~= 0.0 then
						setVehicleDoorOpenRatio (veiculo, i, 0)
						end
					end
				setVehicleLocked (veiculo, not isVehicleLocked (veiculo))
					if getPedOccupiedVehicleSeat (jogador) == 0 or getPedOccupiedVehicleSeat (jogador) == 2 then
					setPedAnimation(jogador, "ped", "drivebyl_l", -1, false, false, false, false) 
					else
					setPedAnimation(jogador, "ped", "drivebyl_r", -1, false, false, false, false) 
					end
				local x,y,z = getElementPosition(jogador) 
					if isVehicleLocked (veiculo) then
					notificacao (jogador, nil, "Trancado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")				
					infoSom ( "genrl", 20, 2, x,y,z, false, 1)
					else
					notificacao (jogador, nil, "Aberto", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")				
					infoSom ( "genrl", 20, 3, x,y,z, false, 1)
					end
				else
				local veiculo = getNearestElement (jogador, "vehicle", 2)
					if isElement (veiculo) then
						if (dono and dono[veiculo] and dono[veiculo] == jogador) or (elementData and elementData.dono and getElementData (veiculo, elementData.dono) and (getElementData (veiculo, elementData.dono) == jogador or getElementData (veiculo, elementData.dono) == getAccountName(getPlayerAccount(jogador)))) then
						local x,y,z = getElementPosition(jogador) 
						local rot = getPedRotation(jogador) 
						local rx,ry,rz = getElementPosition (veiculo)
						local x = x + ((math.cos(math.rad(rot + 90))) * 0.9) 
						local y = y + ((math.sin(math.rad(rot + 90))) * 0.9) 
						toggleAllControls (jogador, false, true)
							setTimer (function ()
								if isElement(jogador) and isElement(veiculo) then
								setPedAnimation(jogador, "int_house", "wash_up", 600, false, false, true, false) 
								setPedRotation(jogador, findRotation(x,y,rx,ry) )
								setVehicleLocked (veiculo, not isVehicleLocked (veiculo))
								local x,y,z = getElementPosition(jogador) 
								toggleAllControls (jogador, true, true)
									if isVehicleLocked (veiculo) then
										for i=0,5 do
											if getVehicleDoorOpenRatio (veiculo, i) ~= 0.0 then
											setVehicleDoorOpenRatio (veiculo, i, 0)
											end
										end
									notificacao (jogador, nil, "Trancado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
									infoSom ("genrl", 20, 2, x,y,z, false, 1)
									else
									notificacao (jogador, nil, "Aberto", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
									infoSom ("genrl", 20, 3, x,y,z, false, 1)
									end
								end
							end, 600,1)
						end
					end
				end
			end
		end
		setasEstado = {}
			timerSeta = setTimer (function ()
			local vehs = getElementsByType ("vehicle")
				for i=1, #vehs do
				local veiculo = vehs[i]
					if isElement(veiculo) then
						if setasEstado[veiculo] then
							if setasEstado[veiculo].comando == "esquerda" then
								if setasEstado[veiculo].FE == true then
									if getVehicleLightState (veiculo, 0 ) == 0 then
									setVehicleLightState ( veiculo, 0,  1 )
									else
									setVehicleLightState ( veiculo, 0,  0 )
									end
								end
								if setasEstado[veiculo].TE == true then
									if getVehicleLightState (veiculo, 3 ) == 0 then
									setVehicleLightState ( veiculo, 3,  1 )
									else
									setVehicleLightState ( veiculo, 3,  0 )
									end
								end
							elseif setasEstado[veiculo].comando == "direita" then
								if setasEstado[veiculo].FD == true then
									if getVehicleLightState (veiculo, 1 ) == 0 then
									setVehicleLightState ( veiculo, 1,  1 )
									else
									setVehicleLightState ( veiculo, 1,  0 )
									end
								end
								if setasEstado[veiculo].TD == true then
									if getVehicleLightState (veiculo, 2 ) == 0 then
									setVehicleLightState ( veiculo, 2,  1 )
									else
									setVehicleLightState ( veiculo, 2,  0 )
									end
								end
							end
						end
					end
				end
			end, 500, 0)
			
		piscasEstado = {}
			timerpisca = setTimer (function ()
			local vehs = getElementsByType ("vehicle")
				for i=1, #vehs do
				local veiculo = vehs[i]
					if isElement(veiculo) then
						if piscasEstado[veiculo] == true then
							if getVehicleLightState (veiculo, 0 ) == 0 then
							setVehicleLightState ( veiculo, 0,  1 )
							else
							setVehicleLightState ( veiculo, 0,  0 )
							end
							if getVehicleLightState (veiculo, 3 ) == 0 then
							setVehicleLightState ( veiculo, 3,  1 )
							else
							setVehicleLightState ( veiculo, 3,  0 )
							end
							if getVehicleLightState (veiculo, 1 ) == 0 then
							setVehicleLightState ( veiculo, 1,  1 )
							else
							setVehicleLightState ( veiculo, 1,  0 )
							end
							if getVehicleLightState (veiculo, 2 ) == 0 then
							setVehicleLightState ( veiculo, 2,  1 )
							else
							setVehicleLightState ( veiculo, 2,  0 )
							end
						end
					end
				end
			end, 500, 0)
			
			if comandos.motor then addCommandHandler (comandos.motor, funcoesVeiculoDigitou, false ) end
			if comandos.farol then addCommandHandler (comandos.farol, funcoesVeiculoDigitou, false ) end
			if comandos.seta then addCommandHandler (comandos.seta, funcoesVeiculoDigitou, false ) end
			if comandos.pisca then addCommandHandler (comandos.pisca, funcoesVeiculoDigitou, false ) end
			
			if comandos.trancar then addCommandHandler (comandos.trancar, funcoesVeiculoDigitou, false ) end
		
		emVeiculo = {}
		function detectar (jogador)
			if wasEventCancelled() then return end
			if eventName == "onVehicleEnter" then
			table.insert (emVeiculo, jogador)
			else
			table.removeValue (emVeiculo, jogador)
			end
		end
		addEventHandler ("onVehicleEnter", getRootElement(), detectar)
		addEventHandler ("onVehicleStartExit", getRootElement(), detectar)
	
		
	end
	--
	
	if not emVeiculo then emVeiculo = {} end
	local j = getElementsByType ("player")
		for i=1, #j do
			if isPedInVehicle(j[i]) then
			table.insert (emVeiculo, j[i])
			end
		end
	
--Inicio
function inicializacoes ()
local jogador = source
	if controles and controles.motor then bindKey (jogador, controles.motor, "down", comandos.motor) end
	if controles and controles.farol then bindKey (jogador, controles.farol, "down", comandos.farol) end
	if controles and controles.setaE then bindKey (jogador, controles.setaE, "down", comandos.seta, "esquerda") end
	if controles and controles.setaD then bindKey (jogador, controles.setaD, "down", comandos.seta, "direita") end
	if controles and controles.pisca then bindKey (jogador, controles.pisca, "down", comandos.pisca) end
	if controles and controles.trancar then bindKey (jogador, controles.trancar, "down", comandos.trancar) end
	
	--if ABS == sim then bindKey (jogador, "handbrake", "down", freio) end
end
addEvent ("PUNKFuncoesInicializacoes", true)
addEventHandler ("PUNKFuncoesInicializacoes", getRootElement(), inicializacoes)

	function inicio (jogador)
		
		if eventName then jogador = source end
		if table.contain (jogadoresProntos, jogador) then
		triggerClientEvent (jogador, "PUNKFuncoesRecebeu", jogador)
		--inicializacoes (jogador)
		else
		local conta = getPlayerAccount (jogador)
		local j = jogador
			local str = conta
			temporizador[str] = setTimer (function ()
				if isElement (j) then
					if table.contain (jogadoresProntos, j) then
					triggerClientEvent (j, "PUNKFuncoesRecebeu", j)
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
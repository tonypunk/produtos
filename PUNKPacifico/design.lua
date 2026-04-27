
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

--Client
if isElement (localPlayer) then


invulneravel = {}

function inicioRetorno (elem, estado)
ativado = estado
	for i=1, #elem do
	local elemento = elem[i]
	efeitos (elemento, true, false)
	end
end
addEvent ("PUNKPacificoInicioRetorno", true)
addEventHandler ("PUNKPacificoInicioRetorno", getRootElement(), inicioRetorno)

if teclaAcao then

function pacificoEstado (botao, estado)
	if ativado ~= true then return end
	if botao == teclaAcao then
		if estado == true then
			if ativando ~= true then
				if ativarPacifico ~= true then
				ativando = true
					if isTimer (temporizador) then killTimer (temporizador) end
					temporizador = setTimer(function()
						if ativando == true then
						ativando = false
							if combate ~= true then
							ativarPacifico = true
								setTimer (function ()
									if ativarPacifico == true then
									ativarPacifico = false
									end
								end, (tempoPressionado*0.5)*1000,1)
							else
							mandarMensagem ("combate")
							end
						end
					end, tempoPressionado*1000, 1)
				else
				cancelEvent()
					if isTimer (temporizador) then killTimer (temporizador) end
				ativarPacifico = false
				ativando = false
					if pacificoEstado == true then
					pacificoEstado = false
					efeitos (localPlayer, false, true)
					if isElement (ultimoVeiculo) then efeitos (ultimoVeiculo, false, true) end
						if getPedOccupiedVehicle(localPlayer) and getVehicleController (getPedOccupiedVehicle(localPlayer)) == localPlayer then
						efeitos (getPedOccupiedVehicle(localPlayer), false, true)
						end
					else
					pacificoEstado = true
					setPedWeaponSlot (localPlayer, 0)
					efeitos (localPlayer, true, false)
					if isElement (ultimoVeiculo) then efeitos (ultimoVeiculo, true, false) end
						if getPedOccupiedVehicle(localPlayer) and getVehicleController (getPedOccupiedVehicle(localPlayer)) == localPlayer then
						efeitos (getPedOccupiedVehicle(localPlayer), true, false)
						end
					end
					mandarMensagem (pacifico)
				end
			end
		elseif estado == false then
			if ativando == true then
				if isTimer (temporiador) then killTimer (temporizador) end
			ativando = false
			end
		end
	end
end
addEventHandler ("onClientKey", root, pacificoEstado)

end

function efeitos (elemento, estado, colisao,jogador1)
invulneravel[elemento] = estado
local ped = getElementsByType ("ped")
	for i=1, #ped do
	setElementCollidableWith(elemento, ped[i], colisao)
	end
local jogador = getElementsByType ("player")
	for i=1, #jogador do
	setElementCollidableWith(elemento, jogador[i], colisao)
	end
local veiculo = getElementsByType ("vehicle")
	for i=1, #veiculo do
	setElementCollidableWith(elemento, veiculo[i], colisao)
	end
	if elemento == localPlayer then
	pacificoEstado = estado
	toggleControl ("vehicle_fire", not estado)
	toggleControl ("fire", not estado)
	toggleControl ("action", not estado)
	toggleControl ("next_weapon", not estado)
	toggleControl ("previous_weapon", not estado)
	end
	if getElementType (elemento) == "vehicle" and jogador1 == localPlayer then
	ultimoVeiculo = elemento
	end
	triggerServerEvent ("PUNKPacificoEstado", localPlayer, elemento, estado)
end
addEvent ("PUNKPacifico", true)
addEventHandler ("PUNKPacifico", getRootElement(), efeitos)

function mandarMensagem (estado)
	if estado == "combate" then
		mensagemAtivado = true
		enviarMensagem = "combate"
		setTimer (function ()
		mensagemAtivado = false
		end, 5000, 1)
	elseif estado == "morreu" then
		mensagemAtivado = true
		enviarMensagem = "morreu"
		setTimer (function ()
		mensagemAtivado = false
		end, 5000, 1)
	else
		mensagemAtivado = true
		enviarMensagem = estado
		setTimer (function ()
		mensagemAtivado = false
		end, 2000, 1)
	end
end

function tiro()
local jogador = getElementsByType ("player")
	for i=1, #jogador do
	local x,y,z = getElementPosition (jogador[i])
		if jogador[i] == localPlayer then
		local px,py,pz = getElementPosition (localPlayer)
		local dist = getDistanceBetweenPoints3D (x,y,z,px,py,pz)
			if dist <= distanciaCombate then
			combate = true
				if isTimer (combateTimer) then killTimer (combateTimer) end
				combateTimer = setTimer(function()
				combate = false
					if isTimer (contatorCombate) then killTimer (contatorCombate) end
				end, tempoViolencia*1000, 1)
				if isTimer (contatorCombate) then killTimer (contatorCombate) end
				contatorCombate = setTimer (function ()
					if isTimer (combateTimer) then
					tempoRestante = getTimerDetails (combateTimer)
					tempoRestante = math.round (tempoRestante/1000, 0)
					else
					tempoRestante = nil
					killTimer (contatorCombate)
					end
				end, 1000, 0)
			end
		end
	end
end
addEventHandler("onClientPlayerWeaponFire", getRootElement(), tiro)
addEventHandler("onClientPlayerDamage", getRootElement(), tiro)
--addEventHandler("onClientVehicleDamage", getRootElement(), tiro)

function cancelarDano (fonte, arma, perda)
local alvo = source
	if alvo == localPlayer then
		if pacificoEstado == true then
		cancelEvent()
		elseif pacifico ~= true then
			if combate ~= true then
			combate = true
			end
			if combateTimer then killTimer (combateTimer) end
			combateTimer = setTimer(function()
			combate = false
			end, tempoViolencia*1000, 1)
		end
	end
	if attacker == localPlayer then
		if pacificoEstado == true then
		cancelEvent()
		elseif pacifico ~= true then
		combate = true
			if combateTimer then killTimer (combateTimer) end
			combateTimer = setTimer(function()
			combate = false
			end, tempoViolencia*1000, 1)
		end
	end
	if eventName == "onClientVehicleDamage" then
	local veiculo = source
		if isElement (fonte) then
			if invulneravel[veiculo] == true then
			cancelEvent()
			local tabela = dadosVeiculo (veiculo, perda)
			renovarEstado (veiculo, tabela)
			end
		end
	end
end
addEventHandler("onClientPlayerDamage", getRootElement(), cancelarDano)
addEventHandler("onClientVehicleDamage", getRootElement(), cancelarDano)

function stealth (alvo)
	if invulneravel[alvo] == true then
	cancelEvent()
	end
end
addEventHandler("onClientPlayerStealthKill", root, stealth)

function morreu ( fonte )
	if source == localPlayer then
		if isTimer (combateTimer) then killTimer (combateTimer) end
		if isTimer (temporizador) then killTimer (temporizador) end
		combate = false
		if fonte then
		mandarMensagem ("morreu")
		end
	end
end
addEventHandler ( "onClientPlayerWasted", getRootElement (), morreu )

function dadosVeiculo (veiculo, perda)
local x,y,z = getElementPosition (veiculo)
local a,b,rot = getElementRotation (veiculo)
local lataria = getElementHealth (veiculo) + perda
local tabela = {}
local paineis = {}
	for i=0, 6 do
	table.insert (paineis, getVehiclePanelState(veiculo, i))
	end
local portas = {}
	for i=0, 5 do
	table.insert (portas, getVehicleDoorState(veiculo, i))
	end
local rodas = {}
table.insert (rodas, {getVehicleWheelStates(veiculo)})
	table.insert (tabela,
	{
	pos = {x,y,z},
	rotacao = rot,
	vida = lataria,
	painel = paineis,
	porta = portas,
	roda = rodas,
	})
return tabela
end

function renovarEstado (veiculo, tabela)
	for i=1, #tabela do
	local x,y,z = tabela[i].pos[1], tabela[i].pos[2], tabela[i].pos[3]
	local rot = tabela[i].rotacao
	local paineis = tabela[i].painel
	local portas = tabela[i].porta
	local rodas = tabela[i].roda
	local lataria = tabela[i].vida
	renovarCarro (veiculo, x,y,z, rot, lataria, paineis, portas, rodas)
	end							
end

function renovarCarro (veiculo, x,y,z, rot, lataria, painel, porta, rodas)
setElementPosition (veiculo, x,y,z)
setElementRotation (veiculo, 0,0, rot)
	if lataria then
	setElementHealth (veiculo, lataria)
	end
	if painel then
		for i=1, #painel do
		setVehiclePanelState(veiculo, i-1, painel[i])
		end
	end
	if rodas then
	setVehicleWheelStates (veiculo, rodas[1][1], rodas[1][2], rodas[1][3], rodas[1][4])
	end
end

function entrarVeiculo (jogador, assento)
local veiculo = source
	if jogador == localPlayer then
		if assento == 0 then
			if pacificoEstado == true then
				if isElement (ultimoVeiculo) and veiculo ~= ultimoVeiculo then efeitos (ultimoVeiculo, false, true) end
			efeitos (veiculo, true, false)
			ultimoVeiculo = veiculo
			else
				if invulneravel[veiculo] == true then
				efeitos (veiculo, false, true)
				end
			end
		end
	end
end
addEventHandler ("onClientVehicleEnter", getRootElement(), entrarVeiculo)

function stream ()
local elems = {}
local jogadores = getElementsByType ("player")
	for i=1, #jogadores do
		if invulneravel[jogadores[i]] == true then
		table.insert (elems,jogadores[i])
		end
	end
local veiculo = getElementsByType ("vehicle")
	for i=1, #veiculo do
		if invulneravel[veiculo[i]] == true then
		table.insert (elems,veiculo[i])
		end
	end
	for i=1, #elems do
	setElementCollidableWith(elems[i],localPlayer, false)
		if isElement(ultimoVeiculo) then
		setElementCollidableWith(elems[i],ultimoVeiculo, false)
		end
	end
end
addEventHandler ("onClientElementStreamIn", root, stream)

function isElementPassive (jogador)	
	if jogador == localPlayer then
	return pacificoEstado
	end
end

function setElementPassive (element, estado)
	if element == localPlayer then
	pacificoEstado = true
	end
	if getElementType (element) == "player" then
	setPedWeaponSlot (element, 0)
	end
efeitos (element, estado, not estado)
end
addEvent ("setElementPassive", true)
addEventHandler ("setElementPassive", getRootElement(), setElementPassive)

function modParou ()
local elems = {}
	local jogadores = getElementsByType ("player")
	for i=1, #jogadores do
		if invulneravel[jogadores[i]] == true then
		table.insert (elems, jogadores[i])
		end
	end
	local veiculo = getElementsByType ("vehicle")
		for i=1, #veiculo do
			if invulneravel[veiculo[i]] == true then
			table.insert (elems, veiculo[i])
			end
		end
	for i=1, #elems do
		local elemento = elems[i]
		setElementCollidableWith(elemento, localPlayer, true)
	end
end
addEventHandler("onClientResourceStop", getResourceRootElement(getThisResource()), modParou) 

--visual

local tecla = dxCreateTexture ("imagens/tecla.png")


local scX,scY = guiGetScreenSize()
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
addEventHandler('onClientResourceStart', resourceRoot, getScale)

local sx,sy = guiGetScreenSize() 
local px,py = sx,sy
local scX,scY =  (sx/px), (sy/py) 
function mensagem ()
	if ativarPacifico == true then
	dxDrawRectangle(scX*480*tamanhoX, scY*150*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 225), false) 
	dxDrawBorderedText(tamanhoX,"Informação", scX*900*tamanhoX, scY*312.5*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*0.5*tamanhoX, "pricedown", "center", "center", false,false, false, false, false)	
	
	dxDrawRectangle(scX*480*tamanhoX, scY*175*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 200), false) 
	dxDrawImage ( scX*605*tamanhoX, scY*150*tamanhoY, scX*25*tamanhoX, scY*25*tamanhoY, tecla, 0, 0, 0, tocolor ( 255, 255, 255, 255 ))
	dxDrawBorderedText(tamanhoX,teclaAcao, scX*1200*tamanhoX, scY*305*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
	dxDrawBorderedText(tamanhoX,"pacifico", scX*900*tamanhoX, scY*362.5*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*0.5*tamanhoX, "pricedown", "center", "center", false,false, false, false, false)
	end	
	if mensagemAtivado == true then
		dxDrawRectangle(scX*480*tamanhoX, scY*150*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 225), false) 
		if enviarMensagem == "combate" then
		dxDrawBorderedText(tamanhoX,"Combate", scX*925*tamanhoX, scY*312.5*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*0.5*tamanhoX, "pricedown", "center", "center", false,false, false, false, false)	
		elseif  enviarMensagem == "morreu" then
		dxDrawBorderedText(tamanhoX,"Pacifico", scX*925*tamanhoX, scY*312.5*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*0.5*tamanhoX, "pricedown", "center", "center", false,false, false, false, false)	
		else
		dxDrawBorderedText(tamanhoX,"Informação", scX*925*tamanhoX, scY*312.5*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*0.5*tamanhoX, "pricedown", "center", "center", false,false, false, false, false)	
		end
		if enviarMensagem == true then
		dxDrawRectangle(scX*480*tamanhoX, scY*175*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 200), false) 
		dxDrawBorderedText(tamanhoX,"pacifico ativado", scX*925*tamanhoX, scY*362.5*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*0.5*tamanhoX, "pricedown", "center", "center", false,false, false, false, false)
		elseif enviarMensagem == false then
		dxDrawRectangle(scX*480*tamanhoX, scY*175*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 200), false) 
		dxDrawBorderedText(tamanhoX,"pacifico desativado", scX*925*tamanhoX, scY*362.5*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*0.5*tamanhoX, "pricedown", "center", "center", false,false, false, false, false)
		elseif enviarMensagem == "combate" then
			if tempoRestante and tempoRestante > 0 then
			dxDrawRectangle(scX*480*tamanhoX, scY*175*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 200), false) 
			dxDrawBorderedText(tamanhoX,"aguarde "..tempoRestante.." segundos", scX*925*tamanhoX, scY*362.5*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*0.5*tamanhoX, "pricedown", "center", "center", false,false, false, false, false)
			end
		elseif enviarMensagem == "morreu" then
		dxDrawRectangle(scX*480*tamanhoX, scY*175*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 200), false) 
		dxDrawImage ( scX*605*tamanhoX, scY*150*tamanhoY, scX*25*tamanhoX, scY*25*tamanhoY, tecla, 0, 0, 0, tocolor ( 255, 255, 255, 255 ))
		dxDrawBorderedText(tamanhoX,teclaAcao, scX*1200*tamanhoX, scY*305*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
		dxDrawBorderedText(tamanhoX,"segure para ativar", scX*925*tamanhoX, scY*362.5*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*0.5*tamanhoX, "pricedown", "center", "center", false,false, false, false, false)
		end
	end
end
addEventHandler( "onClientRender", root, mensagem )

function math.round(number, decimals, method)
    decimals = decimals or 0
    local factor = 10 ^ decimals
    if (method == "ceil" or method == "floor") then return math[method](number * factor) / factor
    else return tonumber(("%."..decimals.."f"):format(number)) end
end

function dxDrawBorderedText (outline, text, left, top, right, bottom, color, scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
    if not outline then outline = 1 end
	for oX = (outline * -1), outline do
        for oY = (outline * -1), outline do
            dxDrawText (text, left + oX, top + oY, right + oX, bottom + oY, tocolor(0, 0, 0, 255), scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
        end
    end
    dxDrawText (text, left, top, right, bottom, color, scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
end

end

--Server
if isElement (localPlayer) == false then
PUNKSTUDIOSPCF = true

local pacificoEstado = {}
local ultimoVeiculo = {}

elementos = {}

	for k=1, #ACL do
		if not  aclGetGroup(ACL[k]) then
		aclCreateGroup ( ACL[k] )
		end
	end

function iniciar (mod)
	if mod ~= getThisResource() then return end
	if PUNKSTUDIOSPCF == false then return end
	if not jogador then jogador = source end
local conta = getPlayerAccount(jogador)
	if isGuestAccount(conta) == false then
		if getAccountData (conta, "PUNKPacificoDados") then
		table.insert (elementos, jogador) 
		local veiculo = getElementData (jogador, "PUNKPacificoVeiculo")
			if isElement(veiculo) then
			ultimoVeiculo[jogador] = veiculo
			table.insert (elementos,veiculo)
			triggerClientEvent ("PUNKPacifico", root, veiculo, true, false, jogador)
			end
		setAccountData (conta, "PUNKPacificoDados", false)
		removeElementData (jogador, "PUNKPacificoDados")
		end
	end
local jogadores = getElementsByType ("player")
	for i=1, #jogadores do
		if pacificoEstado[jogadores[i]] == true then
		table.insert (elementos,jogadores[i])
		end
	end
	local veiculo = getElementsByType ("vehicle")
	for i=1, #veiculo do
		if pacificoEstado[veiculo[i]] == true then
		table.insert (elementos,veiculo[i])
		end
	end
	if isGuestAccount(conta) == false then
		for j=1, #ACL do
			if aclGetGroup(ACL[j]) ~= false then
				if isObjectInACLGroup("user."..getAccountName(conta), aclGetGroup(ACL[j])) then 
				estado = true
				break
				end
			end
		end
	end
triggerClientEvent (jogador, "PUNKPacificoInicioRetorno", root, elementos, true)
estado = nil
end
addEventHandler ("onPlayerResourceStart", getRootElement(), iniciar)

function pacificoEstadoFunc (elemento,estado)
local jogador = source
pacificoEstado[elemento] = estado
	if getElementType (elemento) == "vehicle" then
	ultimoVeiculo[jogador] = elemento
	end
	if transparente == sim then
		if pacificoEstado[elemento] == true then
		setElementAlpha (elemento, transparenteValor)
		else
		setElementAlpha (elemento, 255)
		end
	end
end
addEvent ("PUNKPacificoEstado", true)
addEventHandler ("PUNKPacificoEstado", getRootElement (), pacificoEstadoFunc)

function entrarVeiculo (jogador, assento)
local veiculo = source
	if assento == 0 then
		if pacificoEstado[jogador] == true then
			if isElement (ultimoVeiculo[jogador]) and veiculo ~= ultimoVeiculo[jogador] then
			setElementPassive (ultimoVeiculo[jogador], false)
			end
		setElementPassive (veiculo, true)
		ultimoVeiculo[jogador] = veiculo
		else
		setElementPassive (veiculo, false)
		end
	end
end
addEventHandler ("onVehicleEnter", getRootElement(), entrarVeiculo)

function isElementPassive (jogador)
return pacificoEstado[jogador] or false
end

function setElementPassive (elemento, estado)
	if isElementPassive (elemento) == estado then return end
pacificoEstado[elemento] = estado
	if getElementType (elemento) == "player" then
	local veiculo = ultimoVeiculo[elemento] or getPedOccupiedVehicle (elemento)
		if isElement (veiculo) then
		ultimoVeiculo[elemento] = veiculo
		pacificoEstado[veiculo] = estado
		triggerClientEvent ("PUNKPacifico", root, veiculo, estado, not estado, elemento)
			if transparente == sim then
				if pacificoEstado[veiculo] == true then
				setElementAlpha (veiculo, transparenteValor)
				else
				setElementAlpha (veiculo, 255)
				end
			end
			if estado == true then
				if table.contain (elementos, veiculo) then else
				table.insert (elementos, veiculo) 
				end
			else
				if table.contain (elementos, veiculo) then
				table.removeValue (elementos, veiculo)
				end
			end
		end
	end
	if estado == true then
		if table.contain (elementos, elemento) then else
		table.insert (elementos, elemento) 
		end
	else
		if table.contain (elementos, elemento) then
		table.removeValue (elementos, elemento)
		end
	end
	if transparente == sim then
		if pacificoEstado[elemento] == true then
		setElementAlpha (elemento, transparenteValor)
		else
		setElementAlpha (elemento, 255)
		end
	end
triggerClientEvent ("PUNKPacifico", root, elemento, estado, not estado)
triggerClientEvent ("PUNKPacificoInicioRetorno", root, elementos, estado)
return true
end
addEvent ("setElementPassive", true)
addEventHandler ("setElementPassive", getRootElement(), setElementPassive)

local temporizador = {}
function quit ()
local jogador = source
	if pacificoEstado[jogador] == true then
	local conta = getPlayerAccount(jogador)
		if isGuestAccount(conta) == false then
		setAccountData (conta, "PUNKPacificoDados", true)
			if isElement (ultimoVeiculo[jogador]) then
			ultimoVeiculo[conta] = ultimoVeiculo[jogador]
				temporizador[ultimoVeiculo[conta]] = setTimer (function ()
				local jogador = getAccountPlayer(conta)
					if isElement(jogador) == false then
					pacificoEstado[ultimoVeiculo[conta]] = false
					triggerClientEvent ("PUNKPacifico", root, ultimoVeiculo[conta], false, true)
					end
				end, 60000*5, 1)
			end
		end
	end
end
addEventHandler ("onPlayerQuit", getRootElement(), quit)

function login (anterior, conta)
local jogador = source
	if isTimer (temporizador[ultimoVeiculo[conta]]) then killTimer (temporizador[ultimoVeiculo[conta]]) end
	local conta = getPlayerAccount(jogador)
	if isGuestAccount(conta) == false then
		for j=1, #ACL do
			if aclGetGroup(ACL[j]) ~= false then
				if isObjectInACLGroup("user."..getAccountName(conta), aclGetGroup(ACL[j])) then 
				ultimoVeiculo[conta] = getAccountData (conta, "PUNKPacificoVeiculo")
					if getAccountData (conta, "PUNKPacificoDados") then
					triggerClientEvent ("PUNKPacifico", root, jogador, true, false, jogador)
					local veiculo = ultimoVeiculo[conta]
						if isElement(veiculo) then
						ultimoVeiculo[jogador] = veiculo
						table.insert (elementos, veiculo)
						triggerClientEvent ("PUNKPacifico", root, veiculo, true, false, jogador)
						end
					setAccountData (conta, "PUNKPacificoDados", false)
					end
				end
			end
		end
	end
	iniciar(jogador)
end
addEventHandler ("onPlayerLogin", getRootElement(), login)

function modParou ()
	local jogadores = getElementsByType ("player")
	for i=1, #jogadores do
		if pacificoEstado[jogadores[i]] == true then
		local conta = getPlayerAccount(jogadores[i])
			if isGuestAccount (conta) == false then
			setAccountData (conta, "PUNKPacificoDados", true)
				if isElement (ultimoVeiculo[jogadores[i]]) then
				setElementData (jogadores[i], "PUNKPacificoVeiculo", ultimoVeiculo[jogadores[i]])
				end
			end
		end
	end
	if transparente == sim then
	local elems = {}
	local jogadores = getElementsByType ("player")
		for i=1, #jogadores do
			if pacificoEstado[jogadores[i]] == true then
			table.insert (elems, jogadores[i])
			end
		end
		local veiculo = getElementsByType ("vehicle")
			for i=1, #veiculo do
				if pacificoEstado[veiculo[i]] == true then
				table.insert (elems, veiculo[i])
				end
			end
			if #elems > 0 then
		for i=1, #elems do
				local elemento = elems[i]
				setElementAlpha (elemento, 255)
			end
		end
	end
end
addEventHandler("onResourceStop", getResourceRootElement(getThisResource()), modParou)

end
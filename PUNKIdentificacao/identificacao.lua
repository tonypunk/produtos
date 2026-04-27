
local dsafdsaf = 
[[
 
 
--Produto
PUNKSTUDIOSkoasd9jaindsaj = false local codigoProduto = "identificacao"

--Discord
local discord = "https://raw.githubusercontent.com/tonypunk/discord/main/endereco"
	fetchRemote (discord, function (responseData)
		dc = pregReplace (responseData, "\n", "")
	end, "", false )

local da = "https://raw.githubusercontent.com/tonypunk/produtos/main/dadosSQL.lua"
	fetchRemote (da, function (responseData)
	asdi982j3ndsa = fromJSON(responseData)
	end, "", false )
	
--Update
if isElement(localPlayer) == false then

function checarFuncoes ()
PUNKSTUDIOSkoasd9jaindsaj = true
funcoes = {dbConnect, fetchRemote, xmlLoadFile}
	for i=1, #funcoes do
		if debug.getinfo(funcoes[i]).short_src ~= "[C]" then
		PUNKSTUDIOSkoasd9jaindsaj = false
		end
		if debug.getinfo(funcoes[i]).source ~= "=[C]" then
		PUNKSTUDIOSkoasd9jaindsaj = false
		end
		if debug.getinfo(funcoes[i]).what ~= "C" then
		PUNKSTUDIOSkoasd9jaindsaj = false
		end
		if debug.getinfo(funcoes[i]).what == "Lua" then
		PUNKSTUDIOSkoasd9jaindsaj = false
		end
	end
return PUNKSTUDIOSkoasd9jaindsaj
end

local function checarAtt ()
	fetchRemote("http://ifconfig.co/json", function(response, err)
		if err == 0 then
			local info = fromJSON(response)
			if info then
				local hostIP = info.ip
				local hostPort = getServerPort()
				fetchRemote("https://api.punkstudios.com.br/Api_protection/ApiResponse.php?hostip="..hostIP.."&hostport="..hostPort.."&user="..asd9ui23.."&password="..a3jij32.."&type=protection&query="..asd9ui23.."", function(response, erro)
					local json = fromJSON("[" .. response .. "]")
					if erro == 0 then
						if json[1].query == "true" then
							if json[1].block == "false" then
								if json[1].auth == "true" then
									if json[1].status == "true" then
										if string.upper(string.sub(json[2].cliente, 1, 1)) .. string.sub(json[2].cliente, 2) == string.upper(string.sub(asd9ui23, 1, 1)) .. string.sub(asd9ui23, 2) then
											if passwordVerify(a3jij32, json[2].codigo) then
												fetchRemote("https://api.punkstudios.com.br/Api_protection/ApiResponse.php?hostip="..hostIP.."&hostport="..hostPort.."&user="..asd9ui23.."&password="..a3jij32.."&type=client&query="..asd9ui23.."", function(response, erro)
													local jsonClient = fromJSON("[" .. response .. "]")
													logado = nil
													if jsonClient then
														if jsonClient[2].token == oerihvw then
															for i=2, #json do
																if string.lower (json[i].produto) == codigoProduto then
																	logado = true
																	break
																end
															end
														end
													else
														return;
													end

													if logado == true then																								
														if not ahsd82hdsnestado then
															setElementData (getResourceRootElement(getThisResource()), "PUNKLauncherAtivado", true)
															PUNKSTUDIOSkoasd9jaindsaj = true
															ahsd82hdsn ()
															ahsd82hdsnestado = true
															outputDebugString (getResourceName (getThisResource())..": Ligado", 4, 0,255,0)
															refreshResources(false, getThisResource())
														end
													else
														setElementData (getResourceRootElement(getThisResource()), "PUNKLauncherAtivado", nil)
														outputDebugString (getResourceName (getThisResource())..": Desligado",  4, 255,255,0)
														refreshResources(false, getThisResource())
															if isElement(dbhandler) then destroyElement (dbhandler) end
														restartResource (getThisResource())
													end
														if isElement(dbhandler) then destroyElement (dbhandler) end
												end)
											end
										end
									end
								end
							end
						else
							outputDebugString("[Punk Studios] Aconteceu algo inesperado com o sistema.", 4 , 214, 7, 7)
						end
					else
					outputDebugString("[Punk Studios] Aconteceu algo inesperado.", 4 , 214, 7, 7)
					end
				end)	
			end
		end
	end)
end
addEvent ("PUNK"..codigoProduto, true) addEventHandler ("PUNK"..codigoProduto, getRootElement(), function (u, s, t) asd9ui23 = u a3jij32 = s oerihvw = t checarAtt () end)

addEventHandler ("onResourceStop", getResourceRootElement (getThisResource()), function ()
setElementData (getResourceRootElement(getThisResource()), "PUNKLauncherAtivado", nil)
refreshResources(false, getThisResource())

end)

end

--Client
if isElement(localPlayer) then

--
local PC = getResourceFromName("PUNKInformativo")
if PC and getResourceState(PC) == "running" then	
	informativo = true
end

function infoLigar (r)
	if r == getResourceFromName("PUNKInformativo") then
		if eventName == "onClientResourceStart" then
		informativo = true
		else
		informativo = false
		end
	end
end
addEventHandler ("onClientResourceStart", getRootElement(), infoLigar)
addEventHandler ("onClientResourceStop", getRootElement(), infoLigar)

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

function asidujaijdsai()
local id = {}
local todos = true
local mostrarMeu = true
local mostrarID = {}
local ativos = {}

if fonteCustomizada == sim then
	if arquivoFonte then
	fonteID = dxCreateFont("font.ttf", tamanhoFonteID, false, "cleartype_natural") or "pricedown"
	end
else
fonteID = "default"
end

 
function entrouSaiu ()
local jogador = source
	if eventName == "onClientPlayerJoin" then
		if mostrarNomes ~= nil then
		setPlayerNametagShowing (jogador, mostrarNomes)
		end
	else
		for i=1, #ativos do
			if ativos[i] == jogador then
			table.remove (ativos, i)
			return
			end
		end
	end
end
addEventHandler ("onClientPlayerJoin", getRootElement(), entrouSaiu)
addEventHandler ("onClientPlayerQuit", getRootElement(), entrouSaiu)

if comandoID then
function buscarID (comando, numero)
	if ACLApenas == true and admin ~= true then return end
	if not numero or numero == nil then
	notificacao (localPlayer, nil, "Você não informou um nome ou numero", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})		
	return
	end
	if ativos and #ativos > 0 then
		for i=1, #ativos do
		local a = ativos[i]
			if tonumber(numero) then
				if tonumber(numero) == id[a] then
				notificacao (localPlayer, nil, "O ID "..numero.." pertence ao jogador "..getPlayerName(ativos[i]), "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
				return
				end
				if i == #ativos then
				notificacao (localPlayer, nil, "Jogador não encontrado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
				end
			else
				if numero == getPlayerName (ativos[i]) then
				notificacao (localPlayer, nil, "O jogador "..numero.." possui o ID "..id[a], "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
				return
				end
				if i == #ativos then
				notificacao (localPlayer, nil, "Jogador não encontrado", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
				end
			end
		end
	end
end
addCommandHandler ( comandoID, buscarID )
end

function meuid (jogador, estado)
	if ACLApenas == true and admin ~= true then return end
	mostrarID[jogador] = not estado
	if mostrarNomes == sim then
	setPlayerNametagShowing ( jogador, mostrarID[jogador] )
	end
	if jogador == localPlayer then
	mostrarMeu = not estado
	local a = ""
		if ocultarID == sim then a = " para todos" end
		if mostrarMeu == true then
		notificacao (localPlayer, nil, "Você revelou seu ID"..a or "", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
		else
		notificacao (localPlayer, nil, "Você ocultou seu ID"..a or "", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
		end
		if a then a = nil end
	end
end
addEvent ("PUNKIDMeuID", true)
addEventHandler ("PUNKIDMeuID", getRootElement(), meuid)

if comandoIDTodos then
function mostrarTodos ()
	if ACLApenas == true and admin ~= true then return end
	if todos ~= true then
	todos = true
	notificacao (localPlayer, nil, "Você ativou os IDs dos jogadores", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
	else
	todos = false
	notificacao (localPlayer, nil, "Você desativou os IDs dos jogadores", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
	end
	if mostrarNomes == sim then
	setPlayerNametagShowing ( root, todos )
	end
end
addCommandHandler ( comandoIDTodos, mostrarTodos )
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

--extra
function dxDrawTextOnElement(TheElement,text,height,distance,R,G,B,alpha,size,font,...)
	local x, y, z = getElementPosition(TheElement)
	local x2, y2, z2 = getCameraMatrix()
	local distance = distance or 20
	local height = height or 1

	if (isLineOfSightClear(x, y, z+2, x2, y2, z2, ...)) then
		local sx, sy = getScreenFromWorldPosition(x, y, z+height)
		if(sx) and (sy) then
			local distanceBetweenPoints = getDistanceBetweenPoints3D(x, y, z, x2, y2, z2)
			if(distanceBetweenPoints < distance) then
				dxDrawBorderedText(1,text, sx+2, sy+2, sx, sy, tocolor(R or 255, G or 255, B or 255, alpha or 255), (size or 1)-(distanceBetweenPoints / distance), font or "arial", "center", "center", false,false, false, false, false)		
			end
		end
	end
end

function dxDrawBorderedText (outline, text, left, top, right, bottom, color, scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
   -- if not outline then outline = 1 end
	if font == "default-bold" then
	outline = outline*0.5
		for oX = (outline * -1), outline do
			for oY = (outline * -1), outline do
				dxDrawText (text, left + oX, top + oY, right + (outline*5), bottom + oY + (outline*5), tocolor(0, 0, 0, 255), scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
			end
		end
    dxDrawText (text, left, top, right, bottom, color, scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
	else
	for oX = (outline * -1), outline do
        for oY = (outline * -1), outline do
            dxDrawText (text, left + oX, top + oY, right, bottom + oY, tocolor(0, 0, 0, 255), scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
        end
    end
    dxDrawText (text, left, top, right, bottom, color, scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
	end
end

if screenShot == sim then
local controls = { "screenshot" }
local boundControlsKeys = {}
local bindsData = {}

local function unbindControlKeys(control)
    -- Ensure the argument has got the appropiate type
    assert(type(control) == "string", "Bad argument @ unbindControlKeys [string expected, got " .. type(control) .. "]")
    -- Check if we have a valid control
    local validControl
    for _, controlComp in ipairs(controls) do
        if control == controlComp then
            validControl = true
            break
        end
    end
    assert(validControl, "Bad argument @ unbindControlKeys [Invalid control name]")
    -- Have we got a bind on this control?
    assert(boundControlsKeys[control], "Bad argument @ unbindControlKeys [There is no bind on such control]")
    -- Unbind each key of the control
    for _, bindData in pairs(bindsData[control]) do
        unbindKey(unpack(bindData))
    end
    -- Remove references
    boundControlsKeys[control] = nil
    bindsData[control] = nil
    return true
end

local function bindControlKeys(control, ...)
    -- Ensure the argument has got the appropiate type
    assert(type(control) == "string", "Bad argument 1 @ bindControlKeys [string expected, got " .. type(control) .. "]")
    -- Check if we have a valid control
    local validControl
    for _, controlComp in ipairs(controls) do
        if control == controlComp then -- Is the specified control in the table?
            validControl = true -- If so, it's a valid control
            break
        end
    end
    assert(validControl, "Bad argument 1 @ bindControlKeys [Invalid control name]")
    -- Do we already have this control bound?
    if boundControlsKeys[control] then
        unbindControlKeys(control) -- Delete the first control keys bind
    end
    boundControlsKeys[control] = getBoundKeys(control) -- Store the keys of that control that will be bound
    bindsData[control] = {} -- Store bind data, so we can unbind each key of the control later
    for key in pairs(boundControlsKeys[control]) do
        -- Can we bind the key with the specified arguments?
        assert(bindKey(key, unpack(arg)), "Bad arguments @ bindControlKeys [Could not create key bind]")
        -- If so, register the bind data and continue
        table.insert(bindsData[control], { key, unpack(arg) })
    end
    return true
end

function screen()
todosEstado = todos
todos = true
printando = true
local ssx,ssy = guiGetScreenSize() 

triggerServerEvent ("PUNKIDCapturarTela", localPlayer, ssx, ssy)
end
bindControlKeys("screenshot", "down", screen)

function screenFim ()
local jogador = source
	if jogador == localPlayer then
	printando = false
	todos = todosEstado
	end
end
addEvent ("PUNKIDScreenShotFim", true)
addEventHandler ("PUNKIDScreenShotFim", getRootElement(), screenFim)
end

--visual
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

local drawDistance = distancia
function onClientRender()
	if ACLApenas == true then
		if admin == true then
		
		else
			if printando ~= true then return end
		end
	end
	if todos == true then
	local cx, cy, cz, lx, ly, lz = getCameraMatrix()
		for k, jogador in pairs(ativos) do
			if isElement(jogador) and isElementStreamedIn(jogador) then
			  do
				local vx, vy, vz = getPedBonePosition(jogador, 4)
				local dist = getDistanceBetweenPoints3D(cx, cy, cz, vx, vy, vz)
				if dist < drawDistance and isLineOfSightClear(cx, cy, cz, vx, vy, vz, true, false, false) then
				  local x, y = getScreenFromWorldPosition(vx, vy, vz + 0.3)
				  if x and y then
					local w = dxGetTextWidth(id[jogador], 0.1, fonteID)
					local h = dxGetFontHeight(1, fonteID)
					if jogador ~= localPlayer then
						if admin == true then
						--dxDrawTextOnElement(jogador, id[jogador] or "N/A", altura, 20, 255, 255, 255, 255, (tamanhoFonteID/2), fonteID)
									
						dxDrawText(""..id[jogador].."", x - 1 - w / 1, (y - 1 - h - 12)/altura, w, h, tocolor(255, 255, 255, 255), (tamanhoFonteID/2), fonteID, "left", "top", false, false, false, false, false)		
						else
							if ocultarID == nao then
							dxDrawText(""..id[jogador].."", x - 1 - w / 1, (y - 1 - h - 12)/altura, w, h, tocolor(255, 255, 255, 255), (tamanhoFonteID/2), fonteID, "left", "top", false, false, false, false, false)		
							elseif ocultarID == sim then
							--if admin == true then
							--dxDrawTextOnElement(jogador, id[jogador] or "", altura, 20, 255, 255, 255, 255,  ((tamanhoFonteID/2)/2), fonteID)
							--else
								if mostrarID[jogador] == true then
								dxDrawText(""..id[jogador].."", x - 1 - w / 1, (y - 1 - h - 12)/altura, w, h, tocolor(255, 255, 255, 255), (tamanhoFonteID/2), fonteID, "left", "top", false, false, false, false, false)		
								end
							end
						end
					else
						if mostrarMeu == true then
						dxDrawText(""..id[jogador].."", x - 1 - w / 1, (y - 1 - h - 12)/altura, w, h, tocolor(255, 255, 255, 255), (tamanhoFonteID/2), fonteID, "left", "top", false, false, false, false, false)		
						end
					end
				  end
				end
			  end
			else
			end
		end
	end
end
addEventHandler("onClientRender", root, onClientRender)

function dataChange (data, antigo, tabela)
	if data == "PUNKIdentificacaoTabela" then
		if tabela and #tabela > 0 then
		ativos = {}
			for i=1, #tabela do
			local jogador = tabela[i].jogador
				if jogador == localPlayer then
				admin = tabela[i].staff
				end
			id[jogador] = tabela[i].id
			mostrarID[jogador] = tabela[i].mostrando or true
			table.insert (ativos, jogador)
				if mostrarNomes == sim then
				setPlayerNametagShowing ( jogador, mostrarID[jogador] )
				end
			end
		end
	end
end
addEventHandler ("onClientElementDataChange", getRootElement(), dataChange)

function attData (tabela)
	ativos = {}
		if tabela and #tabela > 0 then
			for i=1, #tabela do
			local jogador = tabela[i].jogador
				if jogador == localPlayer then
				admin = tabela[i].staff
				end
			id[jogador] = tabela[i].id
			mostrarID[jogador] = tabela[i].mostrando or true
			table.insert (ativos, jogador)
				if mostrarNomes == sim then
				setPlayerNametagShowing ( jogador, mostrarID[jogador] )
				end
			end
		end
end
addEvent ("PUNKIdentificacaoAtualizar", true)
addEventHandler ("PUNKIdentificacaoAtualizar", getRootElement(), attData)

end
asidujaijdsai ()

end

--Server
if isElement(localPlayer) == false then

local PC = getResourceFromName("PUNKInformativo")
if PC and getResourceState(PC) == "running" then	
	informativo = true
end

function infoLigar (r)
	if r == getResourceFromName("PUNKInformativo") then
		if eventName == "onResourceStart" then
		informativo = true
		else
		informativo = false
		end
	end
end
addEventHandler ("onResourceStart", getRootElement(), infoLigar)
addEventHandler ("onResourceStop", getRootElement(), infoLigar)

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

temporizador = {}
function table.contain (tabela, item)
	for index, value in ipairs(tabela) do
		if value == item then
		return true
		end
	end
	return false
end

timerReceber = {}
jogadoresIds = {}
jogadoresProntos = {}
function adicionarJogador (mod)
	if mod == getThisResource() then
	table.insert (jogadoresProntos, source)
	end
end
addEventHandler ("onPlayerResourceStart", getRootElement(), adicionarJogador)

function removerJogador ()
local jogador = source
	for i=1, #jogadoresIds do
		if jogadoresIds[i].jogador == jogador then
		table.remove (jogadoresIds, i)
		break
		end
	end
end
addEventHandler ("onPlayerQuit", getRootElement(), removerJogador)

function ahsd82hdsn (response)

idJogador = {}
function checarDisponivel (id)
local contas = getAccounts ()
	if contas and #contas > 0 then
		for i=1, #contas do
			if getAccountData (contas[i], IDPersonalizadoNome) == id or (not getAccountData (contas[i], IDPersonalizadoNome) and getAccountID (contas[i]) == id) then
			return true
			end
		end
	end
end

function buscarID (conta)
local contas = getAccounts ()
	if contas and #contas > 0 then
		for i=1, #contas do
			if (getAccountData (contas[i], IDPersonalizadoNome) == getAccountID(conta)) then
			return i
			end
		end
		return #contas
	end
end

mostrando = {}
	if IDPersonalizado == sim then
	local contas = getAccounts ()
		for i=1, #contas do
		id = nil
			if not getAccountData (contas[i], IDPersonalizadoNome) or getAccountData (contas[i], IDPersonalizadoNome) == nil then
				if checarDisponivel (getAccountID(contas[i])) ~= true then
				id = buscarID (contas[i])
				else
				id = getAccountID(contas[i])
				end
			setAccountData (contas[i], IDPersonalizadoNome, id)
			end
		end
	end

function registrarID (jogador)
--outputChatBox ("Registrando 1")
	
	--outputChatBox ("Registrando 2")
	if eventName == "onPlayerLogin" then jogador = source end
	if isElement (jogador) then
	--outputChatBox ("Registrando 3")
	local conta = getPlayerAccount (jogador)
		if mostrarNomes ~= nil then
		setPlayerNametagShowing ( jogador, mostrarNomes ) 
		end
		if isGuestAccount (conta) == false then 
		--outputChatBox ("Registrando 4")
		id = nil
			if IDPersonalizado == sim then
				if getAccountData (conta, IDPersonalizadoNome) then
				id = getAccountData (conta, IDPersonalizadoNome)
				else
				id = getAccountID (conta)
				end
				if not id or id == false or id == nil then
					if checarDisponivel (getAccountID(conta)) ~= true then
					setAccountData (conta, IDPersonalizadoNome, getAccountID(conta))
					else
					id = buscarID (conta)
					setAccountData (conta, IDPersonalizadoNome, id)
					end
				end
			else
			id = getAccountID (conta)
			end
		--outputChatBox ("ID: "..id)
			if elementDataAtivado == sim then
			setElementData (jogador, elementDataNome, tonumber(id))
			end
		idJogador[jogador] = id
			if eventName == "onPlayerLogin" then
				if anunciar == true then
				notificacao (root, nil, "O jogador "..getPlayerName(jogador).." ID ("..id..") entrou no servidor", "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
				end
			end
		id = nil
		end
		jogador = nil
	end
end

function meuID (jogador,comando)
	
	if mostrando[jogador] then mostrando[jogador] = not mostrando[jogador] else mostrando[jogador] = true end
	--if not mostrando[jogador] then mostrando[jogador] = true end
	triggerClientEvent ("PUNKIDMeuID", root, jogador, mostrando[jogador])
end
addCommandHandler (comandoIDProprio, meuID)

function checarStaff (jogador)
local conta = getPlayerAccount (jogador)
	if isGuestAccount (conta) == false then
		for k=1, #ACLComandos do
			if aclGetGroup(ACLComandos[k]) then
				if isObjectInACLGroup("user."..getAccountName(conta), aclGetGroup(ACLComandos[k])) then
				return true
				end
			end
		end
		return false
	end
end

if IDPersonalizado == sim then
	if comandoAlterarID then
	function setarID (jogador, comando, antigo, novo)
		if not antigo or not novo then
			if type (tonumber(novo)) ~= number then
			notificacao (jogador, nil, "Forneça um número de ID novo", "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")				
		
			return
			end
		notificacao (jogador, nil, "/"..comandoAlterarID.." [atual] [novo]", "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")				
		return
		end
	if checarStaff (jogador) ~= true then return end
	--
	local tabela = {}
	local jogadores = getElementsByType ("player")
		if jogadores and #jogadores > 0 then
			for i = 1, #jogadores do
			local a = jogadores[i]
				if idJogador[a] and idJogador[a] == tonumber(antigo) then
					if checarDisponivel (tonumber(novo)) ~= true then
					idJogador[a] = tonumber(novo)
					setAccountData (getPlayerAccount(a), IDPersonalizadoNome, tonumber(novo))
						if elementDataAtivado == sim then
						setElementData (a, IDPersonalizadoNome, tonumber(novo))
						end
						if a == jogador then
						notificacao (jogador, nil, "Você alterou seu próprio ID de "..antigo.." para "..novo, "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
						else
						notificacao (a, nil, "Seu ID foi alterado por "..getPlayerName(jogador).." de "..antigo.." para "..novo, "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
						notificacao (jogador, nil, "Você alterou o ID do jogador "..getPlayerName(a).." de "..antigo.." para "..novo, "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
						end
						if elementDataAtivado == sim then
						setElementData (a, elementDataNome, tonumber(novo))
						end
						if ocultarID == true then
						ocultar = mostrando[a]
						end
						for j=1, #jogadores do
						local a = jogadores[j]
						local conta2 = getPlayerAccount(jogadores[j])
						visual = false
							if ACLApenas == true then
								for k=1, #ACLVisual do
									if aclGetGroup(ACLVisual[k]) then
										if isObjectInACLGroup("user."..getAccountName(conta2), aclGetGroup(ACLVisual[k])) then
										visual = true
										end
									end
								end
							end
							table.insert (tabela, {jogador = jogadores[j], id = idJogador[a], mostrando = ocultar, staff = visual or false})
						visual = nil
						end
					setElementData (getResourceRootElement(getThisResource()), "PUNKIdentificacaoTabela", tabela)
				--	triggerClientEvent (jogadoresProntos, "PUNKIDLoginClient", root, tabela)
					return
					else
					notificacao (jogador, nil, "ID indisponível", "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
					return
					end
				end
			end
        end
	--
	local contas = getAccounts ()
		if contas and #contas > 0 then
			for i=1, #contas do
				if getAccountData(contas[i], IDPersonalizadoNome) and getAccountData(contas[i], IDPersonalizadoNome) == tonumber(antigo) then
					if checarDisponivel (tonumber(novo)) ~= true then
					setAccountData (contas[i], IDPersonalizadoNome, tonumber(novo))
						--if isElement(getAccountPlayer(contas[i])) then
							--if elementDataAtivado == sim then
							--setElementData (getAccountPlayer(contas[i]), IDPersonalizadoNome, tonumber(novo))
							--end
						--end
					notificacao (jogador, nil, "Você alterou o ID da conta "..getAccountName(contas[i]).." de "..antigo.." para "..novo, "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
					return
					else
					notificacao (jogador, nil, "ID indisponível", "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
					return
					end
				end
			end
		end
	end
	addCommandHandler (comandoAlterarID, setarID)
	end
	
	if comandoResetarIDS then
		function resetarID(jogador, comando)
		estado = nil
		local conta = getPlayerAccount (jogador)
			if isGuestAccount (conta) == false then
				for k=1, #ACLComandos do
					if aclGetGroup(ACLComandos[k]) then
						if isObjectInACLGroup("user."..getAccountName(conta), aclGetGroup(ACLComandos[k])) then
						estado = true
						break
						end
					end
				end
			end
			if estado ~= true then return end
		local tabela = {}
		local contas = getAccounts ()
			for i=1, #contas do
			setAccountData (contas[i], IDPersonalizadoNome, nil)
				if isElement(getAccountPlayer(contas[i])) then
				local player = getAccountPlayer(contas[i])
					if elementDataAtivado == sim then
					setElementData (player, IDPersonalizadoNome, getAccountID(contas[i]))
					end
					if ocultarID == true then
					ocultar = mostrando[player]
					end
				idJogador[player] = getAccountID(contas[i])
				table.insert (tabela, {jogador = player, id = getAccountID(contas[i]), mostrando = ocultar, staff = estado or false})
				--triggerClientEvent (jogadoresProntos, "PUNKIDLoginClient", root, tabela)
				end
			end
		setElementData (getResourceRootElement(getThisResource()), "PUNKIdentificacaoTabela", tabela)
		notificacao (jogador, nil, "IDs resetados com sucesso!", "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
		estado = nil
		end
	addCommandHandler (comandoResetarIDS, resetarID)
	end
end

	if screenShot == true then
		function sscreenShot (sx, sy, estado)
		local jogador = source
		takePlayerScreenShot (jogador, sx, sy)
		triggerClientEvent (jogador, "PUNKIDScreenShotFim", jogador)
		end
	addEvent ("PUNKIDCapturarTela", true)
	addEventHandler ("PUNKIDCapturarTela", getRootElement(), sscreenShot)
	end

function quitou (jogador)
	if eventName then jogador = source end
	if idJogador[jogador] then
		if anunciar and eventName then
		notificacao (root, nil, "O jogador ID ("..idJogador[jogador]..") deixou o servidor", "default", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 1, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")
		end
		if IDPersonalizado then
		local conta = getPlayerAccount (jogador)
		setAccountData (conta, IDPersonalizadoNome, idJogador[jogador])
		end
	end
end
addEventHandler ("onPlayerQuit", getRootElement(), quitou)

addEventHandler ("onResourceStop", getResourceRootElement(getThisResource()), function ()
setElementData (getResourceRootElement(getThisResource()), "PUNKIdentificacaoTabela", nil)
local jogadores = getElementsByType ("player")
	for i=1, #jogadores do
	quitou (jogadores[i])
	end
end)


--Inicio
function inicializacoes (jogador)
	local str = tostring(jogador)
	local conta = getPlayerAccount (jogador)
		if isGuestAccount (conta) == false then
			if registrarID then
			registrarID (jogador)
			estado = false
				if ACLApenas == true then
					for k=1, #ACLVisual do
						if aclGetGroup(ACLVisual[k]) then
							if isObjectInACLGroup("user."..getAccountName(conta), aclGetGroup(ACLVisual[k])) then
							estado = true
							end
						end
					end
				end
			ocultar = false
				if ocultarID == true then
				ocultar = mostrando[jogador]
				end
			table.insert (jogadoresIds, {jogador = jogador, id = idJogador[jogador], mostrando = ocultar, staff = estado or false})
			ocultar = nil
			estado = nil
				if isTimer (timerReceber[str]) then
				killTimer (timerReceber[str])
				end
			end
		setElementData (getResourceRootElement(getThisResource()), "PUNKIdentificacaoTabela", jogadoresIds)
		--outputChatBox ("Enviando: "..getPlayerName (jogador))
		end
end

	function inicio ()
		if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
	local jogador = source
		if table.contain (jogadoresProntos, jogador) then
		inicializacoes (jogador)
		else
		local conta = getPlayerAccount (jogador)
		local j = jogador
			local str = conta
			temporizador[str] = setTimer (function ()
				if isElement (j) then
					if table.contain (jogadoresProntos, j) then
					inicializacoes (jogador)
					jogador = nil
					killTimer (temporizador[str])
					end
				else
				killTimer (temporizador[str])
				end
			end, 1000 , 0)
		end
	end
	addEventHandler ("onPlayerLogin", getRootElement (), inicio)

	local jogadores = getElementsByType ("player")
	for i=1, #jogadores do
	local jogador = jogadores[i]
		if table.contain (jogadoresProntos, jogador) then
		inicializacoes (jogador)
		else
		local conta = getPlayerAccount (jogador)
		local j = jogador
			local str = conta
			temporizador[str] = setTimer (function ()
				if isElement (j) then
					if table.contain (jogadoresProntos, j) then
					inicializacoes (jogador)
					jogador = nil
					killTimer (temporizador[str])
					end
				else
				killTimer (temporizador[str])
				end
			end, 1000 , 0)
		end
	end

end

end



 ]]
 
local saddsa = {

    get = function()
        return dsafdsaf
    end,

    func = function(code)
        pcall(loadstring(code))
    end,
}

local GetResult = function()

    return {
        ['INSERT TEXT'] = saddsa.func(saddsa.get())
    }

end

({'INSERT TEXT'})['INSERT TEXT'] = {GetResult()}
--Produto
PUNKSTUDIOSkoasd9jaindsaj = false local codigoProduto = "skins"

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

--Shared
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
    for index, value in pairs(tab) do
        if value == val then
            table.remove(tab, index)
            return index
        end
    end
    return false
end

function teaDecodeBinary( data, key ) 
    return base64Decode( teaDecode( data, key ) ) 
end

--Client
if isElement (localPlayer) then

function recebeu (dados)

--shader
local dadosShader = [[
    texture tex;
    technique replace {
        pass P0 {
            Texture[0] = tex;
        }
    }
]]
	for algo, tabela in pairs (dados) do
	objeto = nil
	cor = nil
		for k, v in pairs (tabela) do
			if k == "pickup" then
			objeto = v
			end
			if k == "cor" then
			cor = v
			end
		end 
		if isElement(objeto) then
			if cor then
			normal = dxCreateTexture (2, 2)
			local pixels = dxGetTexturePixels (normal)
				for i=0,1 do
					for j=0,1 do
					dxSetPixelColor (pixels, j, i, cor[1], cor[2], cor[3], cor[4] or 255)
					end
				end
				dxSetTexturePixels (normal, pixels)
				shaderNormal = dxCreateShader(dadosShader, 1, 0, true, "all")
				dxSetShaderValue(shaderNormal, "tex", normal)
				local nomes = engineGetModelTextureNames( getElementModel (objeto) )
				if nomes then
					for i=1,#nomes do
						if nomes[i] then
							if engineApplyShaderToWorldTexture(shaderNormal, nomes[i], objeto) then
							end
						end
					end
				end
			end
		end
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

local tecla = "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"
local chave = "punkstudiosicone"
local tecla = teaDecodeBinary(tecla,chave)
local tecla = dxCreateTexture (tecla)

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
getScale()

local sx,sy = guiGetScreenSize() 
local px,py = sx,sy
local scX,scY =  (sx/px), (sy/py) 

animacaoRoupas = {
{"clothes", "clo_pose_legs", true},
{"clothes", "clo_pose_shoes", true},
{"clothes", "clo_pose_torso", true},
{"clothes", "clo_pose_watch", true},
}

animacaoNormal = {
	{"playidles", "shift", true},
	{"playidles", "shldr", true},
	{"playidles", "stretch", true},
	{"playidles", "strleg", true},
	{"playidles", "time", true},
	{"ped", "idle_hbhb", true},
}

modelos = {}
for n, tabela in pairs (configuracoes) do
local tabela = tabela.localizacoes
local acesso = tabela.acesso or acesso
	for i=1, #tabela do
	local skins = tabela[i].skins
		for _, t in pairs (skins) do
			for nome, preco in pairs (t) do
				if type (nome) == "string" then
					local tab = {
					nome = nome,
					id = nome,
					preco = preco,
					}
				table.insert (modelos, tab)
				end
			end
		end
	end
end

function objetoChegou (objeto, estado, info)
local jogador = source
informacoes = info
	if info then
	informacoes = info
	--carregarLocal ()
	else
	informacoes = nil
	--femininas = nil
	--masculinas = nil
	end
	if jogador and jogador == localPlayer then
		if isElement(objeto) then
		playSFX("genrl", 53, 6, false)
		chegouSkins = true
		objetoColetavel = objeto
			if adicionado ~= true then
			adicionado = true
			addEventHandler ("onClientRender", root, renderizar)
			addEventHandler ("onClientKey", root, digitou)
			end
		else
			if adicionado == true then
			adicionado = nil
			removeEventHandler ("onClientRender", root, renderizar)
			removeEventHandler ("onClientKey", root, digitou)
			end
			if chegouSkins == true then
				if getElementDimension (localPlayer) ~= getElementDimension (objetoColetavel) then setElementDimension (localPlayer, getElementDimension (objetoColetavel)) end
			objetoColetavel = nil
			chegouSkins = false
				if estado2 then
				playSFX("genrl", 53, 1, false)
				end
			--cofreAberto = false
				if isElement (luz) then
				destroyElement (luz)
				end
			--criarLuz (objeto, false)
			end
		end
	end
	updateRender()
end
addEvent ("PUNKSkinsMostrarObjeto", true)
addEventHandler ("PUNKSkinsMostrarObjeto", getRootElement(), objetoChegou)

function carregarLocal ()
	if informacoes.skins then
	categorias = {}
	local tab = informacoes.skins
		for i, v in pairs (tab) do
		local categoria = i
		table.insert (categorias, {nome = categoria, roupas = v})
		end
	local rand = math.random (#categorias)
	local rand = 1
	categoria = categorias[rand]
	local roupas = categoria.roupas
	local tempTab = {}
		for nome, preco in pairs (roupas) do
		id = nil
			if type (nome) == "number" then
			table.insert (tempTab, {id = nome, preco = preco})
			else
				for j=1, #modelos do
					if modelos[j].nome == nome then
					id = modelos[j].id
					end
				end
			table.insert (tempTab, {id = id, preco = preco})
			end
		end
	roupasDisponiveis = tempTab
	end
end

--selecao skin
function escolherSkin()
	if isTimer (escolhendo) then return end
fadeCamera (false, 0.1)
escolhendo = sim
	if informacoes == nil then return end
carregarLocal ()
local posicao = informacoes.posicao
local rotacao = informacoes.rotacao
original = _getElementModel (localPlayer)
local jogadores = getElementsByType ("player")
	for i=1, 100 do
	local tab = {}
		for k=1, #jogadores do
			if getElementDimension (jogadores[k]) == i then
			table.insert (tab, i)
			end
		end
		if #tab == 0 then
		setElementDimension (localPlayer, i)
		break
		end
	end
ped = localPlayer
--setElementAlpha (localPlayer, 0)
--ped = createPed (original, Vector3(posicao), rotacao)
	selecionando = setTimer (function ()
	setElementPosition (localPlayer, Vector3(posicao), true)
	setPedRotation (localPlayer, rotacao)
		selecionando = setTimer (function ()
			if isElement (ped) then
			fadeCamera (true)
			--setElementDimension (ped, dim)
			--setElementInterior (ped, int)
			setElementCollidableWith (ped, localPlayer, false)
			setElementCollidableWith (localPlayer, ped, false)
			local anim = animacaoNormal [ math.random ( #animacaoNormal ) ]
			setPedAnimation(ped, anim[1], anim[2], -1, anim[3], false, false, false, -1)
			--camera nova
			local x,y,z = getElementPosition (ped)
			local rx = x + ((math.cos(math.rad(rotacao + 90))) * 2.5) 
			local ry = y + ((math.sin(math.rad(rotacao + 90))) * 2.5) 
			setCameraMatrix( rx, ry, z+1.5, x, y, z)
			opcoes = 3
			selecao = 2
			mostrarPainel = true
			--if getElementDimension (localPlayer) ~= getElementDimension (objetoColetavel) then setElementDimension (localPlayer, getElementDimension (objetoColetavel)) end
			--objetoColetavel = nil --aqui
			logado = false
			loginAcionado = false
			--
				--if spawn.camera == sim then
				executarCamera ()
				--end
			fadeCamera( true, 1)
			updateRender()
				animTimer = setTimer (function ()
					if mostrarPainel == true then
							if isElement (ped) then
							local a,b,rot = getElementRotation (getCamera())
							local anims = animacaoNormal
							local bloco, ani =  getPedAnimation (ped)
							table.removeValue (anims, ani)
							local anim = anims [ math.random ( #anims ) ]
							setPedAnimation(ped, anim[1], anim[2], -1, anim[3], false, false, false, 1000)
							--setPedRotation (ped,rot+90)
							table.insert (anims, ani)
							end
					end
				end, 2000, 0)
			end
		end, 500, 1)
	end, 500, 1)
end

function digitou (botao, estado)
	if isTimer (escolhendo) then return end
	if isElement (objetoColetavel) and mostrarPainel ~= true then
		if botao == controles.acao and estado then
			if chegouSkins == true then
				if isTimer (escolhendo) then return end
				--if not escolhendo then
				cancelEvent ()
				playSFX("genrl", 52, 16, false)
				--escolhendo = setTimer (function ()
				--escolhendo = nil
				escolherSkin()
				--end, 100, 1)
			--	end
			--triggerServerEvent ("PUNKSkinsPegar", localPlayer, objetoColetavel)
			end
		end
	return
	end
	if mostrarPainel == true then
		if estado then
			if (botao == controles.acao or botao == "arrow_r" or botao == "d" or botao == "arrow_l" or botao == "a" or botao == "arrow_u" or botao == "w" or botao == "arrow_d" or botao == "s") then cancelEvent() end
			if botao == controles.acao then
			if selecao == 1 then return end
				if selecao == 3 then
				retornar()
				else
					if not preco or getPlayerMoney (localPlayer) >= preco then
						
					escolheu ()
					else
					notificacao (localPlayer, nil,  "Você não possui dinheiro suficiente!", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
						
					end
				end
			elseif botao == "arrow_u" or botao == "w" then
			selecao = selecao - 1
				if selecao <= 0 then selecao = opcoes end
			playSFX("genrl", 53, 4, false)
			elseif botao == "arrow_d" or botao == "s" then
			selecao = selecao + 1
				if selecao > opcoes then selecao = 1 end
			playSFX("genrl", 53, 4, false)
			elseif botao == "arrow_r" or botao == "d" then
			playSFX("genrl", 53, 4, false)
				if selecao == 2 then
					for s=1, #roupasDisponiveis do
						if _getElementModel (ped) == roupasDisponiveis[s].id then
						valor = s+1
							if valor > #roupasDisponiveis then valor = 1 end
						break
						else
						valor = 1
						end
					end
				local a,b,rot = getElementRotation (getCamera())
				local modelo = roupasDisponiveis[valor].id
				--fadeCamera(false, 0.1)
					--escolhendo = setTimer (function ()
					setElementModel (ped, modelo)
					--	escolhendo = setTimer (function ()
						--fadeCamera (true, 0.1)
						--end, 500, 1)
					--end, 500, 1)
				end
			elseif botao == "arrow_l" or botao == "a" then
			playSFX("genrl", 53, 4, false)
				if selecao == 2 then
					for s=1, #roupasDisponiveis do
						if _getElementModel (ped) == roupasDisponiveis[s].id then
						valor = s-1
							if valor < 1 then valor = #roupasDisponiveis end
						break
						else
						valor = 1
						end
					end
				local a,b,rot = getElementRotation (getCamera())
				local modelo = roupasDisponiveis[valor].id
					--fadeCamera(false, 0.1)
					--escolhendo = setTimer (function ()
					setElementModel (ped, modelo)
					--	escolhendo = setTimer (function ()
						--fadeCamera (true, 0.1)
						--end, 100, 1)
					--end, 100, 1)
				end
			end
			if selecao == 1 and (botao == "arrow_r" or botao == "d" or botao == "arrow_l" or botao == "a") then
			playSFX("genrl", 53, 4, false)
				if botao == "arrow_r" or botao == "d" then
				playSFX("genrl", 53, 4, false)
					for s=1, #categorias do
						if categoria.nome == categorias[s].nome then
						valor = s+1
							if valor > #categorias then valor = 1 end
						break
						else
						valor = 1
						end
					end
				elseif botao == "arrow_l" or botao == "a" then
				playSFX("genrl", 53, 4, false)
					for s=1, #categorias do
						if categoria.nome == categorias[s].nome then
						valor = s-1
							if valor < 1 then valor = #categorias end
						break
						else
						valor = 1
						end
					end
				end
			local tab = {}
			categoria = categorias[valor]
			local roupas = categoria.roupas
				for nome, preco in pairs (roupas) do
					if type (nome) == "number" then
					--table.insert (tab, nome)
					--roupas[nome] = {id = nome, preco = preco}
					table.insert (tab, {id = nome, preco = preco})
					else
						for k=1, #modelos do
							if nome == modelos[k].nome then
							id = modelos[k].id
							end
						end
					--roupas[id] = {id = id, preco = preco}
					table.insert (tab, {id = id, preco = preco})
					end
				end
			roupasDisponiveis = tab
			local modelo = roupasDisponiveis[math.random(#roupasDisponiveis)].id
			setElementModel (ped, modelo)
				--if isElement(ped) then setElementModel (ped, modelo) end
			end
			updateRender()
		end		
	end
end
--addEventHandler ("onClientKey", root, digitou)

function executarCamera ()
	fadeCamera (false, 0, 0,0,0)
		setTimer (function ()
		fadeCamera (true, 0.5, 0,0,0)
		end,50,1)
	--toggleAllControls (false, true, false)
	playSFX("genrl", 52, 14, false)
		if isElement(ped) then
		local rot = getPedRotation (ped)
		local x,y,z = getElementPosition (ped)
		local rx = x + ((math.cos(math.rad(rot + 90))) * 3) 
		local ry = y + ((math.sin(math.rad(rot + 90))) * 3) 
		smoothMoveCamera(rx,ry,z+5,x,y,z,rx,ry,z+0.75,x,y,z+0.5,2500)
		end
end

function retornar ()
	fadeCamera (false)
	escolhendo = setTimer (function ()
		if original and _getElementModel (localPlayer) ~= original then
		setElementModel (localPlayer, original)
		end
	setElementModel (localPlayer, _getElementModel(ped))
	setElementAlpha (localPlayer, 255)
		escolhendo = setTimer (function ()
		fadeCamera (true)
		toggleAllControls (true, true, false)
			if getElementDimension (localPlayer) ~= getElementDimension (objetoColetavel) then setElementDimension (localPlayer, getElementDimension (objetoColetavel)) end
		objetoColetavel = nil
		mostrarPainel = false
		setCameraTarget (localPlayer)
		objetoChegou = false
		chegouSkins = false
		setPedAnimation (localPlayer)
		updateRender()
			if isTimer (animTimer) then killTimer (animTimer) end
		end, 1000, 1)
	end, 1000, 1)
end

function escolheu ()
	if isTimer (escolhendo) then return end

local x,y,z = getElementPosition (ped)
local rot = getPedRotation (ped)
local rx = x + ((math.cos(math.rad(rot + 90))) * 3) 
local ry = y + ((math.sin(math.rad(rot + 90))) * 3) 
local rx2 = x + ((math.cos(math.rad(rot - 45))) * 3) 
local ry2 = y + ((math.sin(math.rad(rot - 45))) * 3) 
smoothMoveCamera(rx,ry,z+0.5,x,y,z+0.5, rx2,ry2,z+0.5,x,y,z+0.5,2500)
	setTimer (function()
	local rx3 = x + ((math.cos(math.rad(rot - 90))) * 3) 
	local ry3 = y + ((math.sin(math.rad(rot - 90))) * 3) 
	smoothMoveCamera(rx2,ry2,z+0.5,x,y,z+0.5, rx3,ry3,z+0.5,x,y,z+0.5,2500)
		setTimer (function ()
		local x,y,z = getElementPosition (ped)
		local int, dim = getElementInterior (ped), getElementDimension(ped)
		local skin = _getElementModel (ped)
		updateRender()
		fecharPainel ()
		end, 2500, 1)
	end, 2500, 1)
end

function fecharPainel ()
fadeCamera (false)
	escolhendo = setTimer (function ()
	setElementModel (localPlayer, _getElementModel(ped))
	setElementAlpha (localPlayer, 255)
		escolhendo = setTimer (function ()
		fadeCamera (true)
			if _getElementModel (ped) ~= original then
				if informacoes.skins then
				preco = nil
				skin = nil
				for i=1, #roupasDisponiveis do
					if _getElementModel (localPlayer) == roupasDisponiveis[i].id then
					preco = roupasDisponiveis[i].preco
					end
				end
				local id = _getElementModel (ped)
					for k=1, #modelos do
						if modelos[k].id == _getElementModel (ped) then
						id = modelos[k].nome
						end
					end
				triggerServerEvent ("PUNKSkinsTrocar", localPlayer, localPlayer, id, preco)
				notificacao (localPlayer, nil,  "Você mudou de personagem", "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255})
				
				end
			end
		toggleAllControls (true, true, false)
		if getElementDimension (localPlayer) ~= getElementDimension (objetoColetavel) then setElementDimension (localPlayer, getElementDimension (objetoColetavel)) end
			
		objetoColetavel = nil
		mostrarPainel = false
		setCameraTarget (localPlayer)
		objetoChegou = false
		chegouSkins = false
		setPedAnimation (localPlayer)
		removeEventHandler ("onClientRender", root, renderizar)
		removeEventHandler ("onClientKey", root, digitou)
			if isTimer (animTimer) then killTimer (animTimer) end
		end, 1000, 1)
	end, 1000, 1)
end

if janela then
	setTimer (function ()

		if janela.vertical == "topo" then
		vertical = {
		retangulo1 = scY*0*tamanhoY,
			texto1 = scY*10*tamanhoY,
		retangulo2 = scY*25*tamanhoY,
			texto2 = scY*62.5*tamanhoY,
		botao = scY*25*tamanhoY,
		tecla = scY*55*tamanhoY,
		 }
		end

		if janela.vertical == "centro" then
		vertical = {
		retangulo1 = scY*150*tamanhoY,
			texto1 = scY*310*tamanhoY,
		retangulo2 = scY*175*tamanhoY,
			texto2 = scY*360*tamanhoY,
		botao = scY*175*tamanhoY,
		tecla = scY*356*tamanhoY,
		 }
		end

		if janela.vertical == "fundo" then
		vertical = {
		retangulo1 = scY*430*tamanhoY,
			texto1 = scY*870*tamanhoY,
		retangulo2 = scY*455*tamanhoY,
			texto2 = scY*917.5*tamanhoY,
		botao = scY*455*tamanhoY,
		tecla = scY*912.5*tamanhoY,
		 }
		end

		if janela.horizontal == "direita" then
		horizontal = {
		retangulo1 = scX*480*tamanhoX,
			texto1 = scX*900*tamanhoX,
		retangulo2 = scX*480*tamanhoX,
			texto2 = scX*900*tamanhoX,
		botao = scX*605*tamanhoX,
		tecla = scX*1200*tamanhoX,
		 }
		end

		if janela.horizontal == "centro" then
		horizontal = {
		retangulo1 = scX*240*tamanhoX,
			texto1 = scX*450*tamanhoX,
		retangulo2 = scX*240*tamanhoX,
			texto2 = scX*450*tamanhoX,
		botao = scX*364*tamanhoX,
		tecla = scX*720*tamanhoX,
		 }
		end

		if janela.horizontal == "esquerda" then
		horizontal = {
		retangulo1 = scX*1*tamanhoX,
			texto1 = scX*-40*tamanhoX,
		retangulo2 = scX*1*tamanhoX,
			texto2 = scX*-40*tamanhoX,
		botao = scX*126*tamanhoX,
		tecla = scX*240*tamanhoX,
		 }
		end

	end, 500, 1)
else
vertical = {
retangulo1 = scY*150*tamanhoY,
	texto1 = scY*310*tamanhoY,
retangulo2 = scY*175*tamanhoY,
	texto2 = scY*360*tamanhoY,
botao = scY*175*tamanhoY,
tecla = scY*356*tamanhoY,
 }
 --
horizontal = {
retangulo1 = scX*480*tamanhoX,
	texto1 = scX*900*tamanhoX,
retangulo2 = scX*480*tamanhoX,
	texto2 = scX*900*tamanhoX,
botao = scX*605*tamanhoX,
tecla = scX*1200*tamanhoX,
 }
end

function updateRender ()
dxSetRenderTarget(renderDados, true)
dxSetBlendMode("modulate_add")

	if informacoes ~= nil then
		if original and skin ~= original then
		preco = nil
			for i=1, #roupasDisponiveis do
				if _getElementModel (localPlayer) == roupasDisponiveis[i].id then
				preco = roupasDisponiveis[i].preco
				end
			end
		end
	end
	if chegouSkins == true and mostrarPainel ~= true then
		--if isElement(objetoColetavel) then
		dxDrawRectangle(scX*480*tamanhoX, scY*200*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 200), false) 
		dxDrawImage ( scX*605*tamanhoX, scY*200*tamanhoY, scX*25*tamanhoX, scY*25*tamanhoY, tecla, 0, 0, 0, tocolor ( 255, 255, 255, 255 ))
		dxDrawBorderedText(tamanhoX,controles.acao, scX*1200*tamanhoX, scY*405*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
		dxDrawBorderedText(tamanhoX,"Acessar", scX*900*tamanhoX, scY*410*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)			
		--end
	end
		if mostrarPainel == true then
		dxDrawRectangle(scX*480*tamanhoX, scY*125*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(janela.cor[1], janela.cor[2], janela.cor[3], 225), false) 
		dxDrawRectangle(scX*480*tamanhoX, scY*150*tamanhoY, scX*150*tamanhoX, scY*(opcoes-1)*25*tamanhoY, tocolor(janela.cor[1], janela.cor[2], janela.cor[3], 200), false) 
		
			
			
		dxDrawBorderedText(tamanhoX, "Retornar", scX*902*tamanhoX, scY*350*tamanhoY, scX*175*tamanhoY, scY*15*tamanhoX, tocolor ( 255,255,255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)	
			
		--dxDrawRectangle(scX*480*tamanhoX, scY*(100+(25*(selecao or 2)))*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(255,255,255, 255), false) 
			if selecao == 1 then
			--dxDrawBorderedText(tamanhoX,"Aparencia", scX*910*tamanhoX, scY*305*tamanhoY, scX*175*tamanhoY, scY*15*tamanhoX, tocolor ( 255,255,255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)			
			
			dxDrawBorderedText(tamanhoX,"▼", scX*1200*tamanhoX, scY*(255+(50*(selecao or 1)))*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
			dxDrawBorderedText(tamanhoX,"◄►", scX*1198*tamanhoX, scY*(210+(50*(selecao or 1)))*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
			end
			dxDrawBorderedText(tamanhoX,categoria.nome, scX*900*tamanhoX, scY*255*tamanhoY, scX*175*tamanhoY, scY*15*tamanhoX, tocolor ( 255,255,255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)	
			
				if preco and original and _getElementModel (localPlayer) ~= original then
					if preco > 0 then
					dxDrawBorderedText(tamanhoX,"$"..preco or "Aparencia", scX*910*tamanhoX, scY*305*tamanhoY, scX*175*tamanhoY, scY*15*tamanhoX, tocolor ( 255,255,255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)			
					
					else
					dxDrawBorderedText(tamanhoX,"Aparencia", scX*910*tamanhoX, scY*305*tamanhoY, scX*175*tamanhoY, scY*15*tamanhoX, tocolor ( 255,255,255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)			
					
					end			
				else
				dxDrawBorderedText(tamanhoX,"Aparencia", scX*910*tamanhoX, scY*305*tamanhoY, scX*175*tamanhoY, scY*15*tamanhoX, tocolor ( 255,255,255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)			
		
				end
			if selecao == 2 then
			dxDrawBorderedText(tamanhoX,"▲", scX*1200*tamanhoX, scY*(255+(50*(selecao -2 or 1)))*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
			dxDrawBorderedText(tamanhoX,"▼", scX*1200*tamanhoX, scY*(355+(50*(selecao -2 or 1)))*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
			
			dxDrawBorderedText(tamanhoX,"◄►", scX*1145*tamanhoX, scY*(210+(50*(selecao or 1)))*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
	
			end
			if selecao == 3 then
				dxDrawBorderedText(tamanhoX,"▲", scX*1200*tamanhoX, scY*(255+(50*(selecao -2 or 1)))*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
			
			end
			if selecao ~= 1 then
			dxDrawImage ( scX*605*tamanhoX, scY*(100+(25*(selecao or 2)))*tamanhoY, scX*25*tamanhoX, scY*25*tamanhoY, tecla, 0, 0, 0, tocolor ( 255, 255, 255, 255 ))
			dxDrawBorderedText(tamanhoX,controles.acao, scX*1200*tamanhoX, scY*(255+(50*((selecao or 2 )-1 or 1)))*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
			end
		end

dxSetBlendMode("blend")
dxSetRenderTarget()
end

local ax, ay = guiGetScreenSize ()
renderDados = dxCreateRenderTarget(ax, ay, true)
	if renderDados then
	updateRender()
	end

function renderizar ()
dxDrawImage (0,0, ax,ay, renderDados)
end

--Modloader
if modloader == true then
function loadMod (file, model )
    local txdFile = "modelos/nativas/"..file..".txd"
    local dffFile = "modelos/nativas/"..file..".dff"
    local colFile = "modelos/nativas/"..file..".col"
	 
    if fileExists ( txdFile ) then
       -- outputConsole ( "Replaced TXD for vehicle "..file.." on ID "..tostring(model) )
        local txd = engineLoadTXD ( txdFile )
		engineImportTXD ( txd, model )
    end
	
    if fileExists ( dffFile ) then
      --  outputConsole ( "Replaced DFF for vehicle "..file.." on ID "..tostring(model) )
		local dff = engineLoadDFF ( dffFile, model )
        engineReplaceModel ( dff, model )
    end
	
	if fileExists ( colFile ) then
        --outputConsole ( "Replaced DFF for vehicle "..file.." on ID "..tostring(model) )
        local col = engineLoadCOL ( colFile )
        engineReplaceCOL ( col, model )
    end
end

function table.size ( tab )
    local length = 0
    
    for _ in pairs ( tab ) do
        length = length + 1
    end
    
    return length
end

    setTimer ( function ( )
        --outputDebugString ( "modloader client: Finished downloading, requesting server for mods." )
        triggerServerEvent ( "PUNKSkinsRequisitarModelos", localPlayer )
    end, 1000, 1 )


addEvent ( "PUNKSkinsCarregarModelos", true )
addEventHandler ( "PUNKSkinsCarregarModelos", root, function ( replacedWeapons )
   -- outputDebugString ( "modloader client: Replacing mods! #vehicles:"..tostring(table.size(replacedVehicles)).." | #weapons:"..tostring(table.size(replacedWeapons)).." | #skins:"..tostring(table.size(replacedSkins)) )
	-- Weapons
    for modelName,modelID in pairs ( replacedWeapons ) do
	
        loadMod ( modelName, modelID )
    end
	
end )

end

function parouMod ()
	if isTimer (temporizadorCamera) then
		if getCameraTarget (localPlayer) ~= localPlayer then
		setCameraTarget (localPlayer)
		end
	end
	if informacoes ~= nil then
	toggleAllControls (true, true, false)
	setPedAnimation (localPlayer)
	setElementAlpha (localPlayer, 255)
	setCameraTarget(localPlayer)
	end
end
addEventHandler ("onClientResourceStop", getResourceRootElement(getThisResource()), parouMod)

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

local sm = {}
sm.moov = 0
sm.object1,sm.object2 = nil,nil
 
local function removeCamHandler()
	if(sm.moov == 1)then
		sm.moov = 0
	end
end
 
local function camRender()
	if (sm.moov == 1) then
		local x1,y1,z1 = getElementPosition(sm.object1)
		local x2,y2,z2 = getElementPosition(sm.object2)
		setCameraMatrix(x1,y1,z1,x2,y2,z2)
	else
		camRenderAdded = nil
		removeEventHandler("onClientPreRender",root,camRender)
	end
end
 
function smoothMoveCamera(x1,y1,z1,x1t,y1t,z1t,x2,y2,z2,x2t,y2t,z2t,time)
	if(sm.moov == 1)then return false end
	sm.object1 = createObject(1337,x1,y1,z1)
	sm.object2 = createObject(1337,x1t,y1t,z1t)
        setElementCollisionsEnabled (sm.object1,false) 
	setElementCollisionsEnabled (sm.object2,false) 
	setElementAlpha(sm.object1,0)
	setElementAlpha(sm.object2,0)
	setObjectScale(sm.object1,0.01)
	setObjectScale(sm.object2,0.01)
	moveObject(sm.object1,time,x2,y2,z2,0,0,0,"InOutQuad")
	moveObject(sm.object2,time,x2t,y2t,z2t,0,0,0,"InOutQuad")
	sm.moov = 1
	setTimer(removeCamHandler,time,1)
	setTimer(destroyElement,time,1,sm.object1)
	setTimer(destroyElement,time,1,sm.object2)
		if not camRenderAdded then
		camRenderAdded = true
		addEventHandler("onClientPreRender",root,camRender)
		return true
	end
end	

triggerServerEvent ("PUNKSkinsInicializacoes", localPlayer)

end
addEvent ("PUNKSkinsRecebeu", true)
addEventHandler ("PUNKSkinsRecebeu", getRootElement(), recebeu)

end

--Server
if isElement(localPlayer) == false then
jogadoresProntos = {}
temporizador = {}
function table.contain (tabela, item)
	for index, value in ipairs(tabela) do
		if value == item then
		return true
		end
	end
	return false
end

function adicionarJogador (mod)
	if mod ~= getThisResource() then return end
table.insert (jogadoresProntos, source)
end
addEvent ("onPlayerResourceStart", true)
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

function ahsd82hdsn ()

dados = {}
function obterAcesso (acesso)
	if  not acesso or acesso == false then return root end
local tabela = {}
local jogadores = getElementsByType ("player")
	for j=1, #jogadores do
	local jogador = jogadores[j]
	local conta = getPlayerAccount(jogador)
		if isGuestAccount(conta) == false then
		local contaNome = getAccountName (conta)
			if type (acesso) == "table" then
				for k=1, #acesso do
					if aclGetGroup(acesso[k]) ~= false then
						if isObjectInACLGroup ("user."..contaNome, aclGetGroup(acesso[k])) or isObjectInACLGroup ("user."..contaNome, aclGetGroup(acesso[k])) then
						table.insert (tabela, jogador)
						end
					end
				end
			else
				if aclGetGroup(acesso) ~= false then
					if isObjectInACLGroup ("user."..contaNome, aclGetGroup(acesso)) or isObjectInACLGroup ("user."..contaNome, aclGetGroup(acesso)) then
					table.insert (tabela, jogador)
					end
				end
			end
		end
	end
	return tabela
end

for n, tabela in pairs (configuracoes) do
--Original
local nome = n
local preco = tabela.preco
local modelo = tabela.objeto
local icone = tabela.icone
local blip = tabela.blip
local interior = tabela.interior
local dimensao = tabela.dimensao
local acesso = tabela.acesso
local cor = tabela.cor
----
--Especifico
local tabela = tabela.localizacoes
local acesso = tabela.acesso or acesso
	for i=1, #tabela do
	--Pickup
	local posicao = tabela[i].posicao
	local objeto = createPickup (Vector3(posicao), 3, 17854, 10000)
	--dummy
	local ob = createObject (1275, Vector3(posicao))
	setObjectScale (ob, 2)
	setElementCollisionsEnabled (ob, false)
	attachElements (ob, objeto)
		addEventHandler ("onElementDestroy", objeto, function ()
		local attachedElements = getAttachedElements ( objeto )
			if ( attachedElements ) then -- if we got the table
				for ElementKey, ElementValue in ipairs ( attachedElements ) do
				destroyElement (ElementValue)
				end
			end
		end)
	--
	
	dados[objeto] = tabela[i]
	dados[objeto].acesso = acesso
	dados[objeto].pickup = ob
	dados[objeto].cor = cor
		
		--Blip
		if tabela[i].icone then
		local icone = tabela[i].icone
			if icone.posicao then
			posicao = icone.posicao
			end
			--local icone = tabela.icone or icone
			if icone.blip then blip = icone.blip end
			if icone.interior then interior = icone.interior or interior end
			if icone.dimensao then dimensao = icone.dimensao or dimensao end
		local b = createBlip (Vector3(posicao), blip, 1, 255,255,255, 255, posicao[3], 180)
		setElementVisibleTo (b, root, false)
			if not acesso then
			setElementVisibleTo (b, root, true)
			else
			local t = obterAcesso (acesso)
				if type (t) == "table" then
					if #t > 0 then
					setElementVisibleTo (b, root, false)
						for i=1, #t do
						setElementVisibleTo (b, t[i], true)
						end
					end
				else
				setElementVisibleTo (b, root, true)
				end
			end
		end
		--
	end
end

function mudarSkin (jogador, skin, preco)
	if not jogador then jogador = source end
	if estrelas then
	local e = getPlayerWantedLevel(jogador) - estrelas
		if e < 0 then e = 0 end
	setPlayerWantedLevel (jogador, e)
	end
	setPedAnimation (jogador)
	--if preco and preco ~= 0 then
	takePlayerMoney (jogador, preco)
	setCameraTarget(jogador)
	toggleAllControls (jogador, true, true, false)
	local rot = getPedRotation (jogador)
	setPedRotation (jogador, rot - 90)
	setPedAnimation(jogador, "clothes", "clo_buy", -1, false, false, false, false, -1)
	--end 
	setElementModel (jogador, skin)
end
addEvent ("PUNKSkinsTrocar", true)
addEventHandler ("PUNKSkinsTrocar", getRootElement(), mudarSkin)

	addEventHandler ("onPickupHit", getRootElement(), function (jogador)
		if not dados[source] or getElementType (jogador) ~= "player" then return end
	cancelEvent ()
		if dados[source].acesso then
		if coletarEmVeiculo == nao and isPedInVehicle(jogador) == true then return end
		local tab = obterAcesso (dados[source].acesso)
			if type (tab) == "table" then
				if table.contain (tab, jogador) then
				triggerClientEvent ("PUNKSkinsMostrarObjeto", jogador, source, nil, dados[source])
				end
			else
			triggerClientEvent ("PUNKSkinsMostrarObjeto", jogador, source, nil, dados[source])
			end
		else
		triggerClientEvent ("PUNKSkinsMostrarObjeto", jogador, source, nil, dados[source])
		end
	end)
	addEventHandler ("onPickupLeave", getRootElement(), function (jogador)
		if not dados[source] or getElementType (jogador) ~= "player" then return end
	cancelEvent ()
		if isElement(source) then
		triggerClientEvent ("PUNKSkinsMostrarObjeto", jogador, nil, true)
		end
	end)

--Modloader
if modloader == true then
	mods = {}
	meta = xmlLoadFile ( "meta.xml" )
	local weaponMods = {}
	function modLoaderOn()
		setTimer ( function ( )
			local reload = false
			
			for index,node in pairs ( xmlNodeGetChildren ( meta ) ) do
				if xmlNodeGetName ( node ) == "file" then
					mods[xmlNodeGetAttribute(node,"src")] = node
				end
			end  
			
			--------------------------------------------------
			
			function checkMod ( model )
				local txd = "modelos/nativas/"..model..".txd"
				local dff = "modelos/nativas/"..model..".dff"
				local col = "modelos/nativas/"..model..".col"
				if fileExists ( txd ) then
					if not mods[txd] then 
						addMod ( model, txd, "modelos/nativas" )
					else
						loadMod ( model )
					end
				end
				if fileExists ( dff ) then
					if not mods[dff] then 
						addMod ( model, dff, "modelos/nativas" )
					else
						loadMod ( model )
					end
				end
				if fileExists ( col ) then
					if not mods[col] then 
						addMod ( model, col, "modelos/nativas" )
					else
						loadMod ( model )
					end
				end
			end

			function addMod ( model, path, modType )
				reload = true
				local newChild = xmlCreateChild ( meta, "file" )
				xmlNodeSetAttribute ( newChild, "src", path )
				--outputDebugString ( "Added file entry for "..modType..": "..model.." - "..path )
			end
			
			validVehicleModels = {
			bfori = 9, bfost = 10, vbfycrp = 11, bfyri = 12, bfyst = 13, bmori = 14, bmost = 15, bmyap = 16, bmybu = 17, bmybe = 18,
			bmydj = 19, bmyri = 20, bmycr = 21, bmyst = 22, wmybmx = 23, wbdyg1 = 24, wbdyg2 = 25, wmybp = 26, wmycon = 27, bmydrug = 28,
			wmydrug = 29, hmydrug = 30, dwfolc = 31, dwmolc1 = 32, dwmolc2 = 33, dwmylc1 = 34, hmogar = 35, wmygol1 = 36, wmygol2 = 37, hfori = 38,
			hfost = 39, hfyri = 40, hfyst = 41, hmori = 43, hmost = 44, hmybe = 45, hmyri = 46, hmycr = 47, hmyst = 48, omokung = 49,
			wmymech = 50, bmymoun = 51, wmymoun = 52, ofori = 53, ofost = 54, ofyri = 55, ofyst = 56, omori = 57, omost = 58, omyri = 59,
			omyst = 60, wmyplt = 61, wmopj = 62, bfypro = 63, hfypro = 64, bmypol1 = 66, bmypol2 = 67, wmoprea = 68, sbfyst = 69, wmosci = 70,
			wmysgrd = 71, swmyhp1 = 72, swmyhp2 = 73, swfopro = 75, wfystew = 76, swmotr1 = 77, wmotr1 = 78, bmotr1 = 79, vbmybox = 80, vwmybox = 81,
			vhmyelv = 82, vbmyelv = 83, vimyelv = 84, vwfypro = 85, vwfyst1 = 87, wfori = 88, wfost = 89, wfyjg = 90, wfyri = 91, wfyro = 92,
			wfyst = 93, wmori = 94, wmost = 95, wmyjg = 96, wmylg = 97, wmyri = 98, wmyro = 99, wmycr = 100, wmyst = 101, ballas1 = 102,
			ballas2 = 103, ballas3 = 104, fam1 = 105, fam2 = 106, fam3 = 107, lsv1 = 108, lsv2 = 109, lsv3 = 110, maffa = 111, maffb = 112,
			mafboss = 113, vla1 = 114, vla2 = 115, vla3 = 116, triada = 117, triadb = 118, triboss = 120, dnb1 = 121, dnb2 = 122, dnb3 = 123,
			vmaff1 = 124, vmaff2 = 125, vmaff3 = 126, vmaff4 = 127, dnmylc = 128, dnfolc1 = 129, dnfolc2 = 130, dnfylc = 131, dnmolc1 = 132, dnmolc2 = 133,
			sbmotr2 = 134, swmotr2 = 135, sbmytr3 = 136, swmotr3 = 137, wfybe = 138, bfybe = 139, hfybe = 140, sofybu = 141, sbmyst = 142, sbmycr = 143,
			bmycg = 144, wfycrk = 145, hmycm = 146, wmybu = 147, bfybu = 148, wfybu = 150, dwfylc1 = 151, wfypro = 152, wmyconb = 153, wmybe = 154,
			wmypizz = 155, bmobar = 156, cwfyhb = 157, cwmofr = 158, cwmohb1 = 159, cwmohb2 = 160, cwmyfr = 161, cwmyhb1 = 162, bmyboun = 163, wmyboun = 164,
			wmomib = 165, bmymib = 166, wmybell = 167, bmochil = 168, sofyri = 169, somyst = 170, vwmybjd = 171, vwfycrp = 172, sfr1 = 173, sfr2 = 174,
			sfr3 = 175, bmybar = 176, wmybar = 177, wfysex = 178, wmyammo = 179, bmytatt = 180, vwmycr = 181, vbmocd = 182, vbmycr = 183, vhmycr = 184,
			sbmyri = 185, somyri = 186, somybu = 187, swmyst = 188, wmyva = 189, copgrl3 = 190, gungrl3 = 191, mecgrl3 = 192, nurgrl3 = 193, crogrl3 = 194,
			gangrl3 = 195, cwfofr = 196, cwfohb = 197, cwfyfr1 = 198, cwfyfr2 = 199, cwmyhb2 = 200, dwfylc2 = 201, dwmylc2 = 202, omykara = 203, wmykara = 204,
			wfyburg = 205, vwmycd = 206, vhfypro = 207, omonood = 209, omoboat = 210, wfyclot = 211, vwmotr1 = 212, vwmotr2 = 213, vwfywai = 214, sbfori = 215,
			swfyri = 216, wmyclot = 217, sbfost = 218, sbfyri = 219, sbmocd = 220, sbmori = 221, sbmost = 222, shmycr = 223, sofori = 224, sofost = 225,
			sofyst = 226, somobu = 227, somori = 228, somost = 229, swmotr5 = 230, swfori = 231, swfost = 232, swfyst = 233, swmocd = 234, swmori = 235,
			swmost = 236, shfypro = 237, sbfypro = 238, swmotr4 = 239, swmyri = 240, smyst = 241, smyst2 = 242, sfypro = 243, vbfyst2 = 244, vbfypro = 245,
			vhfyst3 = 246, bikera = 247, bikerb = 248, bmypimp = 249, swmycr = 250, wfylg = 251, wmyva2 = 252, bmosec = 253, bikdrug = 254, wmych = 255,
			sbfystr = 256, swfystr = 257, heck1 = 258, heck2 = 259, bmycon = 260, wmycd1 = 261, bmocd = 262, vwfywa2 = 263, wmoice = 264, laemt1 = 274,
			lvemt1 = 275, sfemt1 = 276, lafd1 = 277, lvfd1 = 278, sffd1 = 279, lapd1 = 280, sfpd1 = 281, lvpd1 = 282, csher = 283, lapdm1 = 284,
			swat = 285, fbi = 286, army = 287, dsher = 288, rose = 290, paul = 291, cesar = 292, ogloc = 293, wuzimu = 294, torino = 295, jizzy = 296, maddogg = 297,
			cat = 298, ryder2 = 300, ryder3 = 301, emmet = 302, andre = 303, kendl = 304, jethro = 305, zero = 306, tbone = 307, sindaco = 308, janitor = 309,
			bbthin = 310, smokev = 311, psycho = 312
		}

			function loadMod ( model )
				local tab,data
				tab = weaponMods
				data = validVehicleModels
				tab[model] = data[model]
			end
			
			--------------------------------------------------
			
			-- Weapons
			for weapon,_ in pairs ( validVehicleModels ) do
				checkMod ( weapon )
			end
			
			if reload then
				xmlSaveFile ( meta )
				xmlUnloadFile ( meta )
				
				--outputDebugString ( "New mods saved. Restarting resource.." )
				restartResource ( resource )
				
				return true
			end
			
			return true
		end, 100, 1 )
		
		return true
	end
	modLoaderOn ()



	addEventHandler ( "onResourceStop", resourceRoot, function ( )
		if not meta then meta = xmlLoadFile ( "meta.xml" ) end
		xmlSaveFile ( meta )
		xmlUnloadFile ( meta )
	end )



	_restartResource = restartResource
	function restartResource ( )
		if hasObjectPermissionTo ( resource, "function.restartResource", true ) then
			if not meta then meta = xmlLoadFile ( "meta.xml" ) end
			xmlSaveFile ( meta )
			xmlUnloadFile ( meta )
			
			setTimer ( function ( )
				_restartResource ( resource )
			end, 1000, 1 )
			
			return true
		end
		
		--outputDebugString ( "ModLoader has no permission to restart the resource! Instead, do it manually or add this resource to the ACL." )
		return false
	end



	addEvent ( "PUNKSkinsRequisitarModelos", true )
	addEventHandler ( "PUNKSkinsRequisitarModelos", root, function ( )
		--outputDebugString ( "modloader server: Player "..getPlayerName(source).." requested replacing" )
		triggerClientEvent ( source, "PUNKSkinsCarregarModelos", source, weaponMods )
	end )
end

if salvar then
	function carregar (_, _,jogador)
		if not jogador then jogador = source end
	local conta = getPlayerAccount (jogador)
		if isGuestAccount (conta) == false then
			if getAccountData (conta, "PUNKSkins") then
			local modelo = getAccountData (conta, "PUNKSkins")
			setElementModel (jogador, modelo)
			end
		end
	jogador = nil
	end
	addEventHandler ("onPlayerLogin", getRootElement(), carregar)

	function salvamento (_, _, _, jogador)
		if not jogador then jogador = source end
	local conta = getPlayerAccount (jogador)
		if isGuestAccount (conta) == false then
		local modelo = getElementModel(jogador)
			--if type (modelo) == "string" then
			setAccountData (conta, "PUNKSkins", modelo)
			--end
		end
	jogador = nil
	end
	addEventHandler ("onPlayerQuit", getRootElement(), salvamento)
	
	addEventHandler ("onResourceStop", getResourceRootElement(getThisResource()), function ()
	local j = getElementsByType ("player")
		for i=1, #j do
		salvamento (_,_,_, j[i])
		end
	end)
	
	--[[
	addCommandHandler ("salvar", function (jogador)
	salvamento (_, _, _,jogador)
	end)
	
	addCommandHandler ("carregar", function (jogador)
	carregar (_, _, jogador)
	end)
	]]
	
end

	if comandos and comandos.setar then
		addCommandHandler (comandos.setar, function (...)
		local admin = arg[1]
		local conta = getPlayerAccount (admin)
			if isGuestAccount (conta) == false then
			local cc = getAccountName (conta)
				if isObjectInACLGroup ("user."..cc, aclGetGroup ("Admin")) then
				local comando = arg[2]
				local jogador = encontrarJogador (arg[3])
				id = arg[4]
				local a = {unpack(arg)}
					for i=5, #a do
					id = id.." "..a[i]
					end
					if isElement(jogador) then
						if tonumber (id) then
						_setElementModel (jogador, tonumber(id))
						else
						setElementModel (jogador, id)
						end
					end
				end
			end
			
		end)
	end
	
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

--Inicio
function inicializacoes ()
local jogador = source
	if salvar == true then
	carregar(_, _, jogador)
	end
end
addEvent ("PUNKSkinsInicializacoes", true)
addEventHandler ("PUNKSkinsInicializacoes", getRootElement(), inicializacoes)

	function inicio (jogador)
		if PUNKSTUDIOSkoasd9jaindsaj ~= sim then return end
		if eventName then jogador = source end
		if table.contain (jogadoresProntos, jogador) then
		triggerClientEvent (jogador, "PUNKSkinsRecebeu", jogador, dados)
		else
		local conta = getPlayerAccount (jogador)
		local j = jogador
			local str = conta
			temporizador[str] = setTimer (function ()
				if isElement (j) then
					if table.contain (jogadoresProntos, j) then
					triggerClientEvent (j, "PUNKSkinsRecebeu", j, dados)
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
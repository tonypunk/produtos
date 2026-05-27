
--Eventos
addEvent ("PUNKCapacetesCarregar", true)

function core ()

--Shared
function shared ()

function cancelarAcoes ()
cancelEvent ()
end

function table.contain (tabela, item)
	for index, value in ipairs(tabela) do
		if value == item then
		return true
		end
	end
	return false
end

end
shared ()

--Client
if localPlayer then

--Loja
function shopIni ()
addEvent ("PUNKCapacetesLoja", true)

local capacetes = exports.PUNKCapacetes:getData()
aberta = false
preco = {}
counter = 0
	for nome, tabela in pairs (capacetes) do
	counter = counter + 1
	preco[nome] = 100 * counter
	end

	function chegou (estado)
		if estado == true then
			if aberta ~= true then
			loja ()
			end
		else
			if aberta == true then
			loja ()
			end
		end
	end
	addEventHandler ("PUNKCapacetesLoja", getRootElement(), chegou)

	function loja ()
		if exports.menu:checar() == true then return end
		if aberta ~= true then
			if isChatVisible () then
			showChat (false)
			visivel = true
			end
		--objetos = exports.PUNKCapacetes:getPedHelmets ()
			if not objetos then objetos = {} end
			if exports.PUNKCapacetes:getPedHelmet (localPlayer) then
			local capacete, viseira = exports.PUNKCapacetes:getPedHelmet (localPlayer)
				if isElement (capacete) then
					for i=1, 10 do
						if getElementDimension (localPlayer) ~= i then
							setElementDimension (capacete, i)
						break
						end
					end
				end
			end
		playNativeSound ("confirm")
		aberta = true
		destroyNativeUI ()
		createNativeUI("Capacetes", "Pressione 'enter' para comprar",  false, tocolor(0,0,0), tocolor(255,255,255), tocolor(255, 255, 255), "left", false ,10,"left")
		counter = 0
			for nome, _ in pairs (capacetes) do
			icone = false
				if counter == 0 then
				counter = counter + 1
					--if table.contain (objetos, nome) then
					--icone = "accept4"
					--end
				else
					--if table.contain (objetos, nome) then
					--icone = "accept3"
					--end
				end
			addNativeButton(nome, tocolor (255,255,255), icone, "$"..preco[nome])
			end
		--Setup
		criarObjeto ()
		--toggleAllControls (false, true, false)
		--Infobox
			if not firstOpen then
			firstOpen = true
				setTimer (function ()
				local tab = {
				"Esta é uma loja de capacetes",
				"para se proteger de acidentes",
				}
				createHeadsupMessage (tab, "right")
				applyHair (localPlayer, true)
				end, 1000, 1)
			end
		addEventHandler ("onClientAcceptButton", getRootElement(), comprar)
		addEventHandler ("onClientChangeButton", getRootElement(), mudar)
		addEventHandler ("onClientKey", root, digitar)
		else
			if visivel then
			showChat (true)
			visivel = nil
			end
			if exports.PUNKCapacetes:getPedHelmet (localPlayer) then
			local capacete, viseira = exports.PUNKCapacetes:getPedHelmet (localPlayer)
				if isElement (capacete) and getElementDimension (localPlayer) ~= getElementDimension (capacete) then
				setElementDimension (capacete, getElementDimension (localPlayer))
				end
			end
		--Eventos
		playNativeSound ("return")
		aberta = false
		applyHair (localPlayer)
			if isElement (objeto) then destroyElement (objeto) end
		destroyNativeUI ()
		removeEventHandler ("onClientAcceptButton", getRootElement(), comprar)
		removeEventHandler ("onClientChangeButton", getRootElement(), mudar)
		removeEventHandler ("onClientKey", root, digitar)
		end
	end

	addEventHandler ("onClientResourceStop", getResourceRootElement (getThisResource()), function ()
		if aberta == true then
		playNativeSound ("return")
		destroyNativeUI ()
		toggleAllControls (true, true, false)
		end
		if visivel then
		showChat (true)
		end
	end)

	function digitar (botao, estado)
		if aberta == true then
			if estado then
				if botao == "enter" then
					if aberta ~= true then
					cancelEvent ()
					--Infobox
					local tab = {
						"Pressione 'esc' ou 'backspace' para retornar",
						}
					createHeadsupMessage (tab, "right")
					loja ()
					end
				elseif botao == "escape" or botao == "backspace" then
					if aberta == true then
					cancelEvent ()
					loja ()
					end
				end
			end
		end
	end

	function check (id)
	local t = getNativeButtons ()
		for i=1, #t do
			--if table.contain (objetos, t[i].text) then
				--if id == i then
				--setNativeButtonIcon (i, "accept4")
				--else
				--setNativeButtonIcon (i, "accept3")
				--end
			--else
			setNativeButtonIcon (i, false)
			--end
		end
	end

	function mudar (id, value, mudou)
		if mudou == true then
		check (id)
			for nome, valor in pairs (capacetes) do
				if nome == value then
					if isElement (objeto) then destroyElement (objeto) end
				objeto = exports.PUNKCapacetes:createHelmet (nome, localPlayer)
				break
				end
			end
		end
	end
	
	function comprar (id, text)
	local nome = capacetes[text]
		if getPlayerMoney (localPlayer) >= preco[nome] then
	local c = capacetes[text]
		local tab = {
		"Você adquiriu um capacete:",
		nome,
		"Preço: $"..preco[nome],
		}
		createHeadsupMessage (tab, "right")
		triggerServerEvent ("PUNKCapacetesComprar", localPlayer, nome, preco[nome])
		setNativeButtonIcon(id,"accept4")
			if isElement (objeto) then
			destroyElement (objeto)
			end
		setPedControlState (localPlayer, "enter_exit", true)
		setPedControlState (localPlayer, "enter_exit", false)
		else
			local tab = {
			"Saldo insuficiente $"..preco[nome],
			}
		createHeadsupMessage (tab, "right")
		end
	end

	function criarObjeto ()
	local x,y,z = getElementPosition (localPlayer)
	n = nil
		for item, _ in pairs (capacetes) do
		n = item
		break
		end
	local nome = n
	objeto = exports.PUNKCapacetes:createHelmet (nome, localPlayer)
	end

	function checar ()
	return aberta or false
	end

end
shopIni ()

end

--Server
if not localPlayer then

--Loja
function shopIni ()

local marker = createMarker (1271.755, -1548.653, 12.75, "cylinder", 1, 170,0,0,70)

	function movimento (jogador, dimensao)
		if getElementType (jogador) == "player" then
			if eventName == "onMarkerHit" then
			addEventHandler ("onPedHelmetStartUse", jogador, cancelarAcoes)
			addEventHandler ("onPedHelmetVisor", jogador, cancelarAcoes)
			triggerClientEvent (jogador, "PUNKCapacetesLoja", jogador, true)
			setElementVisibleTo (source, jogador, false)
			setElementVisibleTo (jogador, source, false)
			
			else
			removeEventHandler ("onPedHelmetStartUse", jogador, cancelarAcoes)
			removeEventHandler ("onPedHelmetVisor", jogador, cancelarAcoes)
			triggerClientEvent (jogador, "PUNKCapacetesLoja", jogador, false)
			end
		end
	end
	addEventHandler ("onMarkerHit", marker, movimento)
	addEventHandler ("onMarkerLeave", marker, movimento)
	
	function comprar (capacete, p)
	local jogador = source
		if getPlayerMoney (jogador) >= p then
		takePlayerMoney (jogador, p)
		removeEventHandler ("onPedHelmetStartUse", jogador, cancelarAcoes)
		removeEventHandler ("onPedHelmetVisor", jogador, cancelarAcoes)
		exports.PUNKCapacetes:createHelmet (capacete, jogador)
		end
	end
	addEvent ("PUNKCapacetesComprar", true)
	addEventHandler ("PUNKCapacetesComprar", getRootElement (), comprar)

end
shopIni ()

end

--notify
createHeadsupMessage = configuracoes.createHeadsupMessage
createNativeUI = configuracoes.createNativeUI
destroyNativeUI = configuracoes.destroyNativeUI
addNativeButton = configuracoes.addNativeButton
playNativeSound = configuracoes.playNativeSound
setNativeButtonIcon = configuracoes.setNativeButtonIcon
getNativeButtons = configuracoes.getNativeButtons

--Hair
applyHair = configuracoes.applyHair
	
end
addEventHandler ("onClientResourceStart", resourceRoot, core)
addEventHandler ("onResourceStart", resourceRoot, core)

--bone
attach = configuracoes.attach
detach = configuracoes.detach
getDetails = configuracoes.getDetails
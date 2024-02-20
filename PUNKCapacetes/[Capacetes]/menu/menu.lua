
--Eventos
addEvent ("PUNKCapacetesCarregar", true)

function core ()

--Shared
function shared ()

--shader
dadosSalvos = {}

function getFilesInResourceFolder(path, res)
	if (triggerServerEvent) then error('The @getFilesInResourceFolder function should only be used on server-side', 2) end
	
	if not (type(path) == 'string') then
		error("@getFilesInResourceFolder argument #1. Expected a 'string', got '"..type(path).."'", 2)
	end
	
	if not (tostring(path):find('/$')) then
		error("@getFilesInResourceFolder argument #1. The path must contain '/' at the end to make sure it is a directory.", 2)
	end
	
	res = (res == nil) and getThisResource() or res
	if not (type(res) == 'userdata' and getUserdataType(res) == 'resource-data') then  
		error("@getFilesInResourceFolder argument #2. Expected a 'resource-data', got '"..(type(res) == 'userdata' and getUserdataType(res) or tostring(res)).."' (type: "..type(res)..")", 2)
	end
	
	local files = {}
	local files_onlyname = {}
	local thisResource = res == getThisResource() and res or false
	local charsTypes = '%.%_%w%d%|%\%<%>%:%(%)%&%;%#%?%*'
	local resourceName = getResourceName(res)
	local Meta = xmlLoadFile(':'..resourceName ..'/meta.xml')
	if not Meta then error("(@getFilesInResourceFolder) Could not get the 'meta.xml' for the resource '"..resourceName.."'", 2) end
	for _, nod in ipairs(xmlNodeGetChildren(Meta)) do
		local srcAttribute = xmlNodeGetAttribute(nod, 'src')
		if (srcAttribute) then
			local onlyFileName = tostring(srcAttribute:match('/(['..charsTypes..']+%.['..charsTypes..']+)') or srcAttribute)
			local theFile = fileOpen(thisResource and srcAttribute or ':'..resourceName..'/'..srcAttribute)
			if theFile then
				if (path == '/') then
					table.insert(files, srcAttribute)
					table.insert(files_onlyname, onlyFileName)
				else
					local filePath = fileGetPath(theFile)
					filePath = filePath:gsub('/['..charsTypes..']+%.['..charsTypes..']+', '/'):gsub(':'..resourceName..'/', '')
					if (filePath == tostring(path)) then
						table.insert(files, srcAttribute)
						table.insert(files_onlyname, onlyFileName)
					end
				end
				fileClose(theFile)
			else
				outputDebugString("(@getFilesInResourceFolder) Could not check file '"..onlyFileName.."' from resource '"..nomeResource.."'", 2)
			end
		end
	end
	xmlUnloadFile(Meta)
	return #files > 0 and files or false, #files_onlyname > 0 and files_onlyname or false
end

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

function isElementMoving (theElement )
   if isElement ( theElement ) then                                   -- First check if the given argument is an element
      return Vector3( getElementVelocity( theElement ) ).length ~= 0
   end
   return false
end

end
shared ()

--Client
if localPlayer then

--Informações
function headsupIni ()

	function using  (capa)
		if source == localPlayer then
		local keys = getBoundKeys ("capacete")
			for keyName, state in pairs(keys) do
			botao = keyName
			break
			end
		local capa = exports.PUNKCapacetes:getPedHelmet (localPlayer)
		local d = getDetails (capa)
			if d[3] ~= 6 then
				tab = {
				"Pressione '"..botao.."' para usar o capacete",
				}
			else
				tab = {
				"Pressione '"..botao.."' para segurar",
				" o capacete",
				}
			end
		
		local t = exports.PUNKCapacetes:getData (capa).aparencia["aberto"]
			if t then
				setTimer (function ()
				local keys = getBoundKeys ("viseira")
					for keyName, state in pairs(keys) do
					botao = keyName
					break
					end
					tab = {
					"Pressione '"..botao.."' para abrir/fechar",
					}
				createHeadsupMessage (tab)
				end, 3000, 1)
			end
		end
	end
	addEventHandler ("onPedHelmetUse", getRootElement(), using)

	function loading (tab, avisar)
	objetos = tab
		if avisar == true then
		local keys = getBoundKeys ("capacete")
			if keys then
				for keyName, state in pairs(keys) do
				botao = keyName
				break
				end
				tab = {
				"Digite /"..comandos.menu.." para",
				"acessar seus capacetes",
				}
			createHeadsupMessage (tab)
			end
		end
	end
	addEventHandler ("PUNKCapacetesCarregar", getRootElement(), loading)
	
	function pickupHit ()
	local keys = getBoundKeys ("capacete")
			for keyName, state in pairs(keys) do
			botao = keyName
			break
			end
			tab = {
			"Pressione '"..botao.."' para",
			"coletar o capacete",
			}
		createHeadsupMessage (tab)
	end
	addEvent ("onHelmetPickupHit", true)
	addEventHandler ("onHelmetPickupHit", getRootElement(), pickupHit)
	
end
headsupIni ()

--Menu
function menuIni ()

	function digitou (botao, estado)
		if menu == true then
			if botao == "esc" or botao == "backspace" then
				if estado then
				cancelEvent ()
				abrirMenu ()
				end
			end
		end
	end
	addEventHandler ("onClientKey", root, digitou)

	function guardouCapacete ()
	local keys = getBoundKeys ("capacete")
		for keyName, state in pairs(keys) do
		botao = keyName
		break
		end
		local tab = {
		"Digite /"..comandos.menu.." para",
		"acessar seus capacetes",
		}
	createHeadsupMessage (tab)
	end
	addEvent ("onPedHelmetStore", true)
	addEventHandler ("onPedHelmetStore", getRootElement(), guardouCapacete)
		
	menu = false
	function abrirMenu ()
		if exports.loja:checar() == true then return end
		if menu ~= true then
		local tempTab = {}
			if objetos and #objetos > 0 then
				if exports.PUNKCapacetes:getPedHelmet (localPlayer) then
				local capacete, viseira = exports.PUNKCapacetes:getPedHelmet (localPlayer)
					if isElement (capacete) then
					found = exports.PUNKCapacetes:getData (capacete).nome
						for i=1, 10 do
							if getElementDimension (localPlayer) ~= i then
							setElementDimension (capacete, i)
							break
							end
						end
					end
				end
				if isChatVisible () then
				showChat (false)
				visivel = true
				end
			playNativeSound ("confirm")
			menu = true
			destroyNativeUI ()
			createNativeUI("Capacetes", "Pressione 'enter' para equipar",  false, tocolor(0,0,0), tocolor(255,255,255), tocolor(255, 255, 255), "left", false ,10,"left")
				
				for i=1, #objetos do
				local nome = objetos[i]
					--if found and nome == found then
					--found = nil
					--outputDebugString ("Found")
					--else
					--if nome ~= found then
					--if found and nome == found then found = nil else
					--i = i + 1
					icone = false
						--if table.contain (meus, nome) then
						icone = "accept4"
						--end
					table.insert (tempTab, nome)
					addNativeButton(nome, tocolor (255,255,255), nil, nil)
					--end
				end
				--Eventos
				addEventHandler ("onClientChangeButton", getRootElement(), trocar)
				addEventHandler ("onClientAcceptButton", getRootElement(), escolher)
				--Setup
					if isElement (objeto) then destroyElement (objeto) end
				objeto = exports.PUNKCapacetes:createHelmet (tempTab[1], localPlayer)
				atual = tempTab[1]
				toggleAllControls (false, true, false)
				--Infobox
					if not firstOpen then
					firstOpen = true
					local tab = {
						"Estes são seus capacetes",
						"Pressione 'enter' para equipar",
						}
					--
					createHeadsupMessage (tab, "right")
					end
			else
				--Infobox
				local tab = {
					"Você não possui capacetes",
					}
					--
				createHeadsupMessage (tab, "right")
			end
		else
		--Eventos
		removeEventHandler ("onClientChangeButton", getRootElement(), trocar)
		removeEventHandler ("onClientAcceptButton", getRootElement(), escolher)
		playNativeSound ("return")
		menu = false
			if isElement (objeto) then
			destroyElement (objeto)
			end
			if isTimer (timerCapa) then killTimer (timerCapa) end
		destroyNativeUI ()
		toggleAllControls (true, true, false)
			if exports.PUNKCapacetes:getPedHelmet (localPlayer) then
			local capacete, viseira = exports.PUNKCapacetes:getPedHelmet (localPlayer)
				if isElement (capacete) then
				setElementDimension (capacete, getElementDimension (localPlayer))
				end
			end
			if visivel then
			showChat (true)
			visivel = nil
			end
		end
	end

	function trocar (id, value, mudou)
		if mudou == true then
		local nome = value
		atual = nome
			if isElement (objeto) then destroyElement (objeto) end
		objeto = exports.PUNKCapacetes:createHelmet (nome,localPlayer)
		else
		
		end
	end
	
	function escolher (id, text)
	local tab = {
	"Você equipou seu",
	atual,
	}
	createHeadsupMessage (tab)
	destroyElement (objeto)
		if isTimer (timerCapa) then killTimer (timerCapa) end
	--toggleAllControls (true, true, false)
	triggerServerEvent ("PUNKCapaceteMenuCriar", localPlayer, atual)
	abrirMenu ()
	removeEventHandler ("onClientAcceptButton", getRootElement(), escolher)
	end
		
	addEventHandler ("onClientResourceStop", getResourceRootElement (getThisResource()), function ()
		if menu == true then
		abrirMenu ()
		end
		if visivel then
		showChat (true)
		end
	end)

	if comandos.menu then
	addCommandHandler (comandos.menu, abrirMenu)
	end

end
menuIni ()

end

--Server
if not localPlayer then

--Player setup
function inicio (mod)
	if mod ~= getThisResource () then return end
local jogador = source
carregar (jogador)
end
addEventHandler ("onPlayerResourceStart", getRootElement (), inicio)

--Armazenagem (salvar/carregar)
function dataIni ()

	function logar ()
	local jogador = source
	local conta = getPlayerAccount (jogador)
	carregar (jogador)
	end
	addEventHandler ("onPlayerLogin", getRootElement(), logar)

	function carregar (jogador)
	local conta = getPlayerAccount (jogador)
	dadosSalvos[jogador] = {}
		if getAccountData (conta, "PUNKCapacete") then
		local t = fromJSON (getAccountData (conta, "PUNKCapacete"))
			if t and #t > 0 then
			dadosSalvos[jogador] = t
			triggerClientEvent (jogador, "PUNKCapacetesCarregar", jogador, dadosSalvos[jogador], true)
			end
		end
	end

	function salvar (jogador)
	local capa = exports.PUNKCapacetes:getPedHelmet (jogador)
		if capa and isElement (capa) then
			if not dadosSalvos[jogador] then dadosSalvos[jogador] = {} end
		end
		if dadosSalvos[jogador] then
		local conta = getPlayerAccount (jogador)
			if isGuestAccount (conta) == false then
			setAccountData (conta, "PUNKCapacete", toJSON (dadosSalvos[jogador]))
			end
		end
	end

	function quitar ()
	local jogador = source
	salvar (jogador)
	end
	addEventHandler ("onPlayerQuit", getRootElement(), quitar)

	function parar ()
	local j = getElementsByType ("player")
		for i=1, #j do
		local jogador = j[i]
		salvar (jogador)
		end
	end
	addEventHandler ("onResourceStop", getResourceRootElement (getThisResource ()), parar)

	function remover (jogador, capa)
	local d = exports.PUNKCapacetes:getData (capa)
	local e = dadosSalvos[jogador]
		for i=1, #e do
			if e[i] == d.nome then
			table.remove (e, i)
			triggerClientEvent (jogador, "PUNKCapacetesCarregar", jogador, dadosSalvos[jogador])
			break
			end
		end
	end

	function receber (capa)
	local dono = source
		if not dadosSalvos[dono] then dadosSalvos[dono] = {} end
	table.insert (dadosSalvos[dono], exports.PUNKCapacetes:getData (capa).nome or capa)
	triggerClientEvent (dono, "PUNKCapacetesCarregar", dono, dadosSalvos[dono])
	end
	addEventHandler ("onPedHelmetRecieve", getRootElement(), receber)
	
	function receberV (capa, lugar, jogador)
		if isElement (jogador) then
		remover (jogador, capa)
		end
	end
	addEventHandler ("onVehicleHelmetRecieve", getRootElement(), receberV)
	
	
	addEventHandler ("onPedHelmetDrop", getRootElement(), function (capa)
	local jogador = source
	remover (jogador, capa)
	end)
	
	function checar ()
	return menu or false
	end

end
dataIni ()

--Menu
function menuIni ()

	function criar (capacete)
	local jogador = source
		if isElement (exports.PUNKCapacetes:getPedHelmet (jogador)) then destroyElement (exports.PUNKCapacetes:getPedHelmet (jogador)) end
	exports.PUNKCapacetes:createHelmet (capacete, jogador)
	local e = dadosSalvos[jogador]
		for i=1, #e do
			if e[i] == capacete then
			table.remove (e, i)
			triggerClientEvent (jogador, "PUNKCapacetesCarregar", jogador, dadosSalvos[jogador])
			break
			end
		end
	end
	addEvent ("PUNKCapaceteMenuCriar", true)
	addEventHandler ("PUNKCapaceteMenuCriar", getRootElement (), criar)

end
menuIni()


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
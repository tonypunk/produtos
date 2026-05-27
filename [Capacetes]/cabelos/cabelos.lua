function core ()

--Shared
function shared ()

--shader
	dadosShader = [[
		texture tex;
		technique replace {
			pass P0 {
				Texture[0] = tex;
			}
		}
	]]

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

--Cabelos
function hairIni ()

	--Cabelo
	--Para usar os cabelos é necessario deixá-los invisiveis no txd da skin,
	--em seguida adicionar a imagem .png do cabelo à pasta cabelos e ao meta.xml
	--Os arquivos dos cabelos devem estar nomeados de acordo com seu nome dentro do .txd
	
	function hairSetup ()
	shaders = {}
		for i=1, #cabelos do
		local shader = dxCreateShader(dadosShader, 1, 0, false, "ped")
		local cabelo = dxCreateTexture (cabelos[i], "dxt3", false)
		dxSetShaderValue(shader, "tex", cabelo)
		table.insert (shaders, shader)
		local shader = nil
		local cabelo = nil
		end
		
		function applyHair (jogador, estado)
			if not estado then
			local c = exports.PUNKCapacetes:getPedHelmet (jogador)
				if isElement (c) then
					if getDetails (c) then
						if getDetails (c)[3] == 6 then
						estado = true
						end
					end
				end
			end
			
			for i=1, #cabelos do
			local cabelo = string.gsub (cabelos[i], "cabelos/", "")
			local textura = string.gsub (cabelo, ".png", "")
				for k=1, #shaders do
				local c = exports.PUNKCapacetes:getPedHelmet (jogador)
					if estado == true then
					engineRemoveShaderFromWorldTexture(shaders[k], textura, jogador, false)
					else
					engineApplyShaderToWorldTexture(shaders[k], textura, jogador, false)
					end
				end
			end
		estado = nil
		end
		
		addEventHandler ("onClientElementStreamIn", getRootElement(), function ()
			if getElementType (source) == "player" then
			applyHair (source)
			end
		end)
		
		local j = getElementsByType ("player")
		for i=1, #j do
		local jogador = j[i]
		applyHair (jogador)
		end
	
		function vestir  (capa)
		local jogador = source
		applyHair (jogador)
		end
		addEventHandler ("onPedHelmetUse", getRootElement(), vestir)
	
	end
	
	function carregarCabelos (c)
	cabelos = c
	hairSetup ()
	end
	addEvent ("PUNKCapacetesLojaCabelos", true)
	addEventHandler ("PUNKCapacetesLojaCabelos", getRootElement(), carregarCabelos)

end
hairIni ()

end

--Server
if not localPlayer then

--Cabelos
local files, cabelos = getFilesInResourceFolder("cabelos/", getThisResource ())
function inicio (mod)
	if mod ~= getThisResource () then return end
local jogador = source
triggerClientEvent (jogador, "PUNKCapacetesLojaCabelos", jogador, files)
end
addEventHandler ("onPlayerResourceStart", getRootElement (), inicio)

end

end
addEventHandler ("onClientResourceStart", resourceRoot, core)
addEventHandler ("onResourceStart", resourceRoot, core)

--bone
attach = configuracoes.attach
detach = configuracoes.detach
getDetails = configuracoes.getDetails
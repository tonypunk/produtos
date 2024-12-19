--[[
A criação de elementos segue o mesmo critério padrão

Veiculos:
createVehicle (id, x,y,z, rotacao, skin, interior, dimensao, time)
exemplo: createVehicle (1210, 1242.11, 1245.2, 1545.5)

Você só precisa utilizar um nome
createVehicle ("Stinger", 1242.11, 1245.2, 1545.5)

Ou um ID diferente dos que já existem
createVehicle (1000, 1242.11, 1245.2, 1545.5)

Para utilizar elementos de nosso sistema em seus mods cole o seguinte código no topo dos scripts
--Setup

_createVehicle = createVehicle --não tocar
_getElementModel = getElementModel --não tocar
_setElementModel = setElementModel --não tocar

--Funções
function isNativeVehicle (id)
	for i=400, 611 do
		if id == i then
		return true
		end
	end
end

function getVehicleData (...)
return exports['PUNK+Veiculos']:getData ()
end

_createVehicle = createVehicle
function createVehicle (...)
	if isNativeVehicle (tonumber (arg[1])) then return _createVehicle (unpack (arg)) end
return exports['PUNK+Veiculos']:createVehicle (unpack (arg))
end
Vehicle = createVehicle

function getElementModel (...)
	if getElementType (arg[1]) == 'vehicle' then return exports['PUNK+Veiculos']:getVehicleModel (arg[1]) end
return _getElementModel (unpack (arg))
end

function setElementModel (...)
	if getElementType (arg[1]) == 'vehicle' then return exports['PUNK+Veiculos']:setVehicleModel (unpack(arg)) end
return _setElementModel (unpack (arg))
end

_engineImportTXD = engineImportTXD
function engineImportTXD (...)
	if getVehicleData (arg[2]) then return exports['PUNK+Veiculos']:engineImportVehicleTXD (unpack(arg)) end
return _engineImportTXD (unpack(arg))
end

_engineReplaceModel = engineReplaceModel
function engineReplaceModel (...)
	if getVehicleData (arg[2]) then return exports['PUNK+Veiculos']:engineReplaceVehicleModel (unpack(arg)) end
return _engineReplaceModel (unpack(arg))
end

_engineFreeModel = engineFreeModel
function engineFreeModel (...)
	if getVehicleData (arg[1]) then return exports['PUNK+Veiculos']:engineFreeVehicleModel (unpack(arg)) end
return _engineFreeModel (unpack (arg))
end

_engineRestoreModel = engineRestoreModel
function engineRestoreModel (...)
	if getVehicleData (arg[1]) then return exports['PUNK+Veiculos']:engineRestoreVehicleModel (unpack(arg)) end
return _engineRestoreModel (unpack (arg))
end

_getOriginalHandling = getOriginalHandling
function getOriginalHandling (...)
	if isNativeVehicle (arg[1]) then return _getOriginalHandling (unpack (arg)) end
return exports['PUNK+Veiculos']:getOriginalHandling (unpack(arg))
end

local mapa = 'MAPA.map' --Nome do arquivo .map
if mapa and fileExists (mapa) then
local mapFile = xmlLoadFile(mapa)
local objects = xmlNodeGetChildren(mapFile)
	for i,node in ipairs(objects) do
		local nodeName = xmlNodeGetName(node)
		if (nodeName == "vehicle") then
		local model = xmlNodeGetAttribute(node, "model")
			if getVehicleData(model) or getVehicleData(tonumber (model)) then
			local posX = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "posX") ) )
			local posY = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "posY") ) )
			local posZ = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "posZ") ) )
			local rotX = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "rotX") ) )
			local rotY = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "rotY") ) )
			local rotZ = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "rotZ") ) )
				if localPlayer then
				veiculo = createVehicle (model, posX, posY,posZ, rotX, rotY, rotZ)
				else
				veiculo = createVehicle (model, posX, posY,posZ, rotX, rotY, rotZ)
				end
			end
		end
	end
end

]]
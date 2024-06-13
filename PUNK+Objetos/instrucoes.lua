--[[
A criação de elementos segue o mesmo critério padrão

Objetos:
createObject (id, x,y,z, rotacao, skin, interior, dimensao, time)
exemplo: createObject (1210, 1242.11, 1245.2, 1545.5)

A diferença é que os elementos novos são referidos pelo NOME em vez de ID
createObject ("Skateboard", 1242.11, 1245.2, 1545.5)

Para utilizar elementos de nosso sistema em seus mods cole o seguinte código no topo dos scripts
--Setup

_createObject = createObject --não tocar
_getElementModel = getElementModel --não tocar
_setElementModel = setElementModel --não tocar

--Funções

function getObjectData (...)
return exports['PUNK+Objetos']:getData ()
end

function createObject (...)
	if getObjectData(arg[1]) then return exports['PUNK+Objetos']:createObject (unpack (arg)) end
return _createObject (unpack (arg))
end

function getElementModel (...)
	if getElementType (arg[1]) == 'object' then return exports['PUNK+Objetos']:getObjectModel (...) end
return _getElementModel (unpack (arg))
end

function setElementModel (...)
	if getElementType (arg[1]) == 'object' then return exports['PUNK+Objetos']:setObjectModel (unpack(arg)) end
return _setElementModel (unpack (arg))
end

_engineImportTXD = engineImportTXD
function engineImportTXD (...)
	if  getObjectData(arg[2]) then return exports['PUNK+Objetos']:engineImportObjectTXD (unpack(arg)) end
return _engineImportTXD (unpack(arg))
end

_engineReplaceModel = engineReplaceModel
function engineReplaceModel (...)
	if  getObjectData(arg[2]) then return exports['PUNK+Objetos']:engineReplaceObjectModel (unpack(arg)) end
return _engineReplaceModel (unpack(arg))
end

_engineFreeModel = engineFreeModel
function engineFreeModel (...)
	if getObjectData(arg[1]) then return exports['PUNK+Objetos']:engineFreeObjectModel (unpack(arg)) end
return _engineFreeModel (unpack (arg))
end

_engineRestoreModel = engineRestoreModel
function engineRestoreModel (...)
	if getObjectData(arg[1]) then return exports['PUNK+Objetos']:engineRestoreObjectModel (unpack(arg)) end
return _engineRestoreModel (unpack (arg))
end

local mapa = 'MAPA.map' --Nome do arquivo .map
if mapa and fileExists (mapa) then
local mapFile = xmlLoadFile(mapa)
local objects = xmlNodeGetChildren(mapFile)
	for i,node in ipairs(objects) do
		local nodeName = xmlNodeGetName(node)
		if (nodeName == "object") then
		local model = xmlNodeGetAttribute(node, "model")
			if getObjectData()[model] or getObjectData()[tonumber(model)] then
			local posX = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "posX") ) )
			local posY = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "posY") ) )
			local posZ = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "posZ") ) )
			local rotX = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "rotX") ) )
			local rotY = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "rotY") ) )
			local rotZ = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "rotZ") ) )
				if localPlayer then
				objeto = createObject (model, posX, posY,posZ, rotX, rotY, rotZ)
				else
				objeto = createObject (model, posX, posY,posZ, rotX, rotY, rotZ)
				end
				if isElement (objeto) then
				local ob = objeto
				local doublesided = xmlNodeGetAttribute(node, "doublesided")
					if (doublesided == "true") then
					setElementDoubleSided (ob, true)
					end
				local scale = xmlNodeGetAttribute(node, "scale")
					if scale and (scale ~= "1") then
						if tonumber (scale) then
						setObjectScale (ob, scale)
						else
						local sc =  (loadstring)('return '..scale)()
						setObjectScale (ob, unpack (sc))
						end
					end
				end
			end
		end
	end
end

]]
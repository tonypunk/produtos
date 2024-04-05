--[[
A criação de elementos segue o mesmo critério padrão

Objetos:
createObject (id, x,y,z, rotacao, skin, interior, dimensao, time)
exemplo: createObject (1210, 1242.11, 1245.2, 1545.5)

A diferença é que os elementos novos são referidos pelo NOME em vez de ID
createObject ("Skateboard", 1242.11, 1245.2, 1545.5)

Para utilizar elementos de nosso sistema em seus mods cole o seguinte código no topo dos scripts

--Setup
resource = "PUNK+Objetos" --nome da pasta deste mod

_createObject = createObject --não tocar
_getElementModel = getElementModel --não tocar
_setElementModel = setElementModel --não tocar

function getData ()
return exports[resource]:getData ()
end

--Funções
function createObject (...)
local ob = unpack (arg)
	if getData()[ob] then return exports[resource]:createObject (unpack (arg)) end
return _createObject (unpack (arg))
end

function getElementModel (...)
return exports[resource]:getObjectModel (...)
end

function setElementModel (...)
return exports[resource]:setObjectModel (unpack(arg))
end

local mapa = 'MAPA.map' --Nome do arquivo .map
if mapa and fileExists (mapa) then
local mapFile = xmlLoadFile(mapa)
local objects = xmlNodeGetChildren(mapFile)
	for i,node in ipairs(objects) do
		local nodeName = xmlNodeGetName(node)
		if (nodeName == "object") then
		local model = xmlNodeGetAttribute(node, "model")
			if getData()[model] or getData()[tonumber(model)] then
			local posX = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "posX") ) )
			local posY = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "posY") ) )
			local posZ = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "posZ") ) )
			local rotX = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "rotX") ) )
			local rotY = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "rotY") ) )
			local rotZ = tonumber( string.format("%.4f", xmlNodeGetAttribute(node, "rotZ") ) )
			local ob = createObject (model, posX, posY,posZ, rotX, rotY, rotZ)
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
]]
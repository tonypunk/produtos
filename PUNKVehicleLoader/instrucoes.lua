--[[
A criação de elementos segue o mesmo critério padrão

Veiculos:
createVehicle (id, x,y,z, rotacao, skin, interior, dimensao, time)
exemplo: createVehicle (1210, 1242.11, 1245.2, 1545.5)

A diferença é que os elementos novos são referidos pelo NOME em vez de ID
createVehicle ("Stinger", 1242.11, 1245.2, 1545.5)

Para utilizar elementos de nosso sistema em seus mods cole o seguinte código no topo dos scripts

--Setup
_createVehicle = createVehicle --não tocar
_getElementModel = getElementModel --não tocar
_setElementModel = setElementModel --não tocar

function createVehicle (...)
    if type (arg[1]) == "number" then return _createVehicle (unpack (arg)) end
return exports["PUNKVehicleLoader"]:createVehicle (unpack (arg))
end

function getElementModel (elemento)
	if getElementType (elemento) == "vehicle" then return exports["PUNKVehicleLoader"]:getVehicleModel (elemento) end
return _getElementModel (elemento)
end

function setElementModel (...)
	if getElementType (arg[2]) == "string" then return exports["PUNKVehicleLoader"]:setVehicleModel (unpack(arg)) end
return _setElementModel (unpack(arg))
end
]]
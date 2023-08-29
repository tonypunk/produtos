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

function createVehicle (...)
return exports["PUNK+Veiculos"]:createVehicle (unpack (arg))
end

function getElementModel (elemento)
	if getElementType (elemento) == "vehicle" then return exports["PUNK+Veiculos"]:getVehicleModel (elemento) end
return _getElementModel (elemento)
end

function setElementModel (...)
	if getElementType (arg[2]) == "string" then return exports["PUNK+Veiculos"]:setVehicleModel (unpack(arg)) end
return _setElementModel (unpack(arg))
end
]]
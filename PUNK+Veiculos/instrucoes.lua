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

function isNativeVehicle (id)
	for i=400, 611 do
		if arg[1] == i then
		return true
		end
	end
end

_createVehicle = createVehicle
function createVehicle (...)
	if isNativeVehicle (arg[1]) then return _createVehicle (unpack (arg)) end
return exports["PUNK+Veiculos"]:createVehicle (unpack (arg))
end
Vehicle = createVehicle

_getElementModel = getElementModel
function getElementModel (elemento)
	if getElementType (elemento) == "vehicle" then return exports["PUNK+Veiculos"]:getVehicleModel (elemento) end
return _getElementModel (elemento)
end

_setElementModel = setElementModel
function setElementModel (...)
	if isNativeVehicle (arg[1]) then return _setElementModel (unpack (arg)) end
return exports["PUNK+Veiculos"]:setVehicleModel (unpack(arg))
end

_engineImportTXD = engineImportTXD
function engineImportTXD (...)
	if isNativeVehicle (arg[1]) then return _engineImportTXD (unpack (arg)) end
return exports["PUNK+Veiculos"]:engineImportVehicleTXD (unpack(arg))
end

_engineReplaceModel = engineReplaceModel
function engineReplaceModel (...)
	if isNativeVehicle (arg[1]) then return _engineReplaceModel (unpack (arg)) end
return exports["PUNK+Veiculos"]:engineReplaceVehicleModel (unpack(arg))
end

_engineFreeModel = engineFreeModel
function engineFreeModel (...)
	if isNativeVehicle (arg[1]) then return _engineFreeModel (unpack (arg)) end
return exports["PUNK+Veiculos"]:engineFreeVehicleModel (unpack(arg))
end

_engineRestoreModel = engineRestoreModel
function engineRestoreModel (...)
	if isNativeVehicle (arg[1]) then return _engineRestoreModel (unpack (arg)) end
return exports["PUNK+Veiculos"]:engineRestoreVehicleModel (unpack(arg))
end

]]
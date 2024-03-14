--[[
A criação de elementos segue o mesmo critério padrão

Bonecos:
createPed (id, x,y,z, rotacao, skin, interior, dimensao, time)
exemplo: createPed (181, 1242.11, 1245.2, 1545.5)

A diferença é que os elementos novos são referidos pelo NOME em vez de ID
createPed ("Skatista", 1242.11, 1245.2, 1545.5)

Para utilizar elementos de nosso sistema em seus mods cole o seguinte código no topo dos scripts

--Setup
_spawnPlayer = spawnPlayer --não tocar
function spawnPlayer (...)
	for i=0, 312 do
		if arg[6] == i or tonumber (arg[6]) == i then
		return _spawnPlayer (unpack(arg))
		end
	end
return exports["PUNK+Skins"]:spawnPlayer (unpack (arg))
end

_createPed = createPed --não tocar
function createPed (...)
	for i=0, 312 do
		if arg[1] == i or tonumber (arg[1]) == i then
		return _createPed (unpack (arg))
		end
	end
return exports["PUNK+Skins"]:createPed (unpack (arg))
end

_getElementModel = getElementModel --não tocar
function getElementModel (elemento)
	if getElementType (elemento) == "player" or getElementType (elemento) == "ped" then return exports["PUNK+Skins"]:getElementModel (elemento) end
return _getElementModel (elemento)
end

_setElementModel = setElementModel --não tocar
function setElementModel (...)
	if getElementType (arg[1]) == "ped" or getElementType (arg[1]) == "player" then
		for i=0, 312 do
			if arg[2] == i or tonumber (arg[2]) == i then
			return _setElementModel (unpack(arg))
			end
		end
	return exports["PUNK+Skins"]:setElementModel (unpack(arg))
	end
return _setElementModel (unpack(arg))
end
]]
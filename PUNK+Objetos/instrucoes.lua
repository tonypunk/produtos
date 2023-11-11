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

--Funções
function createObject (...)
return exports[resource]:createObject (unpack (arg))
end

function getElementModel (...)
return exports[resource]:getObjectModel (...)
end

function setElementModel (...)
return exports[resource]:setObjectModel (unpack(arg)
end
]]
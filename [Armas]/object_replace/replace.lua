if not localPlayer then


local function buildWeaponTableFromMeta()
    local meta = xmlLoadFile("meta.xml")
    if not meta then
        outputDebugString("[WEAPON] SERVER: Falha ao carregar meta.xml", 1)
        return {}
    end

    local objects = {}

    for _, node in ipairs(xmlNodeGetChildren(meta)) do
        if xmlNodeGetName(node) == "file" then
            local src = xmlNodeGetAttribute(node, "src")
            if src and src:find("^files/") then
                local basePath = src:gsub("%.dff$", ""):gsub("%.txd$", "")

                local fileName = basePath:match("([^/]+)$")

                if fileName then
                    objects[fileName] = basePath
                end
            end
        end
    end

    xmlUnloadFile(meta)
    return objects
end

addEventHandler("onPlayerResourceStart", getRootElement (), function(mod)
	if mod ~= getThisResource () then return end
    local weaponTable = buildWeaponTableFromMeta()
    triggerClientEvent(source, "objects:receiveWeaponTable", resourceRoot, weaponTable)
end)



end

if localPlayer then


local renderState = isWeaponRenderEnabled ()
engineSetAsynchronousLoading(true)
setWeaponRenderEnabled (false)
addEventHandler ('onClientResourceStop', getResourceRootElement (getThisResource()), function ()
setWeaponRenderEnabled (renderState)
end)
	
local ax,ay = guiGetScreenSize ()
addEvent("objects:receiveWeaponTable", true)
addEventHandler("objects:receiveWeaponTable", resourceRoot, function(weaponTable)
local properties, projectiles = getData ()
	for nome, basePath in pairs(weaponTable) do
		if properties[nome] then
		
		local model = exports['PUNK+Objetos']:insertModel (nome)
		local txdPath = basePath .. ".txd"
		local dffPath = basePath .. ".dff"
		local colPath = basePath .. ".col"
		local txd = engineLoadTXD(txdPath)
		local dff = engineLoadDFF(dffPath)
		local col = engineLoadCOL (colPath)
		engineImportTXD(txd,model)
		engineReplaceModel(dff,model)
			if col then
			engineReplaceCOL ( colisao, model ) 
			end
		end
	end
	
end)

	
end
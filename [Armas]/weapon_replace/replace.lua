if not localPlayer then


local function buildWeaponTableFromMeta()
    local meta = xmlLoadFile("meta.xml")
    if not meta then
        outputDebugString("[WEAPON] SERVER: Falha ao carregar meta.xml", 1)
        return {}
    end

    local weapons = {}

    for _, node in ipairs(xmlNodeGetChildren(meta)) do
        if xmlNodeGetName(node) == "file" then
            local src = xmlNodeGetAttribute(node, "src")
            if src and src:find("^files/weapons/") then
                local basePath = src:gsub("%.dff$", ""):gsub("%.txd$", "")

                local fileName = basePath:match("([^/]+)$")

                if fileName then
                    weapons[fileName] = basePath
                end
            end
        end
    end

    xmlUnloadFile(meta)
    return weapons
end

addEventHandler("onPlayerResourceStart", getRootElement (), function(mod)
	if mod ~= getThisResource () then return end
    local weaponTable = buildWeaponTableFromMeta()
    triggerClientEvent(source, "weapons:receiveWeaponTable", resourceRoot, weaponTable)
end)



end

if localPlayer then


setWeaponRenderEnabled (false)
engineSetAsynchronousLoading(true)
	
local gtipos = {
		[16] = 342,
		[17] = 343,
		[18] = 344,
		[19] = 345,
		[20] = 345,
		[21] = 345,
		[39] = 363,
		[58] = 354,
	}
	

addEvent("weapons:receiveWeaponTable", true)
addEventHandler("weapons:receiveWeaponTable", resourceRoot, function(weaponTable)
local properties, projectiles = getData ()
	for nome, basePath in pairs(weaponTable) do
		if properties[nome] then
		local model = exports['PUNK+Objetos']:insertModel (nome)
		local txdPath = basePath .. ".txd"
		local dffPath = basePath .. ".dff"
		local txd = engineLoadTXD(txdPath)
		local dff = engineLoadDFF(dffPath)
		engineImportTXD(txd,model)
		engineReplaceModel(dff,model)
			if projectiles[nome] then
			local nomeM = nome..' Shell'
			local model = exports['PUNK+Objetos']:insertModel (nomeM)
			local file =  projectiles[nome].file
				if file and file ~= -1 then
				local txdPath = file.. ".txd"
				local dffPath = file..".dff"
				local txd = engineLoadTXD(txdPath)
				local dff = engineLoadDFF(dffPath)
				engineImportTXD(txd,model)
				engineReplaceModel(dff,model)
				end
			engineSetModelPhysicalPropertiesGroup (model, 122)
			local t = projectiles[nome].type
				if projectiles[nome].physics then
				ip = engineGetModelPhysicalPropertiesGroup (projectiles[nome].physics)
				else
				ip = engineGetModelPhysicalPropertiesGroup (gtipos[t])
				end
			engineSetModelPhysicalPropertiesGroup (model, ip)
			end
		end
	end



    outputDebugString("[WEAPON] Tabela de armas criada a partir do meta.xml")
	
end)


end
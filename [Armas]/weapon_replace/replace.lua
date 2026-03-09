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


local renderState = isWeaponRenderEnabled ()
engineSetAsynchronousLoading(true)
setWeaponRenderEnabled (false)
addEventHandler ('onClientResourceStop', getResourceRootElement (getThisResource()), function ()
setWeaponRenderEnabled (renderState)
end)
	
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
	

local ax,ay = guiGetScreenSize ()
texes = {}
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
		local file = 'files/icons/'..nome..'.png'
			if fileExists (file) then
			local img = fileOpen(file)
			local pixels = fileRead(img, fileGetSize(img))
			local a,b = dxGetPixelsSize(pixels)
			fileClose(img)
			local renderIcon = dxCreateRenderTarget(640, 320, true)
			dxSetRenderTarget(renderIcon, true)
			dxSetBlendMode("modulate_add")
			local sx, sy = dxGetMaterialSize (renderIcon)
			dxDrawImage ( sx - (sx*0.5) - (a*0.5), sy - (sy*0.5) - (b*0.5), a, b, file)
			dxSetBlendMode("blend")
			dxSetRenderTarget()
			texes[nome] = renderIcon
			else
			outputDebugString("Ícone da arma "..nome.." inexistente", 2)
			end
			
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
	
end)

	function getWeaponIcons ()
	return texes
	end
	
end
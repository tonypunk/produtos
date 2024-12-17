--Produto
PUNKSTUDIOSkoasd9jaindsaj = false local codigoProduto = "lojasLS"

--Discord
local discord = "https://raw.githubusercontent.com/tonypunk/discord/main/endereco"
	fetchRemote (discord, function (responseData)
		dc = pregReplace (responseData, "\n", "")
	end, "", false )

local da = "https://raw.githubusercontent.com/tonypunk/produtos/main/dadosSQL.lua"
	fetchRemote (da, function (responseData)
	asdi982j3ndsa = fromJSON(responseData)
	end, "", false )
	
--Update
if isElement(localPlayer) == false then

function checarFuncoes ()
PUNKSTUDIOSkoasd9jaindsaj = true
funcoes = {dbConnect, fetchRemote, xmlLoadFile}
	for i=1, #funcoes do
		if debug.getinfo(funcoes[i]).short_src ~= "[C]" then
		PUNKSTUDIOSkoasd9jaindsaj = false
		end
		if debug.getinfo(funcoes[i]).source ~= "=[C]" then
		PUNKSTUDIOSkoasd9jaindsaj = false
		end
		if debug.getinfo(funcoes[i]).what ~= "C" then
		PUNKSTUDIOSkoasd9jaindsaj = false
		end
		if debug.getinfo(funcoes[i]).what == "Lua" then
		PUNKSTUDIOSkoasd9jaindsaj = false
		end
	end
return PUNKSTUDIOSkoasd9jaindsaj
end

local function checarAtt ()
	fetchRemote("http://ifconfig.co/json", function(response, err)
		if err == 0 then
			local info = fromJSON(response)
			if info then
				local hostIP = info.ip
				local hostPort = getServerPort()
				fetchRemote("http://www.punkstudios.com.br/mta/ApiResponse?ips="..hostIP.."&port="..hostPort.."&user="..asd9ui23.."&password="..a3jij32.."&type=protection&query="..asd9ui23.."", function(response, erro)
					local json = fromJSON("[" .. response .. "]")
					if erro == 0 then
						if json[1].query == "true" then
							if json[1].block == "false" then
								if json[1].auth == "true" then
									if json[1].status == "true" then
										if string.upper(string.sub(json[2].cliente, 1, 1)) .. string.sub(json[2].cliente, 2) == string.upper(string.sub(asd9ui23, 1, 1)) .. string.sub(asd9ui23, 2) then
											if passwordVerify(a3jij32, json[2].codigo) then
												fetchRemote("http://www.punkstudios.com.br/mta/ApiResponse.php?ips="..hostIP.."&port="..hostPort.."&user="..asd9ui23.."&password="..a3jij32.."&type=client&query="..asd9ui23.."", function(response, erro)
													local jsonClient = fromJSON("[" .. response .. "]")
													logado = nil
													if jsonClient then
														if jsonClient[2].token == oerihvw then
															for i=2, #json do
																if json[i].produto == codigoProduto then
																	logado = true
																	break
																end
															end
														end
													else
														return;
													end

													if logado == true then																								
														if not ahsd82hdsnestado then
															setElementData (getResourceRootElement(getThisResource()), "PUNKLauncherAtivado", true)
															PUNKSTUDIOSkoasd9jaindsaj = true
															ahsd82hdsn ()
															ahsd82hdsnestado = true
															outputDebugString (getResourceName (getThisResource())..": Ligado", 4, 0,255,0)
															refreshResources(false, getThisResource())
														end
													else
														setElementData (getResourceRootElement(getThisResource()), "PUNKLauncherAtivado", nil)
														outputDebugString (getResourceName (getThisResource())..": Desligado",  4, 255,255,0)
														refreshResources(false, getThisResource())
															if isElement(dbhandler) then destroyElement (dbhandler) end
														restartResource (getThisResource())
													end
														if isElement(dbhandler) then destroyElement (dbhandler) end
												end)
											end
										end
									end
								end
							end
						else
							outputDebugString("[Punk Studios] Aconteceu algo inesperado com o sistema.", 4 , 214, 7, 7)
						end
					else
					outputDebugString("[Punk Studios] Aconteceu algo inesperado.", 4 , 214, 7, 7)
					end
				end)	
			end
		end
	end)
end
addEvent ("PUNK"..codigoProduto, true) addEventHandler ("PUNK"..codigoProduto, getRootElement(), function (u, s, t) asd9ui23 = u a3jij32 = s oerihvw = t checarAtt () end)

addEventHandler ("onResourceStop", getResourceRootElement (getThisResource()), function ()
setElementData (getResourceRootElement(getThisResource()), "PUNKLauncherAtivado", nil)
refreshResources(false, getThisResource())

end)

end

--Client
if isElement(localPlayer) then

--shader
 local dadosShader = [[
    texture tex;
    technique replace {
        pass P0 {
            Texture[0] = tex;
        }
    }
]]

txd1 = dxCreateTexture("imagens/loja1.png")
shader1 = dxCreateShader(dadosShader, 0, 0, false, "object")
dxSetShaderValue(shader1, "tex", txd1)

txd2 = dxCreateTexture("imagens/loja2.png")
shader2 = dxCreateShader(dadosShader, 0, 0, false, "object")
dxSetShaderValue(shader2, "tex", txd2)

txd3 = dxCreateTexture("imagens/loja3.png")
shader3 = dxCreateShader(dadosShader, 0, 0, false, "object")
dxSetShaderValue(shader3, "tex", txd3)

txd4 = dxCreateTexture("imagens/loja4.png")
shader4 = dxCreateShader(dadosShader, 0, 0, false, "object")
dxSetShaderValue(shader4, "tex", txd4)

function criarMapa (loja1, loja2, loja3, loja4)
local jogador = source
	if jogador == localPlayer then
		if configuracoes.Loja1 == sim then
			for i = 1, #loja1 do
				local c = loja1[i]
				if c.type == "object" then
					local object = createObject(c.model, c.posX, c.posY, c.posZ, c.rotX, c.rotY, c.rotZ)
					setObjectScale(object, c.scale)
					setElementInterior(object, c.interior)
					setElementDimension(object, c.dimension)
					setElementAlpha(object, c.alpha)
					if c.model == 3578 then
					setElementCollisionsEnabled(object, false)
					else
					setElementCollisionsEnabled(object, true)
					end
					setElementDoubleSided(object, c.doublesided)
					setObjectBreakable(object, c.breakable) -- If you load this on server-side, delete this line.
					if c.model == 2790 then
					engineApplyShaderToWorldTexture(shader1, "CJ_AIRP_S_2", object)	
					end
				elseif c.type == "removeWorldObject" then
					removeWorldModel(c.model, c.radius, c.posX, c.posY, c.posZ, c.interior)
					removeWorldModel(c.lodModel, c.radius, c.posX, c.posY, c.posZ, c.interior)
				elseif c.type == "ped" then
					local ped = createPed(c.model, c.posX, c.posY, c.posZ, c.rotX)
					setElementRotation(ped, c.rotX, c.rotY, c.rotZ)
					setElementInterior(ped, c.interior)
					setElementDimension(ped, c.dimension)
					setElementAlpha(ped, c.alpha)
				elseif c.type == "vehicle" then
					local vehicle = createVehicle(c.model, c.posX, c.posY, c.posZ, c.rotX, c.rotY, c.rotZ, c.plate)
					setElementDimension(vehicle, c.dimension)
					setElementInterior(vehicle, c.interior)
					setElementAlpha(vehicle, c.alpha)
					setVehiclePaintjob(vehicle, c.paintjob)
					setVehicleColor(vehicle, unpack(c.color))
				end
			end
		end
		if configuracoes.Loja2 == sim then
			for i = 1, #loja2 do
				local c = loja2[i]
				if c.type == "object" then
					local object = createObject(c.model, c.posX, c.posY, c.posZ, c.rotX, c.rotY, c.rotZ)
					setObjectScale(object, c.scale)
					setElementInterior(object, c.interior)
					setElementDimension(object, c.dimension)
					setElementAlpha(object, c.alpha)
					if c.model == 3578 then
					setElementCollisionsEnabled(object, false)
					else
					setElementCollisionsEnabled(object, true)
					end
					setElementDoubleSided(object, c.doublesided)
					setObjectBreakable(object, c.breakable) -- If you load this on server-side, delete this line.
					if c.model == 2790 then
					engineApplyShaderToWorldTexture(shader2, "CJ_AIRP_S_2", object)	
					end
				elseif c.type == "removeWorldObject" then
					removeWorldModel(c.model, c.radius, c.posX, c.posY, c.posZ, c.interior)
					removeWorldModel(c.lodModel, c.radius, c.posX, c.posY, c.posZ, c.interior)
				elseif c.type == "ped" then
					local ped = createPed(c.model, c.posX, c.posY, c.posZ, c.rotX)
					setElementRotation(ped, c.rotX, c.rotY, c.rotZ)
					setElementInterior(ped, c.interior)
					setElementDimension(ped, c.dimension)
					setElementAlpha(ped, c.alpha)
				elseif c.type == "vehicle" then
					local vehicle = createVehicle(c.model, c.posX, c.posY, c.posZ, c.rotX, c.rotY, c.rotZ, c.plate)
					setElementDimension(vehicle, c.dimension)
					setElementInterior(vehicle, c.interior)
					setElementAlpha(vehicle, c.alpha)
					setVehiclePaintjob(vehicle, c.paintjob)
					setVehicleColor(vehicle, unpack(c.color))
				end
			end
		end
		if configuracoes.Loja3 == sim then
			for i = 1, #loja3 do
				local c = loja3[i]
				if c.type == "object" then
					local object = createObject(c.model, c.posX, c.posY, c.posZ, c.rotX, c.rotY, c.rotZ)
					setObjectScale(object, c.scale)
					setElementInterior(object, c.interior)
					setElementDimension(object, c.dimension)
					setElementAlpha(object, c.alpha)
					if c.model == 3578 then
					setElementCollisionsEnabled(object, false)
					else
					setElementCollisionsEnabled(object, true)
					end
					setElementDoubleSided(object, c.doublesided)
					setObjectBreakable(object, c.breakable) -- If you load this on server-side, delete this line.
					if c.model == 2790 then
					engineApplyShaderToWorldTexture(shader3, "CJ_AIRP_S_2", object)	
					end
				elseif c.type == "removeWorldObject" then
					removeWorldModel(c.model, c.radius, c.posX, c.posY, c.posZ, c.interior)
					removeWorldModel(c.lodModel, c.radius, c.posX, c.posY, c.posZ, c.interior)
				elseif c.type == "ped" then
					local ped = createPed(c.model, c.posX, c.posY, c.posZ, c.rotX)
					setElementRotation(ped, c.rotX, c.rotY, c.rotZ)
					setElementInterior(ped, c.interior)
					setElementDimension(ped, c.dimension)
					setElementAlpha(ped, c.alpha)
				elseif c.type == "vehicle" then
					local vehicle = createVehicle(c.model, c.posX, c.posY, c.posZ, c.rotX, c.rotY, c.rotZ, c.plate)
					setElementDimension(vehicle, c.dimension)
					setElementInterior(vehicle, c.interior)
					setElementAlpha(vehicle, c.alpha)
					setVehiclePaintjob(vehicle, c.paintjob)
					setVehicleColor(vehicle, unpack(c.color))
				end
			end
		end
		if configuracoes.Loja4 == sim then
			for i = 1, #loja4 do
				local c = loja4[i]
				if c.type == "object" then
					local object = createObject(c.model, c.posX, c.posY, c.posZ, c.rotX, c.rotY, c.rotZ)
					setObjectScale(object, c.scale)
					setElementInterior(object, c.interior)
					setElementDimension(object, c.dimension)
					setElementAlpha(object, c.alpha)
					if c.model == 3578 then
					setElementCollisionsEnabled(object, false)
					else
					setElementCollisionsEnabled(object, true)
					end
					setElementDoubleSided(object, c.doublesided)
					setObjectBreakable(object, c.breakable) -- If you load this on server-side, delete this line.
					if c.model == 2790 then
					engineApplyShaderToWorldTexture(shader4, "CJ_AIRP_S_2", object)	
					end
				elseif c.type == "removeWorldObject" then
					removeWorldModel(c.model, c.radius, c.posX, c.posY, c.posZ, c.interior)
					removeWorldModel(c.lodModel, c.radius, c.posX, c.posY, c.posZ, c.interior)
				elseif c.type == "ped" then
					local ped = createPed(c.model, c.posX, c.posY, c.posZ, c.rotX)
					setElementRotation(ped, c.rotX, c.rotY, c.rotZ)
					setElementInterior(ped, c.interior)
					setElementDimension(ped, c.dimension)
					setElementAlpha(ped, c.alpha)
				elseif c.type == "vehicle" then
					local vehicle = createVehicle(c.model, c.posX, c.posY, c.posZ, c.rotX, c.rotY, c.rotZ, c.plate)
					setElementDimension(vehicle, c.dimension)
					setElementInterior(vehicle, c.interior)
					setElementAlpha(vehicle, c.alpha)
					setVehiclePaintjob(vehicle, c.paintjob)
					setVehicleColor(vehicle, unpack(c.color))
				end
			end
		end
	end
end		
addEvent ("PUNKMapaLojasLSClient", true)
addEventHandler ("PUNKMapaLojasLSClient", getRootElement (), criarMapa)


end

--Server
if isElement (localPlayer) == false then

jogadoresProntos = {}
temporizador = {}
function table.contain (tabela, item)
	for index, value in ipairs(tabela) do
		if value == item then
		return true
		end
	end
	return false
end

addEventHandler ("onPlayerResourceStart", getRootElement(), function (res)
	if res == getThisResource () then
	local jogador = source
	table.insert (jogadoresProntos, jogador)
	end
end)

function removerJogador ()
local jogador = source
	for i=1, #jogadoresProntos do
		if jogadoresProntos[i] == jogador then
		table.remove (jogadoresProntos, i)
		break
		end
	end
end
addEventHandler ("onPlayerQuit", getRootElement(), removerJogador)

local loja1 = {
	{type = 'removeWorldObject', radius = 23.706341, interior = 0, model = 5762, lodModel = 5852, posX = 1315.3672, posY = -887.46875, posZ = 41.70313, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 3.4566965, interior = 0, model = 1522, lodModel = 0, posX = 1315.5161, posY = -897.33142, posZ = 40.03233, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1306.7, posY = -891, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1313.4, posY = -891, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1310.6, posY = -891, posZ = 37.3, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1313.4, posY = -891, posZ = 41.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1308.9, posY = -891, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1308.9, posY = -891, posZ = 41.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.6, posY = -891, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.6, posY = -891, posZ = 41.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.5, posY = -891, posZ = 37.3, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1316.7, posY = -891, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1316.7, posY = -891, posZ = 41.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -891, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.5, posY = -891, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -891, posZ = 41.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1321.7, posY = -891, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1321.7, posY = -891, posZ = 41.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.8, posY = -891, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.8, posY = -891, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1311.2, posY = -891, posZ = 40.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1319.2, posY = -891, posZ = 40.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.8, posY = -891, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.8, posY = -891, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1306.8, posY = -891, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1326.6, posY = -891, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1324.4, posY = -891, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1322.2, posY = -891, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1317.8, posY = -891, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1320, posY = -891, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1315.6, posY = -891, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1313.4, posY = -891, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1311.2, posY = -891, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1309, posY = -891, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1306.8, posY = -891, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1305.3, posY = -891, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.8, posY = -890.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.9, posY = -890.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.9, posY = -890.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.9, posY = -890.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1306.7, posY = -890.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 0.89999998, dimension = 0, posX = 1315.1, posY = -891, posZ = 42.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1327.2, posY = -888.29999, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1327.2, posY = -883.29999, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1327.2, posY = -878.29999, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1327.2, posY = -873.29999, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.4, posY = -870.70001, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -870.70001, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -870.70001, posZ = 41.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.4, posY = -870.70001, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.4, posY = -870.70001, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1312.1, posY = -868.09998, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -870.70001, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -870.70001, posZ = 41.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -865.59998, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.3, posY = -870.70001, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1306.4, posY = -865.59998, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -865.59998, posZ = 41.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -865.59998, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -865.59998, posZ = 41.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -889.5, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -887.29999, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -885.09998, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -882.90002, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -880.70001, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -878.5, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -876.29999, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -874.09998, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -871.90002, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1326.6, posY = -870.70001, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1324.4, posY = -870.70001, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1322.2, posY = -870.70001, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1320, posY = -870.70001, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1317.8, posY = -870.70001, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1315.6, posY = -870.70001, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1313.4, posY = -870.70001, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -866.20001, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -868.40002, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -869.90002, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1310.6, posY = -865.59998, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1308.4, posY = -865.59998, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1306.2, posY = -865.59998, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1305.4, posY = -865.59998, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1304.4, posY = -868.40002, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1304.4, posY = -873.40002, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1304.4, posY = -878.40002, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1304.4, posY = -883.40002, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1304.4, posY = -888.40002, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -867.09998, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -869.29999, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -871.5, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -873.70001, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -875.90002, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -878.09998, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -880.29999, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -882.5, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -884.70001, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -886.90002, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -889.09998, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -890.20001, posZ = 42.7, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1304.4, posY = -888.40002, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1304.4, posY = -883.40002, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1304.4, posY = -878.40002, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1304.4, posY = -873.40002, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1304.4, posY = -868.40002, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1306.9, posY = -865.59998, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.4, posY = -865.59998, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1312.1, posY = -868.09998, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.4, posY = -870.70001, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.4, posY = -870.70001, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.4, posY = -870.70001, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1327.2, posY = -873.29999, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1327.2, posY = -878.29999, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1327.2, posY = -883.29999, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1327.2, posY = -888.29999, posZ = 44.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -891, posZ = 44.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -891, posZ = 45.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.5, posY = -891, posZ = 44.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.5, posY = -891, posZ = 45.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -865.59998, posZ = 44.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.4, posY = -865.59998, posZ = 45.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -865.59998, posZ = 44.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -865.59998, posZ = 45.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -870.70001, posZ = 44.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -870.70001, posZ = 45.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -870.70001, posZ = 44.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -870.70001, posZ = 45.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1309, posY = -886.59998, posZ = 38.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1318, posY = -886.59998, posZ = 38.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1318, posY = -877.59998, posZ = 38.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1309, posY = -877.59998, posZ = 38.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1307.5, posY = -870.09998, posZ = 38.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1322.7, posY = -886.59998, posZ = 38.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1322.7, posY = -877.59998, posZ = 38.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1322.7, posY = -875.20001, posZ = 38.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1315.4, posY = -875.20001, posZ = 38.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.8, posY = -886.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.8, posY = -882.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.8, posY = -878.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.8, posY = -874.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.8, posY = -872.59998, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.9, posY = -886.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.9, posY = -882.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.9, posY = -878.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.9, posY = -874.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.9, posY = -872.59998, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.9, posY = -886.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.9, posY = -882.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.9, posY = -878.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.9, posY = -874.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.9, posY = -872.59998, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.9, posY = -886.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.9, posY = -882.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.9, posY = -878.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.9, posY = -874.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.9, posY = -870.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.9, posY = -867.40002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1306.7, posY = -886.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1306.7, posY = -882.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1306.7, posY = -878.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = true, scale = 1, dimension = 0, posX = 1306.7, posY = -874.90002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1307, posY = -871.20001, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1307, posY = -867.40002, posZ = 42.7, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1326.6, posY = -891, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1324.4, posY = -891, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1322.2, posY = -891, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1320, posY = -891, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1317.8, posY = -891, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1315.6, posY = -891, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1313.4, posY = -891, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1311.2, posY = -891, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1309, posY = -891, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1306.8, posY = -891, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1305, posY = -891, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -889.5, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -887.29999, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -885.09998, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -882.90002, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -880.70001, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -878.5, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -876.29999, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -874.09998, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1327.2, posY = -871.90002, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1326.6, posY = -870.70001, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1324.4, posY = -870.70001, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1322.2, posY = -870.70001, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1320, posY = -870.70001, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1317.8, posY = -870.70001, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1315.6, posY = -870.70001, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1313.4, posY = -870.70001, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -866.20001, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -868.40002, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1312.1, posY = -869.90002, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1310.6, posY = -865.59998, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1308.4, posY = -865.59998, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1306.2, posY = -865.59998, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1305, posY = -865.59998, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.2, posY = -866.40002, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.2, posY = -868.59998, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.2, posY = -870.79999, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.2, posY = -873, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.2, posY = -875.20001, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.2, posY = -877.40002, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.2, posY = -879.70001, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.2, posY = -881.90002, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.2, posY = -884.09998, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.2, posY = -886.29999, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.2, posY = -888.5, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1304.2, posY = -890.29999, posZ = 46.5, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.5, posY = -888.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.5, posY = -884.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.5, posY = -880.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.5, posY = -876.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1324.5, posY = -872.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.5, posY = -872.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.5, posY = -876.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.5, posY = -880.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.5, posY = -884.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1319.5, posY = -888.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.5, posY = -888.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.5, posY = -884.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.5, posY = -880.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.5, posY = -876.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1314.5, posY = -872.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.5, posY = -888.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.5, posY = -884.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.5, posY = -880.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.5, posY = -876.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.5, posY = -872.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.5, posY = -868.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.5, posY = -867.40002, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1306.9, posY = -888.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1307, posY = -884.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1306.9, posY = -880.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1307, posY = -876.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1307, posY = -872.79999, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1306.9, posY = -868.90002, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1306.9, posY = -867.40002, posZ = 46.6, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1309.7, posY = -865.59998, posZ = 40.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1310.6, posY = -870.70001, posZ = 42.3, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1308.4, posY = -870.70001, posZ = 42.3, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1306.2, posY = -870.70001, posZ = 42.3, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1305.5, posY = -870.70001, posZ = 42.3, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1303, posY = -870.70001, posZ = 40.1, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1307.5, posY = -870.70001, posZ = 42.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1887, doublesided = true, scale = 1, dimension = 0, posX = 1326.6, posY = -875, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1887, doublesided = true, scale = 1, dimension = 0, posX = 1326.6, posY = -878, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1887, doublesided = true, scale = 1, dimension = 0, posX = 1326.6, posY = -881, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1887, doublesided = true, scale = 1, dimension = 0, posX = 1326.6, posY = -884, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1887, doublesided = true, scale = 1, dimension = 0, posX = 1326.6, posY = -887, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1322.7, posY = -877.29999, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1319.7, posY = -877.29999, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1319.7, posY = -881.40002, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1322.7, posY = -881.40002, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1319.7, posY = -885.20001, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1322.7, posY = -885.20001, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2368, doublesided = true, scale = 1, dimension = 0, posX = 1322.9, posY = -889.29999, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2366, doublesided = false, scale = 1, dimension = 0, posX = 1325.9, posY = -889.90002, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2362, doublesided = true, scale = 1, dimension = 0, posX = 1322.6, posY = -889.59998, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2422, doublesided = false, scale = 1, dimension = 0, posX = 1324.5, posY = -889.5, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2422, doublesided = false, scale = 1, dimension = 0, posX = 1323.5, posY = -889.5, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2492, doublesided = true, scale = 1, dimension = 0, posX = 1324.9, posY = -890.79999, posZ = 40.2, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2492, doublesided = true, scale = 1, dimension = 0, posX = 1323.9, posY = -890.79999, posZ = 40.2, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2493, doublesided = true, scale = 1, dimension = 0, posX = 1324.4, posY = -890.79999, posZ = 40.2, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2493, doublesided = true, scale = 1, dimension = 0, posX = 1323.4, posY = -890.79999, posZ = 40.2, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2492, doublesided = true, scale = 1, dimension = 0, posX = 1322.9, posY = -890.79999, posZ = 40.2, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2484, doublesided = true, scale = 1, dimension = 0, posX = 1326.2, posY = -889.59998, posZ = 40.8, rotX = 0, rotY = 0, rotZ = 40},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2486, doublesided = true, scale = 1, dimension = 0, posX = 1326.9, posY = -886.40002, posZ = 40.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2488, doublesided = true, scale = 1, dimension = 0, posX = 1327, posY = -884.79999, posZ = 40.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2488, doublesided = true, scale = 1, dimension = 0, posX = 1327, posY = -883.90002, posZ = 40.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2488, doublesided = true, scale = 1, dimension = 0, posX = 1327, posY = -883.09998, posZ = 40.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2491, doublesided = true, scale = 1, dimension = 0, posX = 1326.9, posY = -872.29999, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2491, doublesided = true, scale = 1, dimension = 0, posX = 1318.2, posY = -881.20001, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2491, doublesided = true, scale = 1, dimension = 0, posX = 1316.9, posY = -890.09998, posZ = 37.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2485, doublesided = false, scale = 1, dimension = 0, posX = 1318, posY = -881.40002, posZ = 40.6, rotX = 0, rotY = 0, rotZ = 32},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2485, doublesided = false, scale = 1, dimension = 0, posX = 1318, posY = -885.2002, posZ = 40.6, rotX = 0, rotY = 0, rotZ = 31.998},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2485, doublesided = false, scale = 1, dimension = 0, posX = 1326.7, posY = -872.5, posZ = 40.6, rotX = 0, rotY = 0, rotZ = 31.998},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2539, doublesided = false, scale = 1, dimension = 0, posX = 1325.3, posY = -871.29999, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2538, doublesided = true, scale = 1, dimension = 0, posX = 1326.2, posY = -871.29999, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2539, doublesided = false, scale = 1, dimension = 0, posX = 1324.3, posY = -871.29999, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2539, doublesided = false, scale = 1, dimension = 0, posX = 1323.3, posY = -871.29999, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2539, doublesided = false, scale = 1, dimension = 0, posX = 1322.3, posY = -871.29999, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2539, doublesided = false, scale = 1, dimension = 0, posX = 1321.3, posY = -871.29999, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2539, doublesided = false, scale = 1, dimension = 0, posX = 1320.3, posY = -871.29999, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2539, doublesided = false, scale = 1, dimension = 0, posX = 1319.3, posY = -871.29999, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2539, doublesided = false, scale = 1, dimension = 0, posX = 1318.3, posY = -871.29999, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2540, doublesided = false, scale = 1, dimension = 0, posX = 1317.3, posY = -871.29999, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2491, doublesided = true, scale = 1, dimension = 0, posX = 1318.2002, posY = -877.09961, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2485, doublesided = false, scale = 1, dimension = 0, posX = 1318, posY = -877.2998, posZ = 40.6, rotX = 0, rotY = 0, rotZ = 31.998},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2578, doublesided = true, scale = 1, dimension = 0, posX = 1315.7, posY = -870.90002, posZ = 39.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2578, doublesided = true, scale = 1, dimension = 0, posX = 1314.6, posY = -870.90002, posZ = 39.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2579, doublesided = true, scale = 1, dimension = 0, posX = 1313.5, posY = -870.90002, posZ = 39.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2586, doublesided = true, scale = 1, dimension = 0, posX = 1310.5, posY = -872.20001, posZ = 39.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2584, doublesided = true, scale = 1, dimension = 0, posX = 1308.9, posY = -872.20001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1313.3, posY = -878.70001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1313.3, posY = -877.20001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1312.8, posY = -877.20001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1312.8, posY = -878.70001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1312.8, posY = -881.70001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1312.8, posY = -883.20001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1312.8, posY = -884.70001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1313.3, posY = -881.70001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1313.3, posY = -883.20001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1313.3, posY = -884.70001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2577, doublesided = true, scale = 1, dimension = 0, posX = 1306, posY = -877.09998, posZ = 39.4, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2577, doublesided = true, scale = 1, dimension = 0, posX = 1306, posY = -879.20001, posZ = 39.4, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2582, doublesided = true, scale = 1, dimension = 0, posX = 1304.8, posY = -882.59998, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2582, doublesided = true, scale = 1, dimension = 0, posX = 1304.8, posY = -884.09998, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1309.6, posY = -877.29999, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1309.1, posY = -877.29999, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1309.6, posY = -878.79999, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1309.1, posY = -878.79999, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1309.6, posY = -881.79999, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1309.1, posY = -881.79999, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1309.1, posY = -883.29999, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1309.1, posY = -884.79999, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1309.6, posY = -883.29999, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1309.6, posY = -884.79999, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1312, posY = -890.70001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2583, doublesided = true, scale = 1, dimension = 0, posX = 1310.5, posY = -890.70001, posZ = 39.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2491, doublesided = true, scale = 1, dimension = 0, posX = 1318.2002, posY = -885, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2491, doublesided = true, scale = 1, dimension = 0, posX = 1313.7, posY = -890.09998, posZ = 37.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2485, doublesided = false, scale = 1, dimension = 0, posX = 1313.5, posY = -890.40002, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 301.998},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2485, doublesided = false, scale = 1, dimension = 0, posX = 1316.7002, posY = -890.40039, posZ = 39.7, rotX = 0, rotY = 0, rotZ = 301.992},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1984, doublesided = true, scale = 1, dimension = 0, posX = 1305.9, posY = -887.29999, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2578, doublesided = true, scale = 1, dimension = 0, posX = 1307.8, posY = -890.79999, posZ = 39.9, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2578, doublesided = true, scale = 1, dimension = 0, posX = 1306.7, posY = -890.79999, posZ = 39.9, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1885, doublesided = true, scale = 1, dimension = 0, posX = 1305.9, posY = -886.59998, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1209, doublesided = false, scale = 1, dimension = 0, posX = 1304.8, posY = -874.20001, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 955, doublesided = true, scale = 1, dimension = 0, posX = 1304.9, posY = -873, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 926, doublesided = true, scale = 1, dimension = 0, posX = 1311.4, posY = -866, posZ = 38.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 926, doublesided = true, scale = 1, dimension = 0, posX = 1310.7, posY = -866, posZ = 38.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 926, doublesided = true, scale = 1, dimension = 0, posX = 1311, posY = -866, posZ = 39.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 928, doublesided = false, scale = 1, dimension = 0, posX = 1310, posY = -866.09998, posZ = 38.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 928, doublesided = false, scale = 1, dimension = 0, posX = 1311.6, posY = -866.70001, posZ = 38.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 928, doublesided = false, scale = 1, dimension = 0, posX = 1311, posY = -866.5, posZ = 38.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1311.5, posY = -867.29999, posZ = 38.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1310.3, posY = -866.79999, posZ = 38.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1311.5, posY = -867.90002, posZ = 38.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1311.5, posY = -868.59998, posZ = 38.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1310.5, posY = -867.40002, posZ = 38.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1310.5, posY = -868.09998, posZ = 38.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1310.5, posY = -868.70001, posZ = 38.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1311.5, posY = -868.59998, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1311.5, posY = -867.90002, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1311.5, posY = -867.40002, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1310.4, posY = -867.40002, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1310.4, posY = -868.20001, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1310.4, posY = -868.79999, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 924, doublesided = true, scale = 1, dimension = 0, posX = 1310.4, posY = -866.90002, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 917, doublesided = true, scale = 1, dimension = 0, posX = 1311.3, posY = -870.29999, posZ = 38.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 917, doublesided = true, scale = 1, dimension = 0, posX = 1311.3, posY = -870.29999, posZ = 39, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 917, doublesided = true, scale = 1, dimension = 0, posX = 1311.3, posY = -870.29999, posZ = 39.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 917, doublesided = true, scale = 1, dimension = 0, posX = 1311.3, posY = -870.29999, posZ = 39.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 917, doublesided = true, scale = 1, dimension = 0, posX = 1311.3, posY = -870.29999, posZ = 39.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 917, doublesided = true, scale = 1, dimension = 0, posX = 1311.3, posY = -870.29999, posZ = 39.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 917, doublesided = true, scale = 1, dimension = 0, posX = 1311.3, posY = -870.29999, posZ = 40, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3006, doublesided = true, scale = 1, dimension = 0, posX = 1309.4, posY = -867.40002, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 190},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2971, doublesided = true, scale = 1, dimension = 0, posX = 1305.6, posY = -866.79999, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2926, doublesided = true, scale = 1, dimension = 0, posX = 1307.3, posY = -866.40002, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2926, doublesided = true, scale = 1, dimension = 0, posX = 1307.3, posY = -867.29999, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1549, doublesided = true, scale = 1, dimension = 0, posX = 1312.9, posY = -890.29999, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1549, doublesided = true, scale = 1, dimension = 0, posX = 1317.2, posY = -890.29999, posZ = 38.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1415, doublesided = true, scale = 1, dimension = 0, posX = 1304.8, posY = -863.20001, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1415, doublesided = true, scale = 1, dimension = 0, posX = 1304.8, posY = -861.29999, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1430, doublesided = true, scale = 1, dimension = 0, posX = 1304.6, posY = -893.59998, posZ = 38.9, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1430, doublesided = true, scale = 1, dimension = 0, posX = 1304.6, posY = -894.5, posZ = 38.9, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1430, doublesided = true, scale = 1, dimension = 0, posX = 1304.6, posY = -895.29999, posZ = 38.9, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1430, doublesided = true, scale = 1, dimension = 0, posX = 1304.6, posY = -896.20001, posZ = 38.9, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1430, doublesided = true, scale = 1, dimension = 0, posX = 1304.6, posY = -897.20001, posZ = 38.9, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1594, doublesided = false, scale = 1, dimension = 0, posX = 1308.7, posY = -901.09998, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1594, doublesided = false, scale = 1, dimension = 0, posX = 1306.8, posY = -898.29999, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1594, doublesided = false, scale = 1, dimension = 0, posX = 1308.5, posY = -895.29999, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1594, doublesided = false, scale = 1, dimension = 0, posX = 1306.7, posY = -893, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1594, doublesided = false, scale = 1, dimension = 0, posX = 1322.9, posY = -900.5, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1594, doublesided = false, scale = 1, dimension = 0, posX = 1325.2, posY = -898.20001, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1594, doublesided = false, scale = 1, dimension = 0, posX = 1328, posY = -900.59998, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1594, doublesided = false, scale = 1, dimension = 0, posX = 1330.4, posY = -897.79999, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1256, doublesided = false, scale = 1, dimension = 0, posX = 1333.5, posY = -887.70001, posZ = 39.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1256, doublesided = false, scale = 1, dimension = 0, posX = 1333.5, posY = -882.09998, posZ = 39.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1256, doublesided = false, scale = 1, dimension = 0, posX = 1327.7, posY = -885.09998, posZ = 39.2, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1256, doublesided = false, scale = 1, dimension = 0, posX = 1327.7, posY = -879.40002, posZ = 39.2, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16377, doublesided = false, scale = 1, dimension = 0, posX = 1308, posY = -870.29999, posZ = 39.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1323.9, posY = -870.5, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1318.8, posY = -870.5, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1315.1, posY = -870.5, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1326.6, posY = -868.09998, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 89.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1323.8, posY = -868.09998, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1321, posY = -868.09998, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1318.1, posY = -868.09998, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1315.2, posY = -868.09998, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1313.9, posY = -868.29999, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 59.739},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1315.1, posY = -854.29999, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1318.1, posY = -854.40002, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1321, posY = -854.5, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1323.7, posY = -854.59998, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 1326.6, posY = -854.70001, posZ = 38.2, rotX = 0, rotY = 0, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1415, doublesided = true, scale = 1, dimension = 0, posX = 1304.8, posY = -854, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1415, doublesided = true, scale = 1, dimension = 0, posX = 1304.8, posY = -855.90002, posZ = 38.6, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2790, doublesided = false, scale = 1, dimension = 0, posX = 1315.0996, posY = -891.09961, posZ = 44.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2790, doublesided = false, scale = 0.5, dimension = 0, posX = 1304.5, posY = -888.29999, posZ = 41.1, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1325.9, posY = -891.5, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1324.5, posY = -891.5, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1323.1, posY = -891.5, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1325.9, posY = -892.20001, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1324.5, posY = -892.20001, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1323.1, posY = -892.20001, posZ = 39.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3785, doublesided = false, scale = 1, dimension = 0, posX = 1316.7, posY = -891.40002, posZ = 41, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3785, doublesided = false, scale = 1, dimension = 0, posX = 1313.4, posY = -891.40002, posZ = 41, rotX = 0, rotY = 0, rotZ = 270},
}
	
	--2
local loja2 = {
	{type = 'removeWorldObject', radius = 26.629284, interior = 0, model = 5017, lodModel = 4969, posX = 1932.4297, posY = -2123.4062, posZ = 15.94531, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 6.6149273, interior = 0, model = 1226, lodModel = 0, posX = 1943.8129, posY = -2136.2454, posZ = 13.69092, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1940.6, posY = -2138, posZ = 14.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'removeWorldObject', radius = 3.4591658, interior = 0, model = 1532, lodModel = 0, posX = 1939.6538, posY = -2116.0032, posZ = 13.52906, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 6.6149273, interior = 0, model = 1226, lodModel = 0, posX = 1943.9021, posY = -2110.3765, posZ = 13.11685, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2119.6299, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2122.8994, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2119.6299, posZ = 15.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2113.1001, posZ = 15.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2118.5, posZ = 12.899, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2116.3999, posZ = 12.899, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2114.2, posZ = 12.899, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.0996, posY = -2130.5, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2138, posZ = 15.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1934, posY = -2120.6001, posZ = 14.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1935.6, posY = -2138, posZ = 14.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1930.59998, posY = -2138, posZ = 14.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1925.8, posY = -2138, posZ = 14.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1941.6, posY = -2113.1001, posZ = 12.9, rotX = 0, rotY = 90, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1939.4, posY = -2113.1001, posZ = 12.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1937.2, posY = -2113.1001, posZ = 12.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1935, posY = -2113.1001, posZ = 12.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1938.3, posY = -2113.1001, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1938.2998, posY = -2113.0996, posZ = 15.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1934, posY = -2115.7002, posZ = 14.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2123, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1932.5, posY = -2123, posZ = 12.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1930.3, posY = -2123, posZ = 12.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1928.8, posY = -2123, posZ = 12.9, rotX = 0, rotY = 90, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1924.4, posY = -2123, posZ = 12.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1923.4, posY = -2130.5, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1923.4004, posY = -2135.5, posZ = 14.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1923.4, posY = -2125.6001, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4, posY = -2123, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4, posY = -2138, posZ = 15.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1926.5996, posY = -2123, posZ = 12.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1943.0996, posY = -2122.8994, posZ = 15.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2138, posZ = 17.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2123, posZ = 15.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4004, posY = -2123, posZ = 15.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4, posY = -2138, posZ = 17.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1930.3, posY = -2123, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1926.8, posY = -2123, posZ = 15.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1930.3, posY = -2123, posZ = 15.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1926.7998, posY = -2123, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1936, posY = -2113.1001, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1940.6, posY = -2113.1001, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1925.2, posY = -2123, posZ = 14.6, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1928.4, posY = -2123, posZ = 14.6, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1932.1, posY = -2123, posZ = 14.6, rotX = 0, rotY = 90, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2121.3999, posZ = 17.1, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2114.7, posZ = 14.6, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2116.3999, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2116.3994, posZ = 15.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1889, doublesided = true, scale = 1, dimension = 0, posX = 1941.4, posY = -2132.8999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1888, doublesided = true, scale = 1, dimension = 0, posX = 1941.2, posY = -2137.3999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1888, doublesided = true, scale = 1, dimension = 0, posX = 1938.2, posY = -2137.3999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1888, doublesided = true, scale = 1, dimension = 0, posX = 1935.2, posY = -2137.3999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1936.5, posY = -2132.8999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1933.5, posY = -2132.8999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1891, doublesided = false, scale = 1, dimension = 0, posX = 1930.5, posY = -2132.8999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1843, doublesided = true, scale = 1, dimension = 0, posX = 1924, posY = -2124.8999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1843, doublesided = true, scale = 1, dimension = 0, posX = 1932.2, posY = -2137.3999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1888, doublesided = true, scale = 1, dimension = 0, posX = 1924, posY = -2127.8999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 89.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1888, doublesided = true, scale = 1, dimension = 0, posX = 1924, posY = -2133.8999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1843, doublesided = true, scale = 1, dimension = 0, posX = 1924, posY = -2130.8994, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1843, doublesided = true, scale = 1, dimension = 0, posX = 1926.2, posY = -2137.3999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1888, doublesided = true, scale = 1, dimension = 0, posX = 1929.2, posY = -2137.3999, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1842, doublesided = false, scale = 1, dimension = 0, posX = 1929.3, posY = -2128, posZ = 13, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1842, doublesided = false, scale = 1, dimension = 0, posX = 1932.2, posY = -2128, posZ = 13, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1885, doublesided = false, scale = 1, dimension = 0, posX = 1942.5, posY = -2124.8, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1848, doublesided = true, scale = 1, dimension = 0, posX = 1942.4, posY = -2128.3, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 1934.6, posY = -2117.2, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 1935.5, posY = -2117.2, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 1936.4, posY = -2117.2, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 1937.3, posY = -2117.2, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = true, scale = 1, dimension = 0, posX = 1938.2, posY = -2117.2, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 1939.1, posY = -2117.2, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2454, doublesided = false, scale = 1, dimension = 0, posX = 1940, posY = -2117.2, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2369, doublesided = false, scale = 1, dimension = 0, posX = 1938.5, posY = -2116.8999, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2369, doublesided = false, scale = 1, dimension = 0, posX = 1936.6, posY = -2116.8999, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2541, doublesided = true, scale = 1, dimension = 0, posX = 1934.6, posY = -2119.1001, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 90.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2541, doublesided = false, scale = 1, dimension = 0, posX = 1934.6, posY = -2120.1001, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 90.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2542, doublesided = true, scale = 1, dimension = 0, posX = 1942.5, posY = -2124.3, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2500, doublesided = false, scale = 1, dimension = 0, posX = 1934.8, posY = -2117.1001, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2582, doublesided = false, scale = 1, dimension = 0, posX = 1930.3, posY = -2123.7, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2620, doublesided = true, scale = 1, dimension = 0, posX = 1942.3, posY = -2119.6001, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1932.5, posY = -2123, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2123, posZ = 17.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1930.2998, posY = -2123, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1928.7998, posY = -2123, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1926.5996, posY = -2123, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1924.9, posY = -2138, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1932.5, posY = -2123, posZ = 20.4, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1930.2998, posY = -2123, posZ = 20.4, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1928.7998, posY = -2123, posZ = 20.4, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1924.4004, posY = -2123, posZ = 20.4, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1926.5996, posY = -2123, posZ = 20.4, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2123, posZ = 19.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4004, posY = -2123, posZ = 19.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2113.0996, posZ = 19.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2113.0996, posZ = 19.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.0996, posY = -2135.5, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.0996, posY = -2125.5, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2113.1001, posZ = 17.33, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2138, posZ = 19.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4, posY = -2138, posZ = 20.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4004, posY = -2123, posZ = 17.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2113.1001, posZ = 17.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4, posY = -2138, posZ = 12.95, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2138, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2113.1001, posZ = 12.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2113.1001, posZ = 15.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2113.1001, posZ = 12.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1937.2002, posY = -2113.0996, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1941.5996, posY = -2113.0996, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1939.4004, posY = -2113.0996, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2118.5, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2116.3994, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2114.2002, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2122.8999, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4004, posY = -2125, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2131.5, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2133.7, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4004, posY = -2137.1001, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2137.0996, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4004, posY = -2135.8994, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4004, posY = -2133.7002, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4004, posY = -2131.5, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4004, posY = -2129.2988, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4004, posY = -2123.8, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1941.5996, posY = -2138, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1939.4004, posY = -2138, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1937.2002, posY = -2138, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1935, posY = -2138, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1933, posY = -2138, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1930.2998, posY = -2123, posZ = -2138, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1928.7998, posY = -2138, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1926.5996, posY = -2138, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1924.4004, posY = -2123, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1931, posY = -2138, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2114.2002, posZ = 20.4, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2116.3994, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2118.5, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2120.7002, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2121.7, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2120.7002, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2125, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2127.2002, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2129.2988, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2135.8994, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1935, posY = -2113.0996, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2114.2002, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2116.3994, posZ = 20.4, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2118.5, posZ = 20.4, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2121.7002, posZ = 20.4, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2120.7002, posZ = 20.4, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4004, posY = -2127.2002, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1926.5996, posY = -2138, posZ = 16.9, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.1, posY = -2135.5, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.0996, posY = -2130.5, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.09961, posY = -2125.5, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.1, posY = -2115.8, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.0996, posY = -2120.7998, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1936.2, posY = -2113.2, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1934, posY = -2120.5996, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1934, posY = -2115.7002, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1935.5996, posY = -2138, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1930.5996, posY = -2138, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1925.7998, posY = -2138, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1926.2, posY = -2123.1001, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1931.2, posY = -2123.1001, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1923.4004, posY = -2125.5996, posZ = 14.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1923.4004, posY = -2130.5, posZ = 14.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1923.4004, posY = -2135.5, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1938.5, posY = -2117.7, posZ = 20.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1209, doublesided = false, scale = 1, dimension = 0, posX = 1934.3, posY = -2121.5, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 92},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2118.0996, posZ = 14.6, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2121.3999, posZ = 15.4, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.1, posY = -2120.8999, posZ = 15.4, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1938.5, posY = -2126.2, posZ = 20.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1928, posY = -2127.7, posZ = 20.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1930.7, posY = -2127.7, posZ = 20.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1927.9, posY = -2133.3999, posZ = 20.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1935.7, posY = -2133.3999, posZ = 20.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1938.5, posY = -2133.3999, posZ = 20.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 5822, doublesided = true, scale = 1, dimension = 0, posX = 1936.2, posY = -2113.8999, posZ = 15, rotX = 0, rotY = 0, rotZ = 4},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1923.4, posY = -2125.6001, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1923.4004, posY = -2130.5, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1923.4004, posY = -2135.5, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1925.7998, posY = -2138, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1930.5996, posY = -2138, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1935.5996, posY = -2138, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1940.5996, posY = -2138, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1940.5996, posY = -2138, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.0996, posY = -2135.5, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.0996, posY = -2130.5, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.0996, posY = -2125.5, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.0996, posY = -2120.7998, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1943.0996, posY = -2115.7998, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1940.7998, posY = -2113.2002, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1936.2002, posY = -2113.2002, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1934, posY = -2115.7002, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1934, posY = -2120.5996, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1931.2002, posY = -2123.0996, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1926.2002, posY = -2123.0996, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4, posY = -2123, posZ = 20.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1923.4004, posY = -2138, posZ = 19.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2138, posZ = 20.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1943.0996, posY = -2113.0996, posZ = 20.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2113.0996, posZ = 20.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 1934, posY = -2123, posZ = 20.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3785, doublesided = false, scale = 1, dimension = 0, posX = 1943.5, posY = -2122.8999, posZ = 15.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3785, doublesided = false, scale = 1, dimension = 0, posX = 1943.5, posY = -2119.6001, posZ = 15.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1438, doublesided = false, scale = 1, dimension = 0, posX = 1924.9, posY = -2121.6001, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1372, doublesided = true, scale = 1, dimension = 0, posX = 1925.1, posY = -2138.7, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1359, doublesided = false, scale = 1, dimension = 0, posX = 1934.1, posY = -2124, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1370, doublesided = false, scale = 1, dimension = 0, posX = 1933.3, posY = -2122.1001, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1370, doublesided = false, scale = 1, dimension = 0, posX = 1933.3, posY = -2122.1001, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1370, doublesided = false, scale = 1, dimension = 0, posX = 1933.3, posY = -2122.1001, posZ = 15.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1370, doublesided = false, scale = 1, dimension = 0, posX = 1933.6, posY = -2121.3999, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1370, doublesided = false, scale = 1, dimension = 0, posX = 1932.5, posY = -2122.3999, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1370, doublesided = false, scale = 1, dimension = 0, posX = 1933.5, posY = -2121.3999, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1944, posY = -2123.8999, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1944, posY = -2124.7, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1944, posY = -2125.5, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1944, posY = -2127, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1944, posY = -2126.2998, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1941.8, posY = -2114, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1944, posY = -2127.8, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1358, doublesided = true, scale = 1, dimension = 0, posX = 1930.4, posY = -2097.3999, posZ = 13.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1338, doublesided = true, scale = 1, dimension = 0, posX = 1938.4, posY = -2112, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1923.5, posY = -2149.7, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 342},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1922.5, posY = -2147.8, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 9.999},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1265, doublesided = false, scale = 1, dimension = 0, posX = 1923.40002, posY = -2139.1001, posZ = 13, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1265, doublesided = false, scale = 1, dimension = 0, posX = 1924.1, posY = -2139.5, posZ = 13, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1265, doublesided = false, scale = 1, dimension = 0, posX = 1923.8, posY = -2138.3999, posZ = 13, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1265, doublesided = false, scale = 1, dimension = 0, posX = 1920.3, posY = -2089.7, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1265, doublesided = false, scale = 1, dimension = 0, posX = 1920.5, posY = -2090.6001, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1265, doublesided = false, scale = 1, dimension = 0, posX = 1942.7, posY = -2112.1001, posZ = 13, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1265, doublesided = false, scale = 1, dimension = 0, posX = 1941.6, posY = -2112.2, posZ = 13, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1265, doublesided = false, scale = 1, dimension = 0, posX = 1942.1, posY = -2111.6001, posZ = 13, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 3.1421356, interior = 0, model = 1372, lodModel = 0, posX = 1919.7753, posY = -2122.7571, posZ = 13.62843, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2790, doublesided = false, scale = 1, dimension = 0, posX = 1943.2, posY = -2130.6001, posZ = 19.2, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2790, doublesided = false, scale = 1, dimension = 0, posX = 1923.3, posY = -2130.5, posZ = 19.2, rotX = 0, rotY = 0, rotZ = 272},
}
	
	--3
local loja3 = {
	{type = 'removeWorldObject', radius = 4.951889, interior = 0, model = 1231, lodModel = 0, posX = 400.9169, posY = -1535.6672, posZ = 32.69278, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 4.951889, interior = 0, model = 1231, lodModel = 0, posX = 395.0256, posY = -1529.121, posZ = 31.78738, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 4.9006982, interior = 0, model = 1232, lodModel = 0, posX = 412.82175, posY = -1535.0176, posZ = 32.54767, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 4.9006982, interior = 0, model = 1232, lodModel = 0, posX = 400.69592, posY = -1546.8613, posZ = 32.60891, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 4.9006982, interior = 0, model = 1232, lodModel = 0, posX = 391.23276, posY = -1537.4395, posZ = 32.0354, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 4.9006982, interior = 0, model = 1232, lodModel = 0, posX = 404.5759, posY = -1526.7363, posZ = 31.9787, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 4.9006982, interior = 0, model = 1232, lodModel = 0, posX = 394.64932, posY = -1516.3457, posZ = 32.62195, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 4.9006982, interior = 0, model = 1232, lodModel = 0, posX = 381.47586, posY = -1527.0327, posZ = 31.80057, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 399, posY = -1543.8, posZ = 33.3, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 409.7002, posY = -1533.2998, posZ = 33.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 401.60001, posY = -1543.8, posZ = 32.4, rotX = 0, rotY = 0, rotZ = 45},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 401.60001, posY = -1543.8, posZ = 34.6, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 402.60001, posY = -1542.8, posZ = 31.6, rotX = 90, rotY = 0, rotZ = 135},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 403.60001, posY = -1541.8, posZ = 31.6, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 404.5, posY = -1540.9, posZ = 32.4, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 404.5, posY = -1540.9, posZ = 34.6, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 406.7998, posY = -1538.5996, posZ = 32.4, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 402.90039, posY = -1542.4004, posZ = 33.4, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 407.39999, posY = -1538, posZ = 31.6, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 408.79999, posY = -1536.6, posZ = 31.6, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 409.70001, posY = -1535.8, posZ = 32.4, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 408.20001, posY = -1537.1, posZ = 33.5, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 406.79999, posY = -1538.6, posZ = 34.6, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 409.70001, posY = -1535.8, posZ = 34.6, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 409.5, posY = -1530.6, posZ = 32.4, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 409.5, posY = -1530.6, posZ = 34.6, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 407.5, posY = -1528.6, posZ = 33.3, rotX = 0, rotY = 0, rotZ = 45},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 404, posY = -1525.1, posZ = 33.3, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 400.5, posY = -1521.6, posZ = 33.3, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 396.70001, posY = -1521.8, posZ = 33.3, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 398.70001, posY = -1519.9, posZ = 32.4, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 398.70001, posY = -1519.9, posZ = 34.6, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 393.20001, posY = -1525.3, posZ = 33.3, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 389.70001, posY = -1528.8, posZ = 33.3, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 387.39999, posY = -1531.1, posZ = 33.3, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 394.5, posY = -1541.7002, posZ = 33.3, rotX = 0, rotY = 0, rotZ = 225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 396.39999, posY = -1543.6, posZ = 32.4, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 396.39999, posY = -1543.6, posZ = 34.6, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 391, posY = -1538.2, posZ = 33.3, rotX = 0, rotY = 0, rotZ = 225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 387.5, posY = -1534.7, posZ = 33.3, rotX = 0, rotY = 0, rotZ = 225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 385.70001, posY = -1532.9, posZ = 32.4, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 385.7002, posY = -1532.9004, posZ = 34.6, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 408.79999, posY = -1536.6, posZ = 35.4, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 407.39999, posY = -1538, posZ = 35.4, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 403.60001, posY = -1541.8, posZ = 35.4, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 402.60001, posY = -1542.8, posZ = 35.4, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 405.20001, posY = -1540.2, posZ = 35.4, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 406.10001, posY = -1539.3, posZ = 35.4, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 407.89999, posY = -1537.5, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 409.70001, posY = -1533.3, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 409.70001, posY = -1535.8, posZ = 36.8, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 409.70001, posY = -1535.8, posZ = 38.3, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 405.5, posY = -1539.9, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 403.20001, posY = -1542.2, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 401.60001, posY = -1543.8, posZ = 36.8, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 401.60001, posY = -1543.8, posZ = 38.3, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 399, posY = -1543.8, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 396.39999, posY = -1543.6, posZ = 36.8, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 396.39999, posY = -1543.6, posZ = 38.3, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 394.5, posY = -1541.7, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 391, posY = -1538.2, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 387.5, posY = -1534.7002, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 385.70001, posY = -1532.9, posZ = 36.8, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 385.70001, posY = -1532.9, posZ = 38.3, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 387.39999, posY = -1531.1, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 389.70001, posY = -1528.8, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 393.20001, posY = -1525.3, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 396.70001, posY = -1521.8, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 398.70001, posY = -1519.9, posZ = 36.8, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 398.70001, posY = -1519.9, posZ = 38.3, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 409.5, posY = -1530.6, posZ = 36.8, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 409.5, posY = -1530.6, posZ = 38.3, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 407.5, posY = -1528.6, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 404, posY = -1525.1, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 400.5, posY = -1521.6, posZ = 37.1, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 0.80000001, dimension = 0, posX = 405.7002, posY = -1539.7002, posZ = 35.2, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 408.79999, posY = -1536.6, posZ = 39, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 407.39999, posY = -1538, posZ = 39, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 406.10001, posY = -1539.3, posZ = 39, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 405.20001, posY = -1540.2, posZ = 39, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 403.60001, posY = -1541.8, posZ = 39, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 402.60001, posY = -1542.8, posZ = 39, rotX = 90, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 398.89999, posY = -1541.8, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 269},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 401.79999, posY = -1540.5, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 405.29999, posY = -1537, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 407.70001, posY = -1533.1, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 0.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 406.39999, posY = -1535.9, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 406.10001, posY = -1530.7, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 402.60001, posY = -1534.2, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 399.10001, posY = -1537.69995, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 396.60001, posY = -1540.2, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 393.79999, posY = -1537.4, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 397.29999, posY = -1533.9, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 400.79999, posY = -1530.4, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 403.29999, posY = -1527.9, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 400.5, posY = -1525.1, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 397, posY = -1528.6, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 393.5, posY = -1532.1, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 391, posY = -1534.6, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 388.89999, posY = -1532.5, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 392.39999, posY = -1529, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 395.89999, posY = -1525.5, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 398.39999, posY = -1523, posZ = 38.9, rotX = 0, rotY = 270, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 18092, doublesided = true, scale = 1, dimension = 0, posX = 393.29999, posY = -1528.1, posZ = 31.8, rotX = 0, rotY = 0, rotZ = 224},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2624, doublesided = true, scale = 1, dimension = 0, posX = 389.20001, posY = -1533.2, posZ = 32.9, rotX = 0, rotY = 0, rotZ = 136},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2625, doublesided = true, scale = 1, dimension = 0, posX = 391.20001, posY = -1537.7, posZ = 32.6, rotX = 0, rotY = 0, rotZ = 136},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2698, doublesided = false, scale = 1, dimension = 0, posX = 393.5, posY = -1539.3, posZ = 32.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2623, doublesided = true, scale = 1, dimension = 0, posX = 404.29999, posY = -1527.5, posZ = 32.8, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2626, doublesided = true, scale = 1, dimension = 0, posX = 398.70001, posY = -1522.5, posZ = 31.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2652, doublesided = true, scale = 0.5, dimension = 0, posX = 399.39999, posY = -1522.5, posZ = 32.6, rotX = 0, rotY = 0, rotZ = 42},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2384, doublesided = false, scale = 1, dimension = 0, posX = 403.60001, posY = -1528.2, posZ = 32.2, rotX = 0, rotY = 0, rotZ = 45},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2384, doublesided = false, scale = 1, dimension = 0, posX = 394.60001, posY = -1526.6, posZ = 32.4, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2384, doublesided = false, scale = 1, dimension = 0, posX = 395, posY = -1527, posZ = 32.4, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2384, doublesided = false, scale = 1, dimension = 0, posX = 394.79999, posY = -1526.8, posZ = 32.6, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2371, doublesided = false, scale = 1, dimension = 0, posX = 407.70001, posY = -1533.8, posZ = 31.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 407.39999, posY = -1533.2, posZ = 32, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 408.10001, posY = -1533.2, posZ = 32, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2380, doublesided = true, scale = 1, dimension = 0, posX = 409.60001, posY = -1533.3, posZ = 32.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2377, doublesided = false, scale = 1, dimension = 0, posX = 394.5, posY = -1541.2, posZ = 31.8, rotX = 0, rotY = 0, rotZ = 135},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2378, doublesided = false, scale = 1, dimension = 0, posX = 393.79999, posY = -1540.6, posZ = 31.8, rotX = 0, rotY = 0, rotZ = 135},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2378, doublesided = false, scale = 1, dimension = 0, posX = 393.79999, posY = -1540.6, posZ = 32.8, rotX = 0, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2377, doublesided = false, scale = 1, dimension = 0, posX = 394.5, posY = -1541.2, posZ = 32.8, rotX = 0, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2378, doublesided = false, scale = 1, dimension = 0, posX = 395.10001, posY = -1541.9, posZ = 31.8, rotX = 0, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2378, doublesided = false, scale = 1, dimension = 0, posX = 395.10001, posY = -1541.9, posZ = 32.8, rotX = 0, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2377, doublesided = false, scale = 1, dimension = 0, posX = 395.79999, posY = -1542.5, posZ = 31.8, rotX = 0, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2377, doublesided = false, scale = 1, dimension = 0, posX = 395.79999, posY = -1542.5, posZ = 32.8, rotX = 0, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2372, doublesided = true, scale = 1, dimension = 0, posX = 402.20001, posY = -1542.2, posZ = 31.3, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2382, doublesided = true, scale = 1, dimension = 0, posX = 402.10001, posY = -1542, posZ = 32, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2382, doublesided = true, scale = 1, dimension = 0, posX = 402.79999, posY = -1541.3, posZ = 32, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2625, doublesided = true, scale = 1, dimension = 0, posX = 399.10001, posY = -1543.3, posZ = 32.6, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2371, doublesided = false, scale = 1, dimension = 0, posX = 401, posY = -1535.8, posZ = 31.3, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2371, doublesided = false, scale = 1, dimension = 0, posX = 399, posY = -1533.8, posZ = 31.3, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2371, doublesided = false, scale = 1, dimension = 0, posX = 396.89999, posY = -1531.8, posZ = 31.3, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2371, doublesided = false, scale = 1, dimension = 0, posX = 398.29999, posY = -1538.4, posZ = 31.3, rotX = 0, rotY = 0, rotZ = 45},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2371, doublesided = false, scale = 1, dimension = 0, posX = 395.29999, posY = -1535.4, posZ = 31.3, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 401.70001, posY = -1535.6, posZ = 32, rotX = 0, rotY = 0, rotZ = 45},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 401.20001, posY = -1535.2, posZ = 32, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 399.20001, posY = -1533.2, posZ = 32, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 397.60001, posY = -1531.6, posZ = 32, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 397.10001, posY = -1531.2, posZ = 32, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 395.10001, posY = -1534.7, posZ = 32, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 394.70001, posY = -1535.2, posZ = 32, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 397.70001, posY = -1538.2, posZ = 32, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 398.10001, posY = -1537.7, posZ = 32, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2373, doublesided = true, scale = 1, dimension = 0, posX = 401.79999, posY = -1522.8, posZ = 31.3, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 402.20001, posY = -1523.9, posZ = 31.9, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2622, doublesided = false, scale = 1, dimension = 0, posX = 395.39999, posY = -1526.2, posZ = 32.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2622, doublesided = false, scale = 1, dimension = 0, posX = 391.29999, posY = -1530.2, posZ = 32.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2384, doublesided = false, scale = 1, dimension = 0, posX = 386.60001, posY = -1532.5, posZ = 32.1, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2384, doublesided = false, scale = 1, dimension = 0, posX = 388, posY = -1531.0996, posZ = 32.1, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2384, doublesided = false, scale = 1, dimension = 0, posX = 387.79999, posY = -1534.4, posZ = 32.1, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2593, doublesided = true, scale = 1, dimension = 0, posX = 406.20001, posY = -1537.9, posZ = 32.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2593, doublesided = true, scale = 1, dimension = 0, posX = 403.79999, posY = -1540.1, posZ = 32.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2705, doublesided = false, scale = 1, dimension = 0, posX = 403.79999, posY = -1540.3, posZ = 31.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2705, doublesided = false, scale = 1, dimension = 0, posX = 403.79999, posY = -1540.2, posZ = 31.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2705, doublesided = false, scale = 1, dimension = 0, posX = 403.79999, posY = -1540, posZ = 31.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2705, doublesided = false, scale = 1, dimension = 0, posX = 403.79999, posY = -1539.9, posZ = 31.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2705, doublesided = false, scale = 1, dimension = 0, posX = 403.79999, posY = -1540.3, posZ = 32.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2705, doublesided = false, scale = 1, dimension = 0, posX = 403.79999, posY = -1540.2, posZ = 32.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2705, doublesided = false, scale = 1, dimension = 0, posX = 403.79999, posY = -1540, posZ = 32.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2705, doublesided = false, scale = 1, dimension = 0, posX = 403.79999, posY = -1539.9, posZ = 32.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2698, doublesided = false, scale = 1, dimension = 0, posX = 400.5, posY = -1526.5, posZ = 32.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2698, doublesided = false, scale = 1, dimension = 0, posX = 397.39999, posY = -1525.6, posZ = 32.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2698, doublesided = false, scale = 1, dimension = 0, posX = 406.79999, posY = -1530.3, posZ = 32.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2622, doublesided = false, scale = 1, dimension = 0, posX = 398.39999, posY = -1530.3, posZ = 32.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2622, doublesided = false, scale = 1, dimension = 0, posX = 400.39999, posY = -1536.5, posZ = 32.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2384, doublesided = false, scale = 1, dimension = 0, posX = 391.70001, posY = -1529.3, posZ = 32.4, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2384, doublesided = false, scale = 1, dimension = 0, posX = 392.10001, posY = -1529.7, posZ = 32.4, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2384, doublesided = false, scale = 1, dimension = 0, posX = 391.89999, posY = -1529.5, posZ = 32.6, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2790, doublesided = false, scale = 1, dimension = 0, posX = 405.70001, posY = -1539.8, posZ = 37.2, rotX = 0, rotY = 0, rotZ = 45},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 399.70001, posY = -1533.6, posZ = 32, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2622, doublesided = false, scale = 1, dimension = 0, posX = 402.5, posY = -1534.2998, posZ = 32.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2622, doublesided = false, scale = 1, dimension = 0, posX = 400.5, posY = -1532.2998, posZ = 32.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2790, doublesided = false, scale = 1, dimension = 0, posX = 391.89999, posY = -1526.7, posZ = 35.2, rotX = 0, rotY = 0, rotZ = 45},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3785, doublesided = false, scale = 1, dimension = 0, posX = 407.10001, posY = -1538.9, posZ = 33.7, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3785, doublesided = false, scale = 1, dimension = 0, posX = 404.79999, posY = -1541.2, posZ = 33.7, rotX = 0, rotY = 0, rotZ = 315},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 395, posY = -1523, posZ = 30.6, rotX = 0, rotY = 0, rotZ = 45},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 388.79999, posY = -1529.2, posZ = 30.6, rotX = 0, rotY = 0, rotZ = 44.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 383.39999, posY = -1530.7, posZ = 30.9, rotX = 0, rotY = 0, rotZ = 135},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 385.89999, posY = -1528.3, posZ = 30.9, rotX = 0, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 388.39999, posY = -1525.8, posZ = 30.9, rotX = 0, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 390.89999, posY = -1523.3, posZ = 30.9, rotX = 0, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 393.39999, posY = -1520.8, posZ = 30.9, rotX = 0, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 396.70001, posY = -1517.6, posZ = 30.9, rotX = 0, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 395.60001, posY = -1518.7, posZ = 30.9, rotX = 0, rotY = 0, rotZ = 134.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 394.60001, posY = -1519.8, posZ = 30.9, rotX = 0, rotY = 0, rotZ = 134.995},
}

	--4
local loja4 = {
	{type = 'removeWorldObject', radius = 34.463009, interior = 0, model = 4594, lodModel = 4606, posX = 1825, posY = -1413.9297, posZ = 12.55469, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1439, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1439, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1437.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 180},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1832.5, posY = -1436.9, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1435.8, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1434.5, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1434.5, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1435.8, posZ = 16.6, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1437.5, posZ = 16.6, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1431.2, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1431.2, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1429.7998, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1427.6, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1426.4004, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1426.4004, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1429.8, posZ = 16.6, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1427.6, posZ = 16.6, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1432, posZ = 16.6, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1433.6, posZ = 16.6, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1831, posY = -1439, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1829.3, posY = -1439, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1828, posY = -1439, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1828, posY = -1439, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1832.5, posY = -1428.7998, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1829.3, posY = -1439, posZ = 16.6, rotX = 90, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1831, posY = -1439, posZ = 16.6, rotX = 90, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1830.4, posY = -1439, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1824.7, posY = -1439, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1824.7002, posY = -1439, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1827.0996, posY = -1439, posZ = 16.6, rotX = 90, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1825.4, posY = -1439, posZ = 16.6, rotX = 90, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1823.2, posY = -1439, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1821, posY = -1439, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1819.8, posY = -1439, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1819.8, posY = -1439, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1823.2, posY = -1439, posZ = 16.6, rotX = 90, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1821, posY = -1439, posZ = 16.6, rotX = 90, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1822.2, posY = -1439, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1817, posY = -1439, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1812, posY = -1439, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1817, posY = -1439, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1819.8, posY = -1439, posZ = 18, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1819.8, posY = -1439, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1822.5996, posY = -1439, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1827.6, posY = -1439, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1830, posY = -1439, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1439, posZ = 18, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1439, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1812, posY = -1439, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1439, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1439, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1439, posZ = 18, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1439, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1436.3, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1431.3, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1428.7, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1426.4, posZ = 18, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1426.4, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1423.7002, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1418.7, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1415.8, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1413.5, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1413.5, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1413.5, posZ = 18, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1423.7, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1418.7, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1415.8, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1413.5, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1829.7002, posY = -1413.5, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1824.7002, posY = -1413.5, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1819.7, posY = -1413.5, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1814.7, posY = -1413.5, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1809.4004, posY = -1436.2002, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1809.4004, posY = -1431.2002, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1426.2, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1421.2, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1416.2, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1812, posY = -1413.5, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1413.5, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1413.5, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1413.5, posZ = 18, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1829.7, posY = -1413.5, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1824.7, posY = -1413.5, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1819.7, posY = -1413.5, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1814.7, posY = -1413.5, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1812, posY = -1413.5, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1413.5, posZ = 19.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1416.2, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1421.2, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1426.2, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1431.2, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1809.4, posY = -1436.2, posZ = 18.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1828.3, posY = -1434.8, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 0.69999999, dimension = 0, posX = 1832.5, posY = -1432.8, posZ = 16.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1819.2998, posY = -1434.5996, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1813.80005, posY = -1434.5, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1828, posY = -1425.80005, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1819, posY = -1425.8, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1813.8, posY = -1425.8, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1813.8, posY = -1417.9, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1822.7998, posY = -1417.90039, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1828, posY = -1417.9004, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 0.69999999, dimension = 0, posX = 1826.4, posY = -1439, posZ = 16.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1828.3, posY = -1408.9, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1828.2998, posY = -1399.9004, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1819.3, posY = -1399.9, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1810.3, posY = -1399.9, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1819.3, posY = -1408.9, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1810.3, posY = -1408.9, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1828.3, posY = -1395.7, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1819.3, posY = -1395.7, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1810.3, posY = -1395.7, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1412.1, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1409.9, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1407.7, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1405.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1404.2, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.5, posY = -1403.3, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.6, posY = -1394.4, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 359.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.6, posY = -1392.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 359.989},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.6, posY = -1391.5, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1831.1, posY = -1391.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.989},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1828.9, posY = -1391.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.984},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1826.7, posY = -1391.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.984},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1824.5, posY = -1391.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.984},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1822.3, posY = -1391.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.984},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1820.1, posY = -1391.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.984},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1817.9, posY = -1391.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.984},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1815.7, posY = -1391.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.984},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1813.5, posY = -1391.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.984},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1811.3, posY = -1391.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.984},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1809.1, posY = -1391.5, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 269.984},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1412, doublesided = true, scale = 1, dimension = 0, posX = 1832.5, posY = -1405.9, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1412, doublesided = true, scale = 1, dimension = 0, posX = 1832.5, posY = -1411.2, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1412, doublesided = true, scale = 1, dimension = 0, posX = 1832.6, posY = -1393.8, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.6, posY = -1396.3, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 1832.6, posY = -1395.3, posZ = 12.9, rotX = 90, rotY = 0, rotZ = 359.989},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1412, doublesided = true, scale = 1, dimension = 0, posX = 1829.7, posY = -1391.5, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1412, doublesided = true, scale = 1, dimension = 0, posX = 1824.4, posY = -1391.5, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1412, doublesided = true, scale = 1, dimension = 0, posX = 1819.1, posY = -1391.5, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1412, doublesided = true, scale = 1, dimension = 0, posX = 1813.8, posY = -1391.5, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1412, doublesided = true, scale = 1, dimension = 0, posX = 1808.5, posY = -1391.5, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1833, posY = -1396.4, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1833.5, posY = -1396.4, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1834, posY = -1396.4, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1834.5, posY = -1396.4, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1835, posY = -1396.4, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1835.5, posY = -1396.4, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1836, posY = -1396.4, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1836.5, posY = -1396.4, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1833, posY = -1401.1, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1833.5, posY = -1401.1, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1834, posY = -1401.1, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1834.5, posY = -1401.1, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1835, posY = -1401.1, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1835.5, posY = -1401.1, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1836, posY = -1401.1, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 1836.5, posY = -1401.1, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1830.4, posY = -1436.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 1823.5, posY = -1411, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 1820.5, posY = -1411, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 1817.5, posY = -1411.1, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 1814.4, posY = -1411.1, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 1810.4, posY = -1405.8, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 1810.4, posY = -1402.7, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 1810.4, posY = -1399.6, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 1810.4, posY = -1396.9, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 1826.5996, posY = -1411, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1830.4, posY = -1431.6, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1830.4, posY = -1426.6, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1830.4, posY = -1421.6, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1826.4, posY = -1421.6, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1826.40039, posY = -1426.59961, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1826.4, posY = -1431.6, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1826.4, posY = -1436.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1822.4, posY = -1436.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1822.4004, posY = -1431.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1822.4, posY = -1426.6, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1818.4, posY = -1436.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1814.4, posY = -1436.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1811.5, posY = -1436.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1811.5, posY = -1431.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1815.5, posY = -1431.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1818.4, posY = -1431.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1818.4, posY = -1426.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1815.5, posY = -1426.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1811.5, posY = -1426.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1818.4004, posY = -1421.5996, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1815.5, posY = -1421.5996, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1811.5, posY = -1421.6, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = false, interior = 0, collisions = true, alpha = 255, model = 1412, doublesided = true, scale = 1, dimension = 0, posX = 1809, posY = -1413.5, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1827.8, posY = -1418.3, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1830.7998, posY = -1418.2998, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1818.8, posY = -1418.3, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1821.7998, posY = -1418.2998, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1889, doublesided = false, scale = 1, dimension = 0, posX = 1811.1, posY = -1418.3, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2366, doublesided = false, scale = 1, dimension = 0, posX = 1818.8, posY = -1437.6, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1890, doublesided = false, scale = 1, dimension = 0, posX = 1818.8, posY = -1422.9, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1890, doublesided = false, scale = 1, dimension = 0, posX = 1821.8, posY = -1422.9, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1890, doublesided = false, scale = 1, dimension = 0, posX = 1824.8, posY = -1422.9, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1890, doublesided = false, scale = 1, dimension = 0, posX = 1830.8, posY = -1422.9, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1883, doublesided = true, scale = 1, dimension = 0, posX = 1813.5, posY = -1426, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1883, doublesided = true, scale = 1, dimension = 0, posX = 1813.5, posY = -1429.8, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1883, doublesided = true, scale = 1, dimension = 0, posX = 1813.5, posY = -1422.2, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2484, doublesided = true, scale = 1, dimension = 0, posX = 1819.1, posY = -1437.2, posZ = 14.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2578, doublesided = false, scale = 1, dimension = 0, posX = 1832.3, posY = -1424.6, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 272},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2771, doublesided = false, scale = 1, dimension = 0, posX = 1821.5, posY = -1435, posZ = 14, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1888, doublesided = false, scale = 1, dimension = 0, posX = 1811.5, posY = -1414.1, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1888, doublesided = false, scale = 1, dimension = 0, posX = 1809.9, posY = -1436.8, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1885, doublesided = false, scale = 1, dimension = 0, posX = 1831.8, posY = -1426.9, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1885, doublesided = false, scale = 1, dimension = 0, posX = 1831.8, posY = -1427.4, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1885, doublesided = false, scale = 1, dimension = 0, posX = 1831.8, posY = -1427.9, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1885, doublesided = false, scale = 1, dimension = 0, posX = 1831.8, posY = -1428.4, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1887, doublesided = false, scale = 1, dimension = 0, posX = 1817.5, posY = -1414.1, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1887, doublesided = false, scale = 1, dimension = 0, posX = 1820.8, posY = -1414.2, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1887, doublesided = false, scale = 1, dimension = 0, posX = 1823.8, posY = -1414.2, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1888, doublesided = false, scale = 1, dimension = 0, posX = 1827.3, posY = -1414.1, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1888, doublesided = false, scale = 1, dimension = 0, posX = 1830.3, posY = -1414.1, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1888, doublesided = false, scale = 1, dimension = 0, posX = 1814.5, posY = -1414.0996, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1888, doublesided = false, scale = 1, dimension = 0, posX = 1809.9, posY = -1433.9, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2542, doublesided = true, scale = 1, dimension = 0, posX = 1813.1, posY = -1438.4, posZ = 12.9, rotX = 0, rotY = 0, rotZ = 178},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 1823.1, posY = -1435.1, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 1822.2, posY = -1435.1, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 1821.3, posY = -1435.1, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2771, doublesided = false, scale = 1, dimension = 0, posX = 1822.7, posY = -1435, posZ = 14, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1993, doublesided = false, scale = 1, dimension = 0, posX = 1824, posY = -1436.1, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1993, doublesided = false, scale = 1, dimension = 0, posX = 1824, posY = -1437.1, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1995, doublesided = false, scale = 1, dimension = 0, posX = 1824, posY = -1438.1, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1994, doublesided = false, scale = 1, dimension = 0, posX = 1824, posY = -1435.1, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1822.4004, posY = -1431.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1302, doublesided = false, scale = 1, dimension = 0, posX = 1814.8, posY = -1438.6, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 178},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1302, doublesided = false, scale = 1, dimension = 0, posX = 1816, posY = -1438.6, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 177.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1818.4, posY = -1430.3, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1359, doublesided = false, scale = 1, dimension = 0, posX = 1831.5, posY = -1437.9, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1819.8, posY = -1430.3, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1821.2, posY = -1430.3, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1818.4, posY = -1429.5, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1818.4, posY = -1428.7, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1818.4, posY = -1427.9, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1818.4, posY = -1427.1, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1818.4, posY = -1426.3, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1819.7, posY = -1429.5, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1819.7, posY = -1428.7, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1819.7, posY = -1427.9, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1819.7, posY = -1427.1, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1819.7, posY = -1426.3, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1821.2, posY = -1429.5, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1817.5996, posY = -1428.2998, posZ = 14.6, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 1821.2, posY = -1428.7, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1994, doublesided = false, scale = 1, dimension = 0, posX = 1824, posY = -1435.0996, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1822.2, posY = -1421.7, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1824.6, posY = -1421.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1830.5, posY = -1416.5, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1826.9, posY = -1416.9, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1823.3, posY = -1417.3, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1819.8, posY = -1417, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1816.8, posY = -1416.7, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1813.2, posY = -1417.1, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1811.5, posY = -1416.9, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1812.1, posY = -1415.7, posZ = 17, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1816.7, posY = -1415.6, posZ = 17, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1821.2, posY = -1415.6, posZ = 17, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1826, posY = -1415.6, posZ = 17, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1830, posY = -1415.6, posZ = 17, rotX = 0, rotY = 270, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16500, doublesided = false, scale = 1, dimension = 0, posX = 1830.6, posY = -1417.3, posZ = 17, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1811.8, posY = -1439.1, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1820.3, posY = -1439.1, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1828.7, posY = -1439.1, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1831, posY = -1439.1, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1831, posY = -1430.1, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1831, posY = -1421.5, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1831, posY = -1414.8, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1811.8, posY = -1430.9, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1811.8, posY = -1422.5, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1811.8, posY = -1414.8, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1820.8, posY = -1430.3, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1827.3, posY = -1430.2, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1822.2, posY = -1421.2, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1818.2, posY = -1421.4, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1820.1, posY = -1414.8, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1824.1, posY = -1415.3, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1824.0996, posY = -1414.8, posZ = 20.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2790, doublesided = false, scale = 1, dimension = 0, posX = 1832.94, posY = -1432.87, posZ = 18.75, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2790, doublesided = false, scale = 1, dimension = 0, posX = 1826.25, posY = -1439.25, posZ = 18.75, rotX = 0, rotY = 0, rotZ = 0},
}


function ahsd82hdsn ()
temporizador = {}
	function inicioCliente (jogador)
		if PUNKSTUDIOSkoasd9jaindsaj == false then return end
		if not isElement(jogador) then jogador = source end
		if table.contain (jogadoresProntos, jogador) then
		triggerClientEvent (jogador, "PUNKMapaLojasLSClient", jogador, loja1, loja2, loja3, loja4)
		else
		local str = jogador
			temporizador[str] = setTimer (function ()
				if isElement (jogador) then
					if table.contain (jogadoresProntos, jogador) then
					triggerClientEvent (jogador, "PUNKMapaLojasLSClient", jogador, loja1, loja2, loja3, loja4)
						if isTimer (temporizador[str]) then
						killTimer (temporizador[str])
						end
					end
				else
				killTimer (temporizador[str])
				end
			end, 1000 , 0)
		end
	end
	addEventHandler ("onPlayerJoin", getRootElement(), inicioCliente)
	local jogadores = getElementsByType ("player")
	for i=1, #jogadores do
	inicioCliente (jogadores[i])
	end
end

end
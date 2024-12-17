--Produto
PUNKSTUDIOSkoasd9jaindsaj = false local codigoProduto = "lojasLV"

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
addEvent ("PUNKMapaLojasLVClient", true)
addEventHandler ("PUNKMapaLojasLVClient", getRootElement (), criarMapa)


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

--1
local loja1 = {
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2641.7998, posY = 1323.2998, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2650, posY = 1323.2998, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2658.1006, posY = 1323.2998, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2672.3, posY = 1327.5, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 179.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2641.7, posY = 1360.2, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 269.997},
	{type = 'removeWorldObject', radius = 7.969655, interior = 0, model = 1294, lodModel = 0, posX = 2632.8076, posY = 1343.2708, posZ = 11.8643, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11505, doublesided = false, scale = 1, dimension = 0, posX = 2647.7998, posY = 1346.4004, posZ = 14, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11505, doublesided = false, scale = 1, dimension = 0, posX = 2647.8, posY = 1335.6, posZ = 14, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2643.1001, posY = 1346.6, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2643.1001, posY = 1344.3, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 270.242},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2643.1001, posY = 1344.3, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2643.1001, posY = 1346.6, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2643.1001, posY = 1339.4, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2643.1001, posY = 1333.8, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 269.997},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2643.1001, posY = 1333.8, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2643.1001, posY = 1335.6, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 269.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2645.9004, posY = 1330.7998, posZ = 14.3, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2645.8, posY = 1330.8, posZ = 11.9, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2647.3, posY = 1330.8, posZ = 11.9, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2649.5, posY = 1330.7998, posZ = 14.3, rotX = 0, rotY = 0, rotZ = 180.242},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2652.3, posY = 1333.7, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2652.2998, posY = 1333.7002, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2652.3, posY = 1339.2, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2652.3, posY = 1339.2, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2652.3, posY = 1344.8, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2652.3, posY = 1344.8, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2649.5, posY = 1349.4, posZ = 11.9, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2645.8, posY = 1349.4, posZ = 11.9, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2645.8, posY = 1349.4, posZ = 14.3, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3033, doublesided = false, scale = 1, dimension = 0, posX = 2649.5, posY = 1349.4, posZ = 14.3, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2636.80005, posY = 1327.09998, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2645.4004, posY = 1327.0996, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2653.8, posY = 1327.1, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2656.3999, posY = 1327.1, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2659.1001, posY = 1333.9, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2657.1001, posY = 1333.9, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2659, posY = 1342.9, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2658.8999, posY = 1351.4, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2657, posY = 1342.4, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2656.8999, posY = 1351.4, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2656.8999, posY = 1354.2, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2658.8999, posY = 1354.2, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2650.2, posY = 1356.9, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 180.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2641.5, posY = 1356.8, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 180.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2636.8, posY = 1356.7, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 179.492},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2641.8999, posY = 1352.7, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 180.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2650.8, posY = 1352.8, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 180.497},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2646.2002, posY = 1324.7002, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2653.6001, posY = 1324.8, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 91},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2660.6001, posY = 1351.5, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 180.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2653, posY = 1358.7, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2646.2002, posY = 1358.7002, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 270.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2650, posY = 1360.2, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2657.7002, posY = 1360.2002, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2645.3999, posY = 1329.19995, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2654, posY = 1339.4004, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 180.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2654, posY = 1342.1, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 180.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2646.2, posY = 1351.1, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 270.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2636.8, posY = 1352.6, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 180.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2645.2, posY = 1351.1, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 270.5},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3568, doublesided = false, scale = 1.3, dimension = 0, posX = 2638.6006, posY = 1340.7002, posZ = 6.6, rotX = 0, rotY = 0, rotZ = 0.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2645.6001, posY = 1324.6, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2628.2002, posY = 1327.0996, posZ = 7.4, rotX = 0, rotY = 347.992, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3568, doublesided = false, scale = 1.3, dimension = 0, posX = 2640.8999, posY = 1340.9, posZ = 6.6, rotX = 0, rotY = 0, rotZ = 0.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 2643.3, posY = 1349.2, posZ = 2.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 2643.2, posY = 1342, posZ = 2.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 2643.1001, posY = 1338.2, posZ = 2.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 2643.2, posY = 1331, posZ = 3.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 2652.2, posY = 1331.1, posZ = 2.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 18001, doublesided = true, scale = 1, dimension = 0, posX = 2652.3, posY = 1335.3, posZ = 13.9, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 18001, doublesided = true, scale = 1, dimension = 0, posX = 2652.3, posY = 1343.5, posZ = 13.9, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 2652.3999, posY = 1338.2, posZ = 2.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 2652.3999, posY = 1341.3, posZ = 2.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 2652.3999, posY = 1339.8, posZ = 2.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 2652, posY = 1349.1, posZ = 3.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 18001, doublesided = true, scale = 1, dimension = 0, posX = 2652.3, posY = 1348.3, posZ = 10.5, rotX = 0, rotY = 90, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1687, doublesided = false, scale = 1, dimension = 0, posX = 2652.1001, posY = 1348.8, posZ = 16.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1687, doublesided = false, scale = 1, dimension = 0, posX = 2652.1001, posY = 1349.1, posZ = 16.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1687, doublesided = false, scale = 1, dimension = 0, posX = 2643.3, posY = 1330.9, posZ = 16.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1687, doublesided = false, scale = 1, dimension = 0, posX = 2643.3, posY = 1331.3, posZ = 16.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1691, doublesided = false, scale = 1, dimension = 0, posX = 2647.8, posY = 1340.4, posZ = 16.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 927, doublesided = false, scale = 1, dimension = 0, posX = 2653.3, posY = 1340.9, posZ = 10.9, rotX = 0, rotY = 0, rotZ = 88.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 920, doublesided = false, scale = 1, dimension = 0, posX = 2653.5, posY = 1339.7, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 920, doublesided = false, scale = 1, dimension = 0, posX = 2653.5, posY = 1341.7, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 914, doublesided = false, scale = 1, dimension = 0, posX = 2653.8, posY = 1339.6, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 914, doublesided = false, scale = 1, dimension = 0, posX = 2653.8, posY = 1340.7, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 914, doublesided = false, scale = 1, dimension = 0, posX = 2653.8, posY = 1341.6, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 920, doublesided = false, scale = 1, dimension = 0, posX = 2653.5, posY = 1341.7, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 914, doublesided = false, scale = 1, dimension = 0, posX = 2653.2, posY = 1342.1, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 0.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 914, doublesided = false, scale = 1, dimension = 0, posX = 2652.8, posY = 1342.1, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 0.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 914, doublesided = false, scale = 1, dimension = 0, posX = 2653.3, posY = 1339, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 180.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3805, doublesided = false, scale = 1, dimension = 0, posX = 2653.2, posY = 1338.5, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3805, doublesided = false, scale = 1, dimension = 0, posX = 2653.2, posY = 1340.8, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 2666.5, posY = 1342.5, posZ = 9.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2663.2, posY = 1338.2, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2662.5, posY = 1351.5, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 180.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2663.5, posY = 1344.4, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2670.7, posY = 1334.3, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 0.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2670.7, posY = 1330.3, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 0.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2661.7, posY = 1324.8, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2664.7, posY = 1327.1, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2664.7, posY = 1331.1, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2664.7, posY = 1335, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2664.7, posY = 1339.2, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2664.7, posY = 1340.4, posZ = 8.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2659.3999, posY = 1360.2, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2666.3999, posY = 1323.3, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2668.2, posY = 1323.3, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2672.2, posY = 1335.8, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 180.997},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2672.1001, posY = 1341.6, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 180.994},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2667.8999, posY = 1345.7, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 90.744},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2663.7, posY = 1349.8, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 180.994},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2909, doublesided = false, scale = 1, dimension = 0, posX = 2663.6001, posY = 1356, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 180.994},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 2666.5, posY = 1339.7, posZ = 9.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 2666.5, posY = 1336.5, posZ = 9.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 2666.5, posY = 1333.2, posZ = 9.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 2666.3999, posY = 1329.6, posZ = 9.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.5, dimension = 0, posX = 2666.3, posY = 1326, posZ = 9.5, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2628.2, posY = 1351.9, posZ = 7.4, rotX = 0, rotY = 347.997, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 2628.2, posY = 1356.1, posZ = 7.4, rotX = 0, rotY = 347.997, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1297, doublesided = false, scale = 1, dimension = 0, posX = 2638.8, posY = 1359.2, posZ = 12.8, rotX = 0, rotY = 0, rotZ = 89.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1297, doublesided = false, scale = 1, dimension = 0, posX = 2653.8, posY = 1359.3, posZ = 12.8, rotX = 0, rotY = 0, rotZ = 89.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1297, doublesided = false, scale = 1, dimension = 0, posX = 2662.6001, posY = 1352.9, posZ = 12.8, rotX = 0, rotY = 0, rotZ = 359.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1297, doublesided = false, scale = 1, dimension = 0, posX = 2671.1001, posY = 1341.6, posZ = 12.8, rotX = 0, rotY = 0, rotZ = 1.242},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1297, doublesided = false, scale = 1, dimension = 0, posX = 2671.2, posY = 1327.5, posZ = 12.8, rotX = 0, rotY = 0, rotZ = 1.241},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1297, doublesided = false, scale = 1, dimension = 0, posX = 2654, posY = 1324.2, posZ = 12.8, rotX = 0, rotY = 0, rotZ = 269.241},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1297, doublesided = false, scale = 1, dimension = 0, posX = 2639.3999, posY = 1324.5, posZ = 12.8, rotX = 0, rotY = 0, rotZ = 269.236},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3568, doublesided = false, scale = 1, dimension = 0, posX = 2646, posY = 1329.19995, posZ = 7.4, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3568, doublesided = false, scale = 1.3, dimension = 0, posX = 2644.8999, posY = 1342.2, posZ = 6.6, rotX = 0, rotY = 0, rotZ = 0.5},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3568, doublesided = false, scale = 1.3, dimension = 0, posX = 2649.2, posY = 1342.2, posZ = 6.6, rotX = 0, rotY = 0, rotZ = 0.5},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3568, doublesided = false, scale = 1.3, dimension = 0, posX = 2653.3999, posY = 1342.1, posZ = 6.6, rotX = 0, rotY = 0, rotZ = 0.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2911, doublesided = false, scale = 1, dimension = 0, posX = 2649.3, posY = 1330.7, posZ = 9.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2960, doublesided = false, scale = 0.5, dimension = 0, posX = 2650.3999, posY = 1330.7, posZ = 9.8, rotX = 90, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2960, doublesided = false, scale = 0.5, dimension = 0, posX = 2650.3999, posY = 1330.6, posZ = 9.8, rotX = 90, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 8843, doublesided = false, scale = 0.80000001, dimension = 0, posX = 2640, posY = 1327.3, posZ = 9.9, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 8843, doublesided = false, scale = 0.80000001, dimension = 0, posX = 2640.2002, posY = 1354.4004, posZ = 9.9, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 8843, doublesided = false, scale = 0.80000001, dimension = 0, posX = 2657.3999, posY = 1340.9, posZ = 9.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 2632.6001, posY = 1345, posZ = 9.1, rotX = 0, rotY = 0, rotZ = 90.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 2632.6001, posY = 1334.9, posZ = 9.1, rotX = 0, rotY = 0, rotZ = 89.997},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 2632.6001, posY = 1328.3, posZ = 9.1, rotX = 0, rotY = 0, rotZ = 90.244},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 2632.6001, posY = 1357.7, posZ = 9.1, rotX = 0, rotY = 0, rotZ = 89.997},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1297, doublesided = false, scale = 1, dimension = 0, posX = 2632.3, posY = 1348.4, posZ = 12.8, rotX = 0, rotY = 0, rotZ = 359.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1297, doublesided = false, scale = 1, dimension = 0, posX = 2622.6001, posY = 1333.4, posZ = 12.7, rotX = 0, rotY = 0, rotZ = 179.242},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2790, doublesided = false, scale = 1, dimension = 0, posX = 2640.3999, posY = 1340, posZ = 15.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 638, doublesided = true, scale = 1, dimension = 0, posX = 2639.3999, posY = 1323.7, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 89.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 638, doublesided = true, scale = 1, dimension = 0, posX = 2654, posY = 1323.7, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 90.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 638, doublesided = true, scale = 1, dimension = 0, posX = 2671.8999, posY = 1327.4, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 180.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 638, doublesided = true, scale = 1, dimension = 0, posX = 2671.8, posY = 1341.6, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 181.739},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 638, doublesided = true, scale = 1, dimension = 0, posX = 2663.3, posY = 1353, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 180.986},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 638, doublesided = true, scale = 1, dimension = 0, posX = 2653.8, posY = 1359.8, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 270.236},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 638, doublesided = true, scale = 1, dimension = 0, posX = 2638.8999, posY = 1359.8, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 269.983},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 997, doublesided = false, scale = 1, dimension = 0, posX = 2639.6001, posY = 1347.3, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 997, doublesided = false, scale = 1, dimension = 0, posX = 2639.6001, posY = 1345.8, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 997, doublesided = false, scale = 1, dimension = 0, posX = 2639.6001, posY = 1344.1, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1359, doublesided = false, scale = 1, dimension = 0, posX = 2671.3, posY = 1345, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 2641.8999, posY = 1346.6, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 2641.3, posY = 1346.6, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 2640.6001, posY = 1346.6, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 2639.8, posY = 1346.6, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1297, doublesided = false, scale = 1, dimension = 0, posX = 2632.3, posY = 1331.1, posZ = 12.8, rotX = 0, rotY = 0, rotZ = 359.242},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1344, doublesided = false, scale = 1, dimension = 0, posX = 2645, posY = 1330.3, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 638, doublesided = true, scale = 1, dimension = 0, posX = 2652.7998, posY = 1334.5996, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 638, doublesided = true, scale = 1, dimension = 0, posX = 2652.8, posY = 1344.8, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 997, doublesided = false, scale = 1, dimension = 0, posX = 2639.6001, posY = 1345.6, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 2642.1001, posY = 1344.9, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 2641.6001, posY = 1344.9, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 2640.7, posY = 1344.9, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1349, doublesided = true, scale = 1, dimension = 0, posX = 2640.1001, posY = 1344.9, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 14438, doublesided = false, scale = 0.60000002, dimension = 0, posX = 2647.3999, posY = 1339.4, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1844, doublesided = false, scale = 1, dimension = 0, posX = 2651.6001, posY = 1334.8, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1847, doublesided = false, scale = 1, dimension = 0, posX = 2647.6001, posY = 1348.9, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1984, doublesided = false, scale = 1, dimension = 0, posX = 2650.5, posY = 1344.9, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1885, doublesided = false, scale = 1, dimension = 0, posX = 2643.6001, posY = 1336.9, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 179.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1991, doublesided = false, scale = 1, dimension = 0, posX = 2651, posY = 1341.5, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1996, doublesided = false, scale = 1, dimension = 0, posX = 2651, posY = 1340.5, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2375, doublesided = false, scale = 1, dimension = 0, posX = 2646.3, posY = 1331.4, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2387, doublesided = false, scale = 1, dimension = 0, posX = 2644.8, posY = 1331.3, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2412, doublesided = false, scale = 1, dimension = 0, posX = 2644, posY = 1340.8, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 270.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2412, doublesided = false, scale = 1, dimension = 0, posX = 2643.8999, posY = 1338.8, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 270.497},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2536, doublesided = false, scale = 1, dimension = 0, posX = 2651.1001, posY = 1339.2, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2537, doublesided = false, scale = 1, dimension = 0, posX = 2651.1001, posY = 1338.2, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2538, doublesided = false, scale = 1, dimension = 0, posX = 2646.2, posY = 1334.6, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2539, doublesided = false, scale = 1, dimension = 0, posX = 2647.1001, posY = 1334.6, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 179.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2540, doublesided = false, scale = 1, dimension = 0, posX = 2648.1006, posY = 1334.5996, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 180.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1884, doublesided = false, scale = 1, dimension = 0, posX = 2647, posY = 1338.1, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2542, doublesided = false, scale = 1, dimension = 0, posX = 2651.8, posY = 1342.7, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2556, doublesided = false, scale = 1, dimension = 0, posX = 2643.5, posY = 1343.8, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2557, doublesided = false, scale = 1, dimension = 0, posX = 2643.5, posY = 1344.5, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2578, doublesided = false, scale = 1, dimension = 0, posX = 2652.1001, posY = 1344.8, posZ = 11.6, rotX = 0, rotY = 0, rotZ = 269.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2579, doublesided = false, scale = 1, dimension = 0, posX = 2652.1001, posY = 1346.1, posZ = 11.6, rotX = 0, rotY = 0, rotZ = 269.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2621, doublesided = false, scale = 1, dimension = 0, posX = 2643.7, posY = 1347.3, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 334},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2871, doublesided = false, scale = 1, dimension = 0, posX = 2651.8, posY = 1343.7, posZ = 9.9, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1884, doublesided = false, scale = 1, dimension = 0, posX = 2647.2, posY = 1342.7, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1302, doublesided = false, scale = 1, dimension = 0, posX = 2643.8999, posY = 1338.1, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1776, doublesided = false, scale = 1, dimension = 0, posX = 2644, posY = 1342.1, posZ = 10.9, rotX = 0, rotY = 0, rotZ = 90.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1885, doublesided = false, scale = 1, dimension = 0, posX = 2643.6001, posY = 1336.9, posZ = 10, rotX = 0, rotY = 0, rotZ = 179.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1367, doublesided = false, scale = 1, dimension = 0, posX = 2637, posY = 1330.2, posZ = 10.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 0, dimension = 0, posX = 2652, posY = 1335.2, posZ = 9.4, rotX = 90, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 0, dimension = 0, posX = 2652.1001, posY = 1344.7, posZ = 9.4, rotX = 90, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 0, dimension = 0, posX = 2647.6001, posY = 1349, posZ = 9.6, rotX = 90, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3117, doublesided = false, scale = 0, dimension = 0, posX = 2643.1001, posY = 1346.4, posZ = 9.7, rotX = 90, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3117, doublesided = false, scale = 0, dimension = 0, posX = 2643.1001, posY = 1343.1, posZ = 9.7, rotX = 90, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3117, doublesided = false, scale = 0, dimension = 0, posX = 2643.1001, posY = 1335.8, posZ = 9.6, rotX = 90, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3117, doublesided = false, scale = 0, dimension = 0, posX = 2643.1001, posY = 1332.3, posZ = 9.6, rotX = 90, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3117, doublesided = false, scale = 0, dimension = 0, posX = 2645, posY = 1330.8, posZ = 11.7, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3117, doublesided = false, scale = 0, dimension = 0, posX = 2648.3, posY = 1330.8, posZ = 11.7, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3117, doublesided = false, scale = 0, dimension = 0, posX = 2649.8, posY = 1330.8, posZ = 13.1, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3117, doublesided = false, scale = 0, dimension = 0, posX = 2646.3, posY = 1330.8, posZ = 13.1, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1344, doublesided = false, scale = 1, dimension = 0, posX = 2647.1001, posY = 1330.3, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3117, doublesided = false, scale = 0, dimension = 0, posX = 2647.3, posY = 1330.8, posZ = 10.5, rotX = 90, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3117, doublesided = false, scale = 0, dimension = 0, posX = 2643.1001, posY = 1343.1, posZ = 9.9, rotX = 90, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3117, doublesided = false, scale = 0, dimension = 0, posX = 2643, posY = 1345.6, posZ = 9.9, rotX = 90, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2643.1001, posY = 1332.5, posZ = 11.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2643.1001, posY = 1336.8, posZ = 11.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2643.1001, posY = 1343.5, posZ = 11.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2643.1001, posY = 1347.8, posZ = 11.5, rotX = 0, rotY = 0, rotZ = 270},
}

--2
local loja2 = {
	{type = 'removeWorldObject', radius = 2.6354723, interior = 0, model = 1215, lodModel = 0, posX = 2093.2605, posY = 1243.4307, posZ = 10.51872, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 2.6354723, interior = 0, model = 1215, lodModel = 0, posX = 2098.718, posY = 1243.5526, posZ = 10.34505, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2032.4, posY = 1395.8, posZ = 8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2032.4, posY = 1403.6, posZ = 8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2032.4, posY = 1414.9, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2028.4, posY = 1418.8, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 0.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2024.59998, posY = 1407.30005, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2024.59998, posY = 1400, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2024.59998, posY = 1395.69995, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2028.4, posY = 1391.9, posZ = 7.9, rotX = 0, rotY = 0, rotZ = 0.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2032.2, posY = 1392.1, posZ = 10.9, rotX = 0, rotY = 0, rotZ = 269.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2032.3, posY = 1407.2, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2032.3, posY = 1411.1, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2032.2, posY = 1418.7, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2024.7, posY = 1418.7, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2024.6, posY = 1391.9, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2024.6, posY = 1391.9, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2032.2, posY = 1392.1, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2032.3, posY = 1407.2, posZ = 12.9, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2032.3, posY = 1411.1, posZ = 12.9, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2032.2, posY = 1418.7, posZ = 13, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2024.7, posY = 1418.7, posZ = 13, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2024.59998, posY = 1414.90002, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2026.7, posY = 1391.9, posZ = 10.1, rotX = 0, rotY = 90, rotZ = 0.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2032.4004, posY = 1394.7002, posZ = 12.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2032.4004, posY = 1399, posZ = 12.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2032.4004, posY = 1403.2998, posZ = 12.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2032.3, posY = 1405.7, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = true, scale = 1, dimension = 0, posX = 2032.3, posY = 1405.7, posZ = 12.9, rotX = 0, rotY = 0, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 0.5, dimension = 0, posX = 2032.4, posY = 1406.1, posZ = 12.8, rotX = 0, rotY = 90, rotZ = 269.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 0.5, dimension = 0, posX = 2032.4, posY = 1406.1, posZ = 10.6, rotX = 0, rotY = 90, rotZ = 269.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2029.9, posY = 1391.9, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 180.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2790, doublesided = false, scale = 1, dimension = 0, posX = 2032.5, posY = 1414.9, posZ = 12, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2029.30005, posY = 1411.19995, posZ = 10.1, rotX = 0, rotY = 90, rotZ = 0.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2028.30005, posY = 1411.19995, posZ = 10.1, rotX = 0, rotY = 90, rotZ = 0.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2032.3, posY = 1414.9, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2032.2, posY = 1414.9, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1968, doublesided = false, scale = 1, dimension = 0, posX = 2030.9, posY = 1395.3, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1968, doublesided = false, scale = 1, dimension = 0, posX = 2030.9, posY = 1398.5, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1968, doublesided = false, scale = 1, dimension = 0, posX = 2030.7998, posY = 1401.4004, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1968, doublesided = false, scale = 1, dimension = 0, posX = 2030.9004, posY = 1404.4004, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16151, doublesided = false, scale = 1, dimension = 0, posX = 2025.7, posY = 1396.1, posZ = 10.1, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1209, doublesided = false, scale = 1, dimension = 0, posX = 2024.8, posY = 1407.3, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1776, doublesided = false, scale = 1, dimension = 0, posX = 2025, posY = 1406.1, posZ = 10.9, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2221, doublesided = false, scale = 1, dimension = 0, posX = 2031, posY = 1395.4, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2342, doublesided = false, scale = 1, dimension = 0, posX = 2031, posY = 1398.9, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2420, doublesided = false, scale = 1, dimension = 0, posX = 2032.3, posY = 1406.3, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2425, doublesided = false, scale = 1, dimension = 0, posX = 2024.6, posY = 1397.3, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2429, doublesided = false, scale = 1, dimension = 0, posX = 2024.3, posY = 1397.8, posZ = 10.4, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2453, doublesided = false, scale = 1, dimension = 0, posX = 2025.4, posY = 1392.7, posZ = 11.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2683, doublesided = false, scale = 1, dimension = 0, posX = 2026.5, posY = 1393.9, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1893, doublesided = false, scale = 1, dimension = 0, posX = 2027.9, posY = 1408.5, posZ = 14, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.4, posY = 1417.8, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 268.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.4, posY = 1416.5, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 268.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.4, posY = 1416.5, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 268.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.6, posY = 1417.8, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 268.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.4, posY = 1415.3, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 268.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.4, posY = 1415.3, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 268.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.5, posY = 1414.09998, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 268.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.5, posY = 1414.09998, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 268.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.5, posY = 1412.9, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 268.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.5, posY = 1412.9, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 268.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.5, posY = 1411.9, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 268.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.5, posY = 1411.9, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 268.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.5, posY = 1411, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 268.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.5, posY = 1411, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 268.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2416, doublesided = false, scale = 1, dimension = 0, posX = 2025.2, posY = 1401.4, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2534, doublesided = true, scale = 1, dimension = 0, posX = 2025.1, posY = 1403.4, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1487, doublesided = false, scale = 1, dimension = 0, posX = 2024.9, posY = 1403.1, posZ = 10.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1512, doublesided = false, scale = 1, dimension = 0, posX = 2024.7, posY = 1403.5, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 78},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1520, doublesided = false, scale = 1, dimension = 0, posX = 2024.9, posY = 1403.1, posZ = 10.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1543, doublesided = false, scale = 1, dimension = 0, posX = 2025.1, posY = 1403.1, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1544, doublesided = false, scale = 1, dimension = 0, posX = 2025.1, posY = 1403.7, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 638, doublesided = true, scale = 1, dimension = 0, posX = 2028.9, posY = 1410.7, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2422, doublesided = false, scale = 1, dimension = 0, posX = 2026.2, posY = 1396.2, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 92},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2369, doublesided = false, scale = 1, dimension = 0, posX = 2026.2, posY = 1396.9, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2362, doublesided = false, scale = 1, dimension = 0, posX = 2026, posY = 1399.1, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 116},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 997, doublesided = false, scale = 1, dimension = 0, posX = 2026.7, posY = 1404.1, posZ = 9.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 14532, doublesided = false, scale = 1, dimension = 0, posX = 2031.4, posY = 1392.3, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 2.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2741, doublesided = false, scale = 1, dimension = 0, posX = 2024.6, posY = 1413.3, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2741, doublesided = false, scale = 1, dimension = 0, posX = 2024.6, posY = 1415, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2741, doublesided = false, scale = 1, dimension = 0, posX = 2024.6, posY = 1416.6, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2524, doublesided = true, scale = 1, dimension = 0, posX = 2025.1, posY = 1413.3, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2524, doublesided = true, scale = 1, dimension = 0, posX = 2025.1, posY = 1415, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2524, doublesided = true, scale = 1, dimension = 0, posX = 2025.1, posY = 1416.6, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2514, doublesided = false, scale = 1, dimension = 0, posX = 2031.5, posY = 1417.9, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 272},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2514, doublesided = false, scale = 1, dimension = 0, posX = 2031.6, posY = 1416.6, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2514, doublesided = false, scale = 1, dimension = 0, posX = 2031.6, posY = 1415.4, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2514, doublesided = false, scale = 1, dimension = 0, posX = 2031.59998, posY = 1414.19995, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2514, doublesided = false, scale = 1, dimension = 0, posX = 2031.6, posY = 1413.1, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2514, doublesided = false, scale = 1, dimension = 0, posX = 2031.6, posY = 1412.1, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.9, posY = 1417.8, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 270.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.9, posY = 1417.8, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.8, posY = 1416.5, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.8, posY = 1416.5, posZ = 10.4, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.8, posY = 1415.3, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.8, posY = 1415.3, posZ = 9.6, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.80005, posY = 1414.09998, posZ = 9.6, rotX = 0, rotY = 0, rotZ = 270.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.80005, posY = 1414.09998, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 270.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.8, posY = 1412.9, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.8, posY = 1412.9, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.8, posY = 1411.9, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.8, posY = 1411.9, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.6, posY = 1411, posZ = 10.4, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.6, posY = 1411, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1359, doublesided = false, scale = 0.40000001, dimension = 0, posX = 2031.9, posY = 1417.4, posZ = 10.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1359, doublesided = false, scale = 0.40000001, dimension = 0, posX = 2031.9, posY = 1416, posZ = 10.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1359, doublesided = false, scale = 0.40000001, dimension = 0, posX = 2031.9, posY = 1414.8, posZ = 10.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1359, doublesided = false, scale = 0.40000001, dimension = 0, posX = 2031.9, posY = 1413.6, posZ = 10.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1359, doublesided = false, scale = 0.40000001, dimension = 0, posX = 2031.9, posY = 1412.6, posZ = 10.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1359, doublesided = false, scale = 0.40000001, dimension = 0, posX = 2031.9, posY = 1411.7, posZ = 10.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2911, doublesided = false, scale = 1, dimension = 0, posX = 2030.2, posY = 1411.4, posZ = 9.3, rotX = 0, rotY = 0, rotZ = 79.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2911, doublesided = false, scale = 1, dimension = 0, posX = 2030.4, posY = 1412.4, posZ = 9.3, rotX = 0, rotY = 0, rotZ = 173.996},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2911, doublesided = false, scale = 1, dimension = 0, posX = 2030.5, posY = 1413.4004, posZ = 9.3, rotX = 0, rotY = 0, rotZ = 163.99},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2911, doublesided = false, scale = 1, dimension = 0, posX = 2030.5, posY = 1414.5996, posZ = 9.3, rotX = 0, rotY = 0, rotZ = 139.988},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.8, posY = 1416.7, posZ = 10.4, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.5, posY = 1416.7, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2031.5, posY = 1416.7, posZ = 9.6, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2187, doublesided = false, scale = 1, dimension = 0, posX = 2030.8, posY = 1416.7, posZ = 9.6, rotX = 0, rotY = 0, rotZ = 270.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2911, doublesided = false, scale = 1, dimension = 0, posX = 2030.5, posY = 1418.3, posZ = 9.3, rotX = 0, rotY = 0, rotZ = 207.483},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1491, doublesided = false, scale = 1, dimension = 0, posX = 2026.2, posY = 1411.1, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 178.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1495, doublesided = false, scale = 1, dimension = 0, posX = 2027.1, posY = 1411.1, posZ = 14, rotX = 0, rotY = 90, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2029.30005, posY = 1411.09998, posZ = 10.1, rotX = 0, rotY = 90, rotZ = 0.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = true, scale = 1, dimension = 0, posX = 2028.30005, posY = 1411.09998, posZ = 10.1, rotX = 0, rotY = 90, rotZ = 0.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1495, doublesided = false, scale = 1, dimension = 0, posX = 2027.1, posY = 1411.1, posZ = 13.7, rotX = 0, rotY = 90, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1721, doublesided = true, scale = 1, dimension = 0, posX = 2026.3, posY = 1418.6, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1721, doublesided = true, scale = 1, dimension = 0, posX = 2026.9, posY = 1418.6, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1721, doublesided = true, scale = 1, dimension = 0, posX = 2027.5, posY = 1418.6, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 16500, doublesided = false, scale = 2.2, dimension = 0, posX = 2028.3, posY = 1415.9, posZ = 14.2, rotX = 0, rotY = 86, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 16500, doublesided = false, scale = 2.2, dimension = 0, posX = 2028.3, posY = 1407.3, posZ = 13.9, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 16500, doublesided = false, scale = 2.2, dimension = 0, posX = 2028.3, posY = 1398.6, posZ = 13.9, rotX = 0, rotY = 90, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 16500, doublesided = false, scale = 2.2, dimension = 0, posX = 2028.3, posY = 1395.2, posZ = 14, rotX = 0, rotY = 92, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2911, doublesided = false, scale = 1, dimension = 0, posX = 2030.6, posY = 1415.7, posZ = 9.3, rotX = 0, rotY = 6, rotZ = 141.988},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1893, doublesided = false, scale = 1, dimension = 0, posX = 2028, posY = 1405.4, posZ = 14, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1893, doublesided = false, scale = 1, dimension = 0, posX = 2028.1, posY = 1402.7, posZ = 14, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1893, doublesided = false, scale = 1, dimension = 0, posX = 2028, posY = 1398.9, posZ = 14, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1893, doublesided = false, scale = 1, dimension = 0, posX = 2027.7, posY = 1395.6, posZ = 14, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1893, doublesided = false, scale = 1, dimension = 0, posX = 2028, posY = 1413.5, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 357},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1893, doublesided = false, scale = 1, dimension = 0, posX = 2028.1, posY = 1416.8, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 356.995},
}

--3
local loja3 = {
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 1978.8, posY = 2076.3, posZ = 3.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 1995, posY = 2076, posZ = 3.7, rotX = 0, rotY = 0, rotZ = 359.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 1989.5, posY = 2076.1001, posZ = 3.7, rotX = 0, rotY = 0, rotZ = 0.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = true, scale = 1, dimension = 0, posX = 1986.1, posY = 2076.1001, posZ = 3.7, rotX = 0, rotY = 0, rotZ = 0.494},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1982.3, posY = 2076.8, posZ = 8.5, rotX = 0, rotY = 0, rotZ = 88.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1982.2998, posY = 2076.7998, posZ = 14.3, rotX = 0, rotY = 0, rotZ = 88.748},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1992.3, posY = 2076.7, posZ = 8.5, rotX = 0, rotY = 0, rotZ = 88.748},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1992.2002, posY = 2076.7002, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 88.748},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1989.9, posY = 2076.7, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 88.748},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1995.1, posY = 2073, posZ = 8.5, rotX = 0, rotY = 0, rotZ = 0.748},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1995.2, posY = 2066.3999, posZ = 10, rotX = 0, rotY = 0, rotZ = 0.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1995.2002, posY = 2066.7998, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 0.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1995.1, posY = 2073, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 0.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1995.2, posY = 2068, posZ = 10, rotX = 0, rotY = 0, rotZ = 0.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1978.0996, posY = 2072.1006, posZ = 11.7, rotX = 0, rotY = 0, rotZ = 178.748},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1978.0996, posY = 2072.1006, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 178.737},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1977.9004, posY = 2066.6006, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 178.737},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1977.9, posY = 2066.6001, posZ = 9.1, rotX = 0, rotY = 0, rotZ = 178.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2790, doublesided = false, scale = 1, dimension = 0, posX = 1987.7, posY = 2077.8, posZ = 16.4, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2735, doublesided = false, scale = 1, dimension = 0, posX = 1993.3, posY = 2076.8999, posZ = 13.5, rotX = 0, rotY = 0, rotZ = 179},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2734, doublesided = false, scale = 1, dimension = 0, posX = 1992.1, posY = 2076.8999, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2733, doublesided = false, scale = 1, dimension = 0, posX = 1991.2, posY = 2076.8999, posZ = 15.7, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2731, doublesided = false, scale = 1, dimension = 0, posX = 1984, posY = 2076.8999, posZ = 13, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2730, doublesided = false, scale = 1, dimension = 0, posX = 1982.3, posY = 2076.8999, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2714, doublesided = true, scale = 1, dimension = 0, posX = 1987.8, posY = 2076.8999, posZ = 12.9, rotX = 0, rotY = 0, rotZ = 178},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2729, doublesided = false, scale = 1, dimension = 0, posX = 1980.8, posY = 2077, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2642, doublesided = false, scale = 1, dimension = 0, posX = 1995.4, posY = 2066.5, posZ = 11.1, rotX = 0, rotY = 0, rotZ = 92},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2658, doublesided = false, scale = 1, dimension = 0, posX = 1995.3, posY = 2071, posZ = 11.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2660, doublesided = false, scale = 1, dimension = 0, posX = 1995.3, posY = 2073.2, posZ = 12.9, rotX = 0, rotY = 0, rotZ = 90.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2695, doublesided = false, scale = 1, dimension = 0, posX = 1995.4, posY = 2068.7, posZ = 11.3, rotX = 0, rotY = 0, rotZ = 92},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2716, doublesided = false, scale = 1, dimension = 0, posX = 1995.3, posY = 2066.7, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2719, doublesided = true, scale = 1, dimension = 0, posX = 1982.9, posY = 2076.8999, posZ = 11.4, rotX = 0, rotY = 0, rotZ = 179.746},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2731, doublesided = false, scale = 1, dimension = 0, posX = 1995.3, posY = 2069.3999, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2730, doublesided = false, scale = 1, dimension = 0, posX = 1995.3, posY = 2071.6001, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 270.75},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1994.6, posY = 2088.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 89},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1994.7, posY = 2094.2, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 88.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1982.9004, posY = 2091.6006, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 180.236},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1980.2, posY = 2094.3, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 269.24},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1980.1, posY = 2089, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 269.236},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1988.5, posY = 2091.6001, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 180.236},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1991.8, posY = 2091.6001, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 180.236},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1990.8, posY = 2088.7, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 88.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1987.4, posY = 2088.7, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 88.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1983.7002, posY = 2088.7998, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 88.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1983.8, posY = 2094.3999, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 88.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1987.5, posY = 2094.3, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 88.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1990.9, posY = 2094.3, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 88.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1995.2, posY = 2091.6001, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 180.236},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998, posY = 2088.8999, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.236},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998, posY = 2094.2, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998.6, posY = 2088.8999, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.236},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998.6, posY = 2093.3999, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998.6, posY = 2094.3, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2007.3, posY = 2094.1001, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2007.3, posY = 2099.7, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2007.3, posY = 2100.3999, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2007.3, posY = 2088.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998.2002, posY = 2073.9004, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998.2, posY = 2068.3999, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998.2, posY = 2063, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998.2, posY = 2057.7, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998.2, posY = 2052.3, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998.2, posY = 2047.1, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998.6, posY = 2041.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 278.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2000.3, posY = 2036.7, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 298.979},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2004.4, posY = 2033.7, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 347.226},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2009.9, posY = 2033, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.223},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2007.3, posY = 2083.3, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 269.981},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2007.3, posY = 2077.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 269.978},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2007.2998, posY = 2072.5, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 269.973},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2007.3, posY = 2066.8999, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 269.978},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2007.3, posY = 2061.5, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 269.978},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2007.3, posY = 2056, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 269.978},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2007.3, posY = 2050.5, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 269.978},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2008.6, posY = 2045.3, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 297.978},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2012.6, posY = 2042.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.477},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2018, posY = 2042.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 0.973},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2023.5, posY = 2042.9, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 0.972},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2029.1, posY = 2043, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 0.972},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2034.6, posY = 2043, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.222},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2040, posY = 2042.9, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.22},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2045.6, posY = 2042.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.22},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2051.2, posY = 2042.7, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.22},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2056.8, posY = 2042.6, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.22},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2062.3999, posY = 2042.5, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.22},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2068, posY = 2042.4, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.22},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2073.2, posY = 2042.3, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.22},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2078.2, posY = 2044, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.22},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2075.7, posY = 2044.1, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2072.2, posY = 2044.2, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2068.7, posY = 2044.3, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2065.1001, posY = 2044.3, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2061.3999, posY = 2044.4, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2057.7, posY = 2044.4, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2052.7, posY = 2044.4, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2048.2, posY = 2044.6, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2043, posY = 2044.7, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2037.6, posY = 2044.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2032.6, posY = 2044.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2028.3, posY = 2044.7, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2023.1, posY = 2044.7, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2018.5, posY = 2044.6, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2013.4, posY = 2044.6, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 39.216},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2015.4, posY = 2032.9, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 358.72},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2020.6, posY = 2032.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.715},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2026.2002, posY = 2032.7998, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 0.209},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2031.8, posY = 2032.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 0.214},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2037.2, posY = 2032.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 0.214},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2042.6, posY = 2032.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 0.214},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2047.9, posY = 2032.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 0.214},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2053.3, posY = 2032.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 0.214},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2058.6001, posY = 2032.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 0.214},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2064, posY = 2032.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 0.214},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2069.5, posY = 2032.8, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.964},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 2074.8999, posY = 2032.5, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 353.962},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1998.2, posY = 2075.3999, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 270.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1995.5, posY = 2078.2, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 0.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1990, posY = 2078.2, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 359.731},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1984.7, posY = 2078.3, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 357.725},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 0.55000001, dimension = 0, posX = 1980.4, posY = 2078.5, posZ = 9.4, rotX = 0, rotY = 0, rotZ = 357.22},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 8843, doublesided = false, scale = 0.60000002, dimension = 0, posX = 2003.8, posY = 2091.8, posZ = 9.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 8843, doublesided = false, scale = 0.60000002, dimension = 0, posX = 2001, posY = 2091.7002, posZ = 9.9, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1992.2, posY = 2076.7, posZ = 11.5, rotX = 0, rotY = 0, rotZ = 358.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1983.2, posY = 2076.8, posZ = 11.5, rotX = 0, rotY = 0, rotZ = 358.498},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1979.5, posY = 2076.8999, posZ = 11.5, rotX = 0, rotY = 90, rotZ = 356.495},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 1995.1, posY = 2073.5, posZ = 11.5, rotX = 0, rotY = 0, rotZ = 270.498},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2719, doublesided = true, scale = 1, dimension = 0, posX = 1992.2, posY = 2076.8, posZ = 11.4, rotX = 0, rotY = 0, rotZ = 179.742},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 8843, doublesided = false, scale = 0.60000002, dimension = 0, posX = 2023.7, posY = 2036.8, posZ = 9.9, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 8843, doublesided = false, scale = 0.60000002, dimension = 0, posX = 2023.5, posY = 2039.4, posZ = 9.9, rotX = 0, rotY = 0, rotZ = 89.745},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 8843, doublesided = false, scale = 0.60000002, dimension = 0, posX = 2079.2, posY = 2036.1, posZ = 9.9, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 8843, doublesided = false, scale = 0.60000002, dimension = 0, posX = 2078.8999, posY = 2039.2, posZ = 9.9, rotX = 0, rotY = 0, rotZ = 89.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3460, doublesided = true, scale = 1, dimension = 0, posX = 2012.3, posY = 2034.3, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3460, doublesided = true, scale = 1, dimension = 0, posX = 2053.8, posY = 2034.4, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3460, doublesided = true, scale = 1, dimension = 0, posX = 2106.2, posY = 2033.8, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 24},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3460, doublesided = true, scale = 1, dimension = 0, posX = 2007.1, posY = 2097.1001, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 88},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3460, doublesided = true, scale = 1, dimension = 0, posX = 2006.7, posY = 2060.6001, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 87.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3460, doublesided = true, scale = 1, dimension = 0, posX = 1999.4, posY = 2044.8, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 271.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2698, doublesided = false, scale = 1, dimension = 0, posX = 1981.1, posY = 2066, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2652, doublesided = false, scale = 1, dimension = 0, posX = 1982, posY = 2066.6001, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 48},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2626, doublesided = false, scale = 1, dimension = 0, posX = 1984.7, posY = 2065.2, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 180.25},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2625, doublesided = false, scale = 1, dimension = 0, posX = 1978.5, posY = 2069.8999, posZ = 11.1, rotX = 0, rotY = 0, rotZ = 89.5},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2624, doublesided = true, scale = 1, dimension = 0, posX = 1980.6, posY = 2065.3, posZ = 11.4, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2622, doublesided = false, scale = 1, dimension = 0, posX = 1979.6, posY = 2066.8999, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 354},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2621, doublesided = false, scale = 1, dimension = 0, posX = 1985.9, posY = 2074.5, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2620, doublesided = false, scale = 1, dimension = 0, posX = 1989.5, posY = 2074.6001, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2412, doublesided = false, scale = 1, dimension = 0, posX = 1987.4, posY = 2075.8, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2387, doublesided = false, scale = 1, dimension = 0, posX = 1980.4, posY = 2075.8, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 359},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2379, doublesided = false, scale = 1, dimension = 0, posX = 1992.4, posY = 2064.6001, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 179.5},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2375, doublesided = false, scale = 1, dimension = 0, posX = 1989.9, posY = 2072.3, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 359.75},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2365, doublesided = false, scale = 1, dimension = 0, posX = 1986.9, posY = 2075, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2365, doublesided = false, scale = 1, dimension = 0, posX = 1989.2, posY = 2075, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2412, doublesided = false, scale = 1, dimension = 0, posX = 1988.9, posY = 2075.8, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2626, doublesided = false, scale = 1, dimension = 0, posX = 1986.8, posY = 2065.2, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 180.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2387, doublesided = false, scale = 1, dimension = 0, posX = 1984.3, posY = 2075.7, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 358.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2375, doublesided = false, scale = 1, dimension = 0, posX = 1989.8, posY = 2069.7, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 359.747},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2375, doublesided = false, scale = 1, dimension = 0, posX = 1984, posY = 2069.7, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 359.747},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2375, doublesided = false, scale = 1, dimension = 0, posX = 1983.9, posY = 2072.3, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 359.747},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1722, doublesided = true, scale = 1, dimension = 0, posX = 1981.9, posY = 2072.3, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 178.75},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1722, doublesided = true, scale = 1, dimension = 0, posX = 1981.3, posY = 2072.3, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 178.748},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1722, doublesided = true, scale = 1, dimension = 0, posX = 1980.7, posY = 2072.3, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 178.748},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1722, doublesided = true, scale = 1, dimension = 0, posX = 1980.7002, posY = 2072.2998, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 358.748},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1722, doublesided = true, scale = 1, dimension = 0, posX = 1981.2, posY = 2072.3, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 358.748},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1722, doublesided = true, scale = 1, dimension = 0, posX = 1981.8, posY = 2072.3, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 358.748},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1722, doublesided = true, scale = 1, dimension = 0, posX = 1981.8, posY = 2069.5, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 358.748},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1722, doublesided = true, scale = 1, dimension = 0, posX = 1981.7998, posY = 2069.5, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 177.998},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1722, doublesided = true, scale = 1, dimension = 0, posX = 1981.3, posY = 2069.5, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 177.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1722, doublesided = true, scale = 1, dimension = 0, posX = 1980.7, posY = 2069.5, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 177.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1722, doublesided = true, scale = 1, dimension = 0, posX = 1981.2, posY = 2069.5, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 358.748},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1722, doublesided = true, scale = 1, dimension = 0, posX = 1980.6, posY = 2069.5, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 358.748},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2052, doublesided = false, scale = 1, dimension = 0, posX = 1982.6, posY = 2063.3, posZ = 10.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2054, doublesided = false, scale = 1, dimension = 0, posX = 1981.2, posY = 2063.3999, posZ = 10.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2374, doublesided = false, scale = 1, dimension = 0, posX = 1978.4, posY = 2072.3, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2377, doublesided = false, scale = 1, dimension = 0, posX = 1978.4, posY = 2073, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2378, doublesided = false, scale = 1, dimension = 0, posX = 1978.4, posY = 2073.8, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2381, doublesided = false, scale = 1, dimension = 0, posX = 1982.5, posY = 2075.6001, posZ = 10.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2372, doublesided = false, scale = 1, dimension = 0, posX = 1983.1, posY = 2075.8, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2383, doublesided = false, scale = 1, dimension = 0, posX = 1978.4, posY = 2074.7, posZ = 10.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2384, doublesided = false, scale = 1, dimension = 0, posX = 1978.6, posY = 2068.7, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2386, doublesided = false, scale = 1, dimension = 0, posX = 1978.6, posY = 2069.3999, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2389, doublesided = false, scale = 1, dimension = 0, posX = 1978.4, posY = 2072.3, posZ = 11.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2391, doublesided = false, scale = 1, dimension = 0, posX = 1978.3, posY = 2067, posZ = 10.9, rotX = 0, rotY = 0, rotZ = 88},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2397, doublesided = false, scale = 1, dimension = 0, posX = 1978.4, posY = 2073.1001, posZ = 11.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2398, doublesided = false, scale = 1, dimension = 0, posX = 1978.5, posY = 2073.8999, posZ = 11.4, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2399, doublesided = false, scale = 1, dimension = 0, posX = 1978.5, posY = 2074.6001, posZ = 11.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2689, doublesided = false, scale = 1, dimension = 0, posX = 1978.1, posY = 2065.2, posZ = 10.9, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2843, doublesided = false, scale = 1, dimension = 0, posX = 1978.9, posY = 2064.1001, posZ = 9.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2053, doublesided = false, scale = 1, dimension = 0, posX = 1982.1, posY = 2063.3, posZ = 11.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2384, doublesided = false, scale = 1, dimension = 0, posX = 1978.6, posY = 2070.2, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2386, doublesided = false, scale = 1, dimension = 0, posX = 1978.6, posY = 2071.1001, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1982.1, posY = 2073.3999, posZ = 16.3, rotX = 0, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 1982.3, posY = 2076.8, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 88.748},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1982.1, posY = 2073.3999, posZ = 16.8, rotX = 0, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1990.9, posY = 2073.3999, posZ = 16.3, rotX = 0, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1991.8, posY = 2073.3999, posZ = 16.3, rotX = 0, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1991.1, posY = 2073.3999, posZ = 16.8, rotX = 0, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1991.8, posY = 2073.3999, posZ = 16.8, rotX = 0, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1991.8, posY = 2067.2, posZ = 16.3, rotX = 0, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1991.8, posY = 2067.2, posZ = 16.8, rotX = 0, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1982.9, posY = 2067.2, posZ = 16.8, rotX = 0, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1982, posY = 2067.2, posZ = 16.7, rotX = 0, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1982.1, posY = 2067.2, posZ = 16.3, rotX = 0, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1990.4, posY = 2067.2, posZ = 16.3, rotX = 0, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1990.7, posY = 2067.3, posZ = 15.5, rotX = 0, rotY = 0.005, rotZ = 359.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1982.4, posY = 2067.2, posZ = 15.5, rotX = 0, rotY = 0, rotZ = 359.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1982.6, posY = 2072.3, posZ = 15.5, rotX = 0, rotY = 0, rotZ = 359.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3095, doublesided = false, scale = 1, dimension = 0, posX = 1990.6, posY = 2072.2, posZ = 15.5, rotX = 0, rotY = 0, rotZ = 359.989},
}

--4
local loja4 = {
	{type = 'removeWorldObject', radius = 4.1892939, interior = 0, model = 858, lodModel = 0, posX = 2527.8203, posY = 786.1438, posZ = 9.83732, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 4.1892939, interior = 0, model = 858, lodModel = 0, posX = 2527.8203, posY = 786.1438, posZ = 9.83732, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2525.8, posY = 787.20001, posZ = 9.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2531.2, posY = 802.20001, posZ = 11.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2523.40039, posY = 802.2002, posZ = 11.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2519.6001, posY = 797.90002, posZ = 11.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2519.6001, posY = 791.09998, posZ = 9.1, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 16500, doublesided = false, scale = 1.5, dimension = 0, posX = 2534.5, posY = 790.90002, posZ = 9.7, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 16500, doublesided = false, scale = 1.5, dimension = 0, posX = 2534.5, posY = 798.40002, posZ = 9.7, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 16500, doublesided = false, scale = 1.5, dimension = 0, posX = 2528.6001, posY = 798.40002, posZ = 9.7, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 16500, doublesided = false, scale = 1.5, dimension = 0, posX = 2522.6001, posY = 798.40002, posZ = 9.7, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2533.5, posY = 802.20001, posZ = 11.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2523.5, posY = 787.20001, posZ = 9.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 16500, doublesided = false, scale = 1.5, dimension = 0, posX = 2528.6001, posY = 790.90002, posZ = 9.7, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 16500, doublesided = false, scale = 1.5, dimension = 0, posX = 2522.6001, posY = 790.90002, posZ = 9.7, rotX = 0, rotY = 270, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1847, doublesided = false, scale = 1, dimension = 0, posX = 2527.8, posY = 801.5, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1885, doublesided = false, scale = 1, dimension = 0, posX = 2536.3999, posY = 797.09998, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1984, doublesided = false, scale = 1, dimension = 0, posX = 2528.1001, posY = 799, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1989, doublesided = false, scale = 1, dimension = 0, posX = 2520.1001, posY = 794.59998, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1996, doublesided = false, scale = 1, dimension = 0, posX = 2527.8999, posY = 787.70001, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1981, doublesided = false, scale = 1, dimension = 0, posX = 2528.8999, posY = 787.70001, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2590, doublesided = false, scale = 1, dimension = 0, posX = 2520.1001, posY = 796.20001, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 230},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2803, doublesided = false, scale = 0.5, dimension = 0, posX = 2520.2, posY = 797.40002, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2804, doublesided = false, scale = 1, dimension = 0, posX = 2523.3, posY = 789.70001, posZ = 11, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2805, doublesided = false, scale = 1, dimension = 0, posX = 2520.2, posY = 794.5, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2806, doublesided = false, scale = 1, dimension = 0, posX = 2523.3, posY = 789.79999, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 12},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1989, doublesided = false, scale = 1, dimension = 0, posX = 2520.1001, posY = 795.40002, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1989, doublesided = false, scale = 1, dimension = 0, posX = 2520.1001, posY = 796.20001, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2753, doublesided = false, scale = 1, dimension = 0, posX = 2523.5, posY = 792.79999, posZ = 10.9, rotX = 0, rotY = 0, rotZ = 90.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2454, doublesided = false, scale = 1, dimension = 0, posX = 2523.3999, posY = 797.5, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2448, doublesided = false, scale = 1, dimension = 0, posX = 2523.2, posY = 789.70001, posZ = 10, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 2523.3999, posY = 791.20001, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 2523.3999, posY = 792.09998, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 2523.3999, posY = 793, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 2523.3999, posY = 796.59998, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 2523.3999, posY = 790.29999, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1847, doublesided = false, scale = 1, dimension = 0, posX = 2531.8999, posY = 787.70001, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 180.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1883, doublesided = false, scale = 1, dimension = 0, posX = 2532.3999, posY = 798.09998, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1847, doublesided = false, scale = 1, dimension = 0, posX = 2532.8999, posY = 801.5, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1847, doublesided = false, scale = 1, dimension = 0, posX = 2531, posY = 792.29999, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1847, doublesided = false, scale = 1, dimension = 0, posX = 2531, posY = 793.29999, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2537.3999, posY = 791, posZ = 7.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2537.3999, posY = 791, posZ = 15, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2537.3999, posY = 800, posZ = 6.6, rotX = 0, rotY = 270, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2537.3999, posY = 798.20001, posZ = 15, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.3, posY = 794.59998, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 270.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.3, posY = 794.59998, posZ = 13, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.3, posY = 794.59998, posZ = 15.2, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.3, posY = 794.59998, posZ = 16.8, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2533.5, posY = 802.20001, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2531.2, posY = 802.20001, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2523.4004, posY = 802.2002, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2519.6001, posY = 798.20001, posZ = 15, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2533.5, posY = 787.2002, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2525.8, posY = 787.20001, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2523.5, posY = 787.20001, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2519.6001, posY = 791.09998, posZ = 15, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.2, posY = 797.09998, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.2, posY = 797.09998, posZ = 13, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.2, posY = 797.09998, posZ = 15.1, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.2, posY = 797.09998, posZ = 16.8, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.3, posY = 802, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.3, posY = 802, posZ = 13, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.3, posY = 802, posZ = 15.2, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.3, posY = 802, posZ = 16.8, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.3, posY = 787.20001, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.3, posY = 787.20001, posZ = 13, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.3, posY = 787.20001, posZ = 15.2, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 9131, doublesided = false, scale = 1, dimension = 0, posX = 2537.3, posY = 787.20001, posZ = 16.8, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 2523.3999, posY = 795.70001, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 2523.3999, posY = 794.79999, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 2523.3999, posY = 793.90002, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2455, doublesided = false, scale = 1, dimension = 0, posX = 2523.3999, posY = 789.40002, posZ = 9.7, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2448, doublesided = false, scale = 1, dimension = 0, posX = 2523.2, posY = 789.70001, posZ = 8.4, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2753, doublesided = false, scale = 1, dimension = 0, posX = 2523.5, posY = 795.20001, posZ = 10.9, rotX = 0, rotY = 0, rotZ = 90.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1359, doublesided = false, scale = 0.60000002, dimension = 0, posX = 2536.2, posY = 794.59998, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2806, doublesided = false, scale = 1, dimension = 0, posX = 2523.3, posY = 790.90002, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 11.997},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2804, doublesided = false, scale = 1, dimension = 0, posX = 2523.3, posY = 790.5, posZ = 11, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2804, doublesided = false, scale = 1, dimension = 0, posX = 2523.3, posY = 791.20001, posZ = 11, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2590, doublesided = false, scale = 1, dimension = 0, posX = 2520.1001, posY = 795.29999, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 229.999},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2590, doublesided = false, scale = 1, dimension = 0, posX = 2520.1001, posY = 794.5, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 229.999},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2519.6001, posY = 798.20001, posZ = 11.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2805, doublesided = false, scale = 1, dimension = 0, posX = 2520.2, posY = 795.29999, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2805, doublesided = false, scale = 1, dimension = 0, posX = 2520.2, posY = 796.20001, posZ = 10.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1989, doublesided = false, scale = 1, dimension = 0, posX = 2520.1001, posY = 797.5, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1989, doublesided = false, scale = 1, dimension = 0, posX = 2520.1001, posY = 798.40002, posZ = 9.8, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2803, doublesided = false, scale = 0.5, dimension = 0, posX = 2520.2, posY = 798.29999, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2803, doublesided = false, scale = 0.5, dimension = 0, posX = 2520.2, posY = 798.59998, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2803, doublesided = false, scale = 0.5, dimension = 0, posX = 2520.2, posY = 797.59998, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3117, doublesided = false, scale = 1, dimension = 0, posX = 2520.7, posY = 795.59998, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3117, doublesided = false, scale = 1, dimension = 0, posX = 2520.7, posY = 792.09998, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3117, doublesided = false, scale = 1, dimension = 0, posX = 2520.7, posY = 788.90002, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3117, doublesided = false, scale = 1, dimension = 0, posX = 2523.5, posY = 788.09998, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 180.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 944, doublesided = false, scale = 1, dimension = 0, posX = 2520.8999, posY = 794.90002, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3052, doublesided = false, scale = 1, dimension = 0, posX = 2524.6001, posY = 787.90002, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3015, doublesided = false, scale = 1, dimension = 0, posX = 2523.2, posY = 787.79999, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3014, doublesided = false, scale = 1, dimension = 0, posX = 2523.8, posY = 788.59998, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2969, doublesided = false, scale = 1, dimension = 0, posX = 2522.1001, posY = 787.79999, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1271, doublesided = false, scale = 1, dimension = 0, posX = 2520.5, posY = 792.70001, posZ = 13.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1431, doublesided = false, scale = 1, dimension = 0, posX = 2520.7, posY = 788.59998, posZ = 14, rotX = 0, rotY = 0, rotZ = 272},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1271, doublesided = false, scale = 1, dimension = 0, posX = 2520.5, posY = 791.79999, posZ = 13.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1271, doublesided = false, scale = 1, dimension = 0, posX = 2520.5, posY = 790.90002, posZ = 13.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1271, doublesided = false, scale = 1, dimension = 0, posX = 2521.3, posY = 791.29999, posZ = 13.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1271, doublesided = false, scale = 1, dimension = 0, posX = 2521.3, posY = 792.29999, posZ = 13.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2537.3999, posY = 799.59998, posZ = 11.6, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2537.5, posY = 789.29999, posZ = 11.6, rotX = 0, rotY = 270, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2537.5, posY = 792.59998, posZ = 11.6, rotX = 0, rotY = 270, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2527.7, posY = 787.20001, posZ = 11.6, rotX = 0, rotY = 270, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2524.5, posY = 787.20001, posZ = 11.6, rotX = 0, rotY = 270, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2521.2, posY = 787.20001, posZ = 11.6, rotX = 0, rotY = 270, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2519.6001, posY = 788.79999, posZ = 11.6, rotX = 0, rotY = 270, rotZ = 89.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2519.6001, posY = 792, posZ = 11.6, rotX = 0, rotY = 270, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 2519.6001, posY = 795.20001, posZ = 11.6, rotX = 0, rotY = 270, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 2531.5, posY = 791.20001, posZ = 17.7, rotX = 270, rotY = 0.258, rotZ = 90.258},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 2532.8, posY = 796.59998, posZ = 17.7, rotX = 270, rotY = 0.253, rotZ = 180.253},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 2524.1001, posY = 796.59998, posZ = 17.7, rotX = 270, rotY = 0.253, rotZ = 180.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 2525, posY = 791.2002, posZ = 17.7, rotX = 270, rotY = 0.253, rotZ = 90.253},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 2518.6001, posY = 791.20001, posZ = 17.7, rotX = 270, rotY = 0.253, rotZ = 90.253},
	{type = 'removeWorldObject', radius = 4.1892939, interior = 0, model = 858, lodModel = 0, posX = 2521.6926, posY = 799.31891, posZ = 9.83732, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 3.933352, interior = 0, model = 904, lodModel = 0, posX = 2521.3523, posY = 800.8819, posZ = 9.82984, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 2533.2, posY = 787.20001, posZ = 10, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 4.1892939, interior = 0, model = 858, lodModel = 0, posX = 2521.6926, posY = 799.31891, posZ = 9.83732, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 3.933352, interior = 0, model = 904, lodModel = 0, posX = 2521.3523, posY = 800.8819, posZ = 9.82984, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2790, doublesided = false, scale = 1, dimension = 0, posX = 2537.3999, posY = 790.79999, posZ = 15.2, rotX = 0, rotY = 0, rotZ = 90},
}

function ahsd82hdsn ()
temporizador = {}
	function inicioCliente (jogador)
		if PUNKSTUDIOSkoasd9jaindsaj == false then return end
		if not isElement(jogador) then jogador = source end
		if table.contain (jogadoresProntos, jogador) then
		triggerClientEvent (jogador, "PUNKMapaLojasLVClient", jogador, loja1, loja2, loja3, loja4)
		else
		local str = jogador
			temporizador[str] = setTimer (function ()
				if isElement (jogador) then
					if table.contain (jogadoresProntos, jogador) then
					triggerClientEvent (jogador, "PUNKMapaLojasLVClient", jogador, loja1, loja2, loja3, loja4)
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
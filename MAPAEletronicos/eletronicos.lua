--Produto
PUNKSTUDIOSkoasd9jaindsaj = false local codigoProduto = "eletronicos"

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
function criarMapa (eletronicos)
local jogador = source
	if jogador == localPlayer then
		for i = 1, #eletronicos do
		local c = eletronicos[i]
			if c.type == "object" then
				local object = createObject(c.model, c.posX, c.posY, c.posZ, c.rotX, c.rotY, c.rotZ)
				setObjectScale(object, c.scale)
				setElementInterior(object, c.interior)
				setElementDimension(object, c.dimension)
				setElementAlpha(object, c.alpha)
				setElementCollisionsEnabled(object, c.collisions)
				setElementDoubleSided(object, c.doublesided)
				setObjectBreakable(object, c.breakable)
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
addEvent ("PUNKMapaEletronicosClient", true)
addEventHandler ("PUNKMapaEletronicosClient", getRootElement (), criarMapa)
end

--Server
if isElement (localPlayer) == false then

jogadoresProntos = {}
addEventHandler ("onPlayerResourceStart", getRootElement(), function (res)
	if res == getThisResource () then
	local jogador = source
	table.insert (jogadoresProntos, jogador)
	end
end)

function ahsd82hdsn ()

function table.contain (tabela, item)
	for index, value in ipairs(tabela) do
		if value == item then
		return true
		end
	end
	return false
end

local eletronicos = {
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.59998, posY = -1522.1, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 90.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 596.79999, posY = -1522.2, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 90.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 580.5, posY = -1522.3, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 90.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 585, posY = -1515, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 0.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 584.90002, posY = -1502.5, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 0.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 580.70001, posY = -1522.3, posZ = 12.1, rotX = 0, rotY = 0, rotZ = 90.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 583.40002, posY = -1495.2, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 91.242},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 600.40002, posY = -1495.1, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1495, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 587.59998, posY = -1495.2, posZ = 12, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 588.20001, posY = -1511.9, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 0.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 588.09998, posY = -1507.4, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 0.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 595.20001, posY = -1520.5, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 0.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 606.09998, posY = -1520.4, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 0.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 611.29999, posY = -1515, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 90.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 611.09998, posY = -1501.8, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 605.79999, posY = -1496.6, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 180.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 595.20001, posY = -1496.7, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 180.492},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 588.09998, posY = -1502.9, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 0.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 589.70001, posY = -1506, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 270.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 589.7998, posY = -1515.2998, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 270.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 589.70001, posY = -1502, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 270.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 611.2998, posY = -1515, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 611.09961, posY = -1501.7998, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 611.09961, posY = -1501.7998, posZ = 25.3, rotX = 0, rotY = 0, rotZ = 270.731},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 611.2002, posY = -1512.5, posZ = 25.3, rotX = 0, rotY = 0, rotZ = 270.483},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 611.29999, posY = -1515, posZ = 25.3, rotX = 0, rotY = 0, rotZ = 270.483},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 611.29999, posY = -1515, posZ = 25.3, rotX = 0, rotY = 0, rotZ = 270.483},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 616.59998, posY = -1516.2, posZ = 12.5, rotX = 0, rotY = 0, rotZ = 89.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.09998, posY = -1511.8, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 180.497},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.09961, posY = -1505.2998, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 180.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 612.70001, posY = -1505.3, posZ = 11.6, rotX = 0, rotY = 0, rotZ = 180.744},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 611.20001, posY = -1515, posZ = 25.3, rotX = 0, rotY = 0, rotZ = 90.483},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 611.09998, posY = -1504.1, posZ = 25.3, rotX = 0, rotY = 0, rotZ = 90.736},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 611.09998, posY = -1501.80005, posZ = 25.3, rotX = 0, rotY = 0, rotZ = 90.736},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = false, scale = 1, dimension = 0, posX = 610.90002, posY = -1520.3, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = false, scale = 1, dimension = 0, posX = 611.09998, posY = -1508.3, posZ = 26.7, rotX = 90, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = false, scale = 1, dimension = 0, posX = 611, posY = -1496.0996, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 605.7998, posY = -1496.5996, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 0.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 595.2002, posY = -1496.7002, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 589.7002, posY = -1502, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 90.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 589.7002, posY = -1502, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 90.478},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 589.7998, posY = -1515.2998, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 90.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 589.70001, posY = -1506, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 90.483},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 595.2002, posY = -1520.5, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 180.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 606.09961, posY = -1520.4004, posZ = 20.1, rotX = 0, rotY = 0, rotZ = 180.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 620.5, posY = -1516.2998, posZ = 12.5, rotX = 0, rotY = 0, rotZ = 89.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 624.09998, posY = -1501.3, posZ = 12, rotX = 13.997, rotY = 0, rotZ = 91.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 620.5, posY = -1507.5, posZ = 12.5, rotX = 0, rotY = 0, rotZ = 89.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 620.5, posY = -1501, posZ = 12.5, rotX = 0, rotY = 0, rotZ = 89.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 616.70001, posY = -1501, posZ = 12.5, rotX = 0, rotY = 0, rotZ = 89.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 616.59998, posY = -1508.1, posZ = 12.5, rotX = 0, rotY = 0, rotZ = 89.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 583.40002, posY = -1492, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 91.241},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 583.29999, posY = -1489, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 91.241},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 587.5, posY = -1492, posZ = 12, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 587.5, posY = -1489.2, posZ = 12, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 600.70001, posY = -1492.1, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 600.7002, posY = -1489.0996, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1491.7002, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1488.8, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1485.5, posZ = 11.5, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1482.3, posZ = 11.3, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1479, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1475.8, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1472.5, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1469.2002, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1465.9, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1462.6, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1459.6, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1456.3, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1453.1, posZ = 11.2, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1449.9, posZ = 11.1, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1446.9, posZ = 11.1, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1443.6, posZ = 11.1, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1440.4, posZ = 11.1, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1437.3, posZ = 11.1, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1434.1, posZ = 10.9, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1430.9, posZ = 10.9, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1427.8, posZ = 10.9, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.59998, posY = -1427.5, posZ = 10.7, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'removeWorldObject', radius = 2.6354723, interior = 0, model = 1215, lodModel = 0, posX = 616.97394, posY = -1488.2888, posZ = 14.73252, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 2.6354723, interior = 0, model = 1215, lodModel = 0, posX = 617.00989, posY = -1491.9053, posZ = 14.48651, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 2.6354723, interior = 0, model = 1215, lodModel = 0, posX = 616.88196, posY = -1495.5551, posZ = 14.55769, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.09961, posY = -1492.2002, posZ = 13.5, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.09998, posY = -1488.9, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.09998, posY = -1485.7, posZ = 13, rotX = 0, rotY = 0, rotZ = 89.5},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.2002, posY = -1475.5, posZ = 12.9, rotX = 0, rotY = 0, rotZ = 89.742},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.2002, posY = -1465.5, posZ = 12.9, rotX = 0, rotY = 0, rotZ = 90.242},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.20001, posY = -1456.5, posZ = 12.9, rotX = 0, rotY = 0, rotZ = 89.742},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.20001, posY = -1446.9, posZ = 12.8, rotX = 0, rotY = 0, rotZ = 90.236},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.20001, posY = -1440.8, posZ = 12.8, rotX = 0, rotY = 0, rotZ = 90.236},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.2002, posY = -1431.2002, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 89.984},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 617.20001, posY = -1497.1, posZ = 13.5, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1495.2, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 89.739},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 614.59998, posY = -1501.6, posZ = 13.5, rotX = 0, rotY = 0, rotZ = 270.495},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 614.59998, posY = -1511.7, posZ = 13.5, rotX = 0, rotY = 0, rotZ = 269.744},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 614.59998, posY = -1515.4, posZ = 13.5, rotX = 0, rotY = 0, rotZ = 270.492},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 617.20001, posY = -1520.5, posZ = 13.5, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1526.7, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 90.242},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1529.9, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 90.492},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1532.7, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1525.3, posZ = 13.5, rotX = 0, rotY = 0, rotZ = 89.739},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.2998, posY = -1527.5996, posZ = 13.5, rotX = 0, rotY = 0, rotZ = 89.731},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 617.09998, posY = -1520.1, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 617.09998, posY = -1517.1, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 617.20001, posY = -1513.9, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 617.2998, posY = -1510.7002, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 617.20001, posY = -1507.2, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 617.40002, posY = -1503.7, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 617.40002, posY = -1500.6, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 617.40002, posY = -1497.5, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 606.09998, posY = -1520.1, posZ = 16.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 606.09998, posY = -1520.1, posZ = 17.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 598.5, posY = -1520.2, posZ = 17.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 598.5, posY = -1520.2, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 593.79999, posY = -1520.2, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 593.79999, posY = -1520.2, posZ = 17.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1516.4, posZ = 17.3, rotX = 0, rotY = 0, rotZ = 269.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1516.4, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 269.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1508.6, posZ = 12.4, rotX = 0, rotY = 0, rotZ = 269.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 590, posY = -1500.9, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 269.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 590.09961, posY = -1508.5996, posZ = 17.4, rotX = 0, rotY = 0, rotZ = 269.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 590, posY = -1500.9, posZ = 17.3, rotX = 0, rotY = 0, rotZ = 269.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 593.79999, posY = -1497, posZ = 17.3, rotX = 0, rotY = 0, rotZ = 179.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 593.79999, posY = -1497, posZ = 12.5, rotX = 0, rotY = 0, rotZ = 179.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 601.59998, posY = -1497, posZ = 12.5, rotX = 0, rotY = 0, rotZ = 179.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 601.59998, posY = -1497, posZ = 17.3, rotX = 0, rotY = 0, rotZ = 179.747},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 606.40002, posY = -1497, posZ = 17.3, rotX = 0, rotY = 0, rotZ = 180.997},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3055, doublesided = false, scale = 1, dimension = 0, posX = 606.40002, posY = -1497, posZ = 12.9, rotX = 0, rotY = 0, rotZ = 180.994},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 591.70001, posY = -1500.4, posZ = 14.3, rotX = 0, rotY = 272, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 591.70001, posY = -1507, posZ = 14.3, rotX = 0, rotY = 272, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 591.70001, posY = -1514, posZ = 14.3, rotX = 0, rotY = 272, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 591.70001, posY = -1516.7, posZ = 14.3, rotX = 0, rotY = 272, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 604.5, posY = -1516.9, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 608.70001, posY = -1516.9, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 609, posY = -1516.8, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 608.90002, posY = -1510, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 608.90002, posY = -1502.9, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 608.90002, posY = -1499.9, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 604.70001, posY = -1500.5, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 600.59998, posY = -1500.5, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 596, posY = -1500.5, posZ = 14.2, rotX = 0, rotY = 272, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 600.09998, posY = -1500.5, posZ = 13.9, rotX = 0, rotY = 276, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 595.90002, posY = -1507.2, posZ = 14.2, rotX = 0, rotY = 272, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 595.90002, posY = -1514.2, posZ = 14.2, rotX = 0, rotY = 272, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 595.90002, posY = -1516.7, posZ = 14.2, rotX = 0, rotY = 272, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 600.09998, posY = -1507.2, posZ = 13.9, rotX = 0, rotY = 275.999, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 600.09998, posY = -1514.2, posZ = 13.9, rotX = 0, rotY = 275.999, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 600.09998, posY = -1516.8, posZ = 13.9, rotX = 0, rotY = 275.999, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 600.90002, posY = -1507.2, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 600.90002, posY = -1514.2, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 601.5, posY = -1516.6, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 605.09998, posY = -1510.6, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16501, doublesided = false, scale = 1, dimension = 0, posX = 605, posY = -1506.8, posZ = 14, rotX = 0, rotY = 269.995, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = false, scale = 1, dimension = 0, posX = 610.90002, posY = -1510.3, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = false, scale = 1, dimension = 0, posX = 610.90002, posY = -1506.6, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 611.20001, posY = -1503.7, posZ = 17.1, rotX = 0, rotY = 0, rotZ = 91.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 611.09998, posY = -1499.4, posZ = 17.1, rotX = 0, rotY = 0, rotZ = 91.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = false, scale = 1, dimension = 0, posX = 611, posY = -1496.5, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 611.29999, posY = -1513.2, posZ = 17.1, rotX = 0, rotY = 0, rotZ = 91.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1649, doublesided = true, scale = 1, dimension = 0, posX = 611.40002, posY = -1517.5, posZ = 17.1, rotX = 0, rotY = 0, rotZ = 91.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 330, doublesided = true, scale = 5, dimension = 0, posX = 611.20001, posY = -1508.1, posZ = 20.3, rotX = 0, rotY = 2, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 606.5, posY = -1515.9, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 604.70001, posY = -1515.9, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 602.90002, posY = -1515.9, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 601.09998, posY = -1515.9, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 606.09998, posY = -1512, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 604.40002, posY = -1512, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 602.59998, posY = -1512, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 600.79999, posY = -1512, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 600.79999, posY = -1505.5, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 602.5, posY = -1505.5, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 604.20001, posY = -1505.5, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 606, posY = -1505.5, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 605.90002, posY = -1501.8, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 604.20001, posY = -1501.8, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 602.40002, posY = -1501.8, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 937, doublesided = false, scale = 1, dimension = 0, posX = 600.59998, posY = -1501.8, posZ = 14.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1742, doublesided = false, scale = 1, dimension = 0, posX = 608.79999, posY = -1497, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1742, doublesided = false, scale = 1, dimension = 0, posX = 607.29999, posY = -1497, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1742, doublesided = false, scale = 1, dimension = 0, posX = 605.90002, posY = -1497, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1742, doublesided = false, scale = 1, dimension = 0, posX = 604.5, posY = -1497, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1742, doublesided = false, scale = 1, dimension = 0, posX = 603.09998, posY = -1497, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1742, doublesided = false, scale = 1, dimension = 0, posX = 601.70001, posY = -1497, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1742, doublesided = false, scale = 1, dimension = 0, posX = 600.29999, posY = -1497, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1742, doublesided = false, scale = 1, dimension = 0, posX = 598.90002, posY = -1497, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2199, doublesided = false, scale = 1, dimension = 0, posX = 610.79999, posY = -1498.3, posZ = 14, rotX = 0, rotY = 0, rotZ = 269.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2199, doublesided = false, scale = 1, dimension = 0, posX = 610.79999, posY = -1499.8, posZ = 14, rotX = 0, rotY = 0, rotZ = 269.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2199, doublesided = false, scale = 1, dimension = 0, posX = 610.79999, posY = -1501.4, posZ = 14, rotX = 0, rotY = 0, rotZ = 269.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2199, doublesided = false, scale = 1, dimension = 0, posX = 610.90002, posY = -1501.4, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 269.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2199, doublesided = false, scale = 1, dimension = 0, posX = 610.79999, posY = -1502.8, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 269.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2199, doublesided = false, scale = 1, dimension = 0, posX = 610.79999, posY = -1504.1, posZ = 13.9, rotX = 0, rotY = 0, rotZ = 269.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2502, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1512.9, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2502, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1511.7, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2502, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1510.4, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2502, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1509.1, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2502, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1507.8, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2502, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1506.5, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2502, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1506.5, posZ = 16.2, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2502, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1507.8, posZ = 16.2, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2502, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1509.1, posZ = 16.2, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2502, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1510.4, posZ = 16.2, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2502, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1511.7, posZ = 16.2, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2502, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1512.9, posZ = 16.2, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2568, doublesided = false, scale = 1, dimension = 0, posX = 590.20001, posY = -1497.5, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2604, doublesided = false, scale = 1, dimension = 0, posX = 595.90002, posY = -1497.4, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2608, doublesided = false, scale = 1, dimension = 0, posX = 590, posY = -1503, posZ = 15.6, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2608, doublesided = false, scale = 1, dimension = 0, posX = 590, posY = -1501.3, posZ = 15.6, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2608, doublesided = false, scale = 1, dimension = 0, posX = 590, posY = -1499.4, posZ = 15.6, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 14455, doublesided = false, scale = 1, dimension = 0, posX = 592.5, posY = -1519.8, posZ = 16.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 16154, doublesided = false, scale = 1, dimension = 0, posX = 597.40002, posY = -1516.5, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1518, doublesided = false, scale = 1, dimension = 0, posX = 590.70001, posY = -1512.5, posZ = 16.8, rotX = 0, rotY = 0, rotZ = 90.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1719, doublesided = false, scale = 1, dimension = 0, posX = 600.79999, posY = -1512.2, posZ = 14.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1719, doublesided = false, scale = 1, dimension = 0, posX = 600.79999, posY = -1512.2, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1748, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1508.7, posZ = 16.3, rotX = 0, rotY = 0, rotZ = 82.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1749, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1511.3, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 91},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1749, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1507.4, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 91},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1750, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1506.2, posZ = 16.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1750, doublesided = false, scale = 1, dimension = 0, posX = 590.20001, posY = -1507.5, posZ = 16.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1752, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1510.2, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1752, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1508.9, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1781, doublesided = false, scale = 1, dimension = 0, posX = 590, posY = -1511.4, posZ = 16.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1782, doublesided = false, scale = 1, dimension = 0, posX = 605.90002, posY = -1505.5, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1782, doublesided = false, scale = 1, dimension = 0, posX = 600.70001, posY = -1505.5, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1783, doublesided = false, scale = 1, dimension = 0, posX = 602.59998, posY = -1505.5, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1785, doublesided = false, scale = 1, dimension = 0, posX = 604, posY = -1505.5, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1786, doublesided = false, scale = 1, dimension = 0, posX = 605.90002, posY = -1512.2, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 140},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1787, doublesided = false, scale = 1, dimension = 0, posX = 604.29999, posY = -1512, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1788, doublesided = false, scale = 1, dimension = 0, posX = 600.70001, posY = -1512, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1790, doublesided = false, scale = 1, dimension = 0, posX = 602.29999, posY = -1501.9, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1791, doublesided = false, scale = 1, dimension = 0, posX = 604.20001, posY = -1501.7, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1792, doublesided = false, scale = 1, dimension = 0, posX = 602.70001, posY = -1516.1, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 130.75},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1809, doublesided = false, scale = 1, dimension = 0, posX = 606.5, posY = -1515.9, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1841, doublesided = false, scale = 1, dimension = 0, posX = 601.5, posY = -1515.9, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 250},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1841, doublesided = false, scale = 1, dimension = 0, posX = 601, posY = -1515.8, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 249.999},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1841, doublesided = false, scale = 1, dimension = 0, posX = 600.5, posY = -1515.7, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 249.999},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2028, doublesided = false, scale = 1, dimension = 0, posX = 605.09998, posY = -1515.9, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2028, doublesided = false, scale = 1, dimension = 0, posX = 604.40002, posY = -1515.9, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2100, doublesided = false, scale = 1, dimension = 0, posX = 609, posY = -1519.8, posZ = 14, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2100, doublesided = false, scale = 1, dimension = 0, posX = 607.20001, posY = -1519.8, posZ = 14, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2104, doublesided = false, scale = 1, dimension = 0, posX = 605.20001, posY = -1519.8, posZ = 14, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2104, doublesided = false, scale = 1, dimension = 0, posX = 604.5, posY = -1519.8, posZ = 14, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2190, doublesided = false, scale = 1, dimension = 0, posX = 600.29999, posY = -1501.6, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2190, doublesided = false, scale = 1, dimension = 0, posX = 601.20001, posY = -1501.6, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2192, doublesided = false, scale = 1, dimension = 0, posX = 605.79999, posY = -1501.5, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2192, doublesided = false, scale = 1, dimension = 0, posX = 606.5, posY = -1501.3, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 12},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2192, doublesided = false, scale = 1, dimension = 0, posX = 606.09998, posY = -1501.7, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 11.997},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2225, doublesided = false, scale = 1, dimension = 0, posX = 603.59998, posY = -1519.1, posZ = 14, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2229, doublesided = false, scale = 1, dimension = 0, posX = 602.09998, posY = -1519.7, posZ = 14, rotX = 0, rotY = 0, rotZ = 182},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2229, doublesided = false, scale = 1, dimension = 0, posX = 601.40002, posY = -1519.7, posZ = 14, rotX = 0, rotY = 0, rotZ = 182},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2229, doublesided = false, scale = 1, dimension = 0, posX = 600.5, posY = -1519.7, posZ = 14, rotX = 0, rotY = 0, rotZ = 182},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2233, doublesided = false, scale = 1, dimension = 0, posX = 610.79999, posY = -1519, posZ = 14, rotX = 0, rotY = 0, rotZ = 240},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2233, doublesided = false, scale = 1, dimension = 0, posX = 610.70001, posY = -1519.4, posZ = 14, rotX = 0, rotY = 0, rotZ = 239.996},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2233, doublesided = false, scale = 1, dimension = 0, posX = 610.79999, posY = -1518.4, posZ = 14, rotX = 0, rotY = 0, rotZ = 239.996},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2595, doublesided = false, scale = 1, dimension = 0, posX = 602.59998, posY = -1512.1, posZ = 15.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1512.9, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1512.4, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1511.8, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1511.2, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1510.4, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1509.7, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1509, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1508.3, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1507.5, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1506.7, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.09998, posY = -1505.9, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1505.9, posZ = 14.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1506.3, posZ = 14.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1506.6, posZ = 14.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1506.3, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1506.6, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1507, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1507.5, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1508, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1508.4, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1508.9, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1509.4, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1509.9, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1510.4, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1510.8, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1511.2, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1511.6, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1512, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1512.4, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1512.8, posZ = 18, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1512.6, posZ = 17.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1512.2, posZ = 17.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1511.5, posZ = 17.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1510.7, posZ = 17.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1510.4, posZ = 17.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1510.1, posZ = 17.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1509.4, posZ = 17.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1508.8, posZ = 17.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1508.3, posZ = 17.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1507.7, posZ = 17.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1507.1, posZ = 17.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1506.4, posZ = 17.6, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 330, doublesided = false, scale = 1, dimension = 0, posX = 590.29999, posY = -1505.9, posZ = 17.8, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 604.40002, posY = -1515.1, posZ = 19.8, rotX = 272, rotY = 90, rotZ = 180.728},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 598.09998, posY = -1515.2, posZ = 19.8, rotX = 272, rotY = 90, rotZ = 180.725},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 591.70001, posY = -1515.2, posZ = 19.8, rotX = 272, rotY = 90, rotZ = 180.725},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 589.79999, posY = -1515.1, posZ = 19.8, rotX = 272, rotY = 90, rotZ = 180.725},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 589.59998, posY = -1504.6, posZ = 19.4, rotX = 272, rotY = 90, rotZ = 181.225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 589.59998, posY = -1502.4, posZ = 19.3, rotX = 272, rotY = 90, rotZ = 181.225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 596.09961, posY = -1504.5, posZ = 19.4, rotX = 272, rotY = 90, rotZ = 181.225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 602.79999, posY = -1504.4, posZ = 19.4, rotX = 272, rotY = 90, rotZ = 181.225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 604.29999, posY = -1504.3, posZ = 19.4, rotX = 272, rotY = 90, rotZ = 181.225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 604.29999, posY = -1502.3, posZ = 19.3, rotX = 272, rotY = 90, rotZ = 181.225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 597.79999, posY = -1502.6, posZ = 19.3, rotX = 272, rotY = 90, rotZ = 181.225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2885, doublesided = false, scale = 1, dimension = 0, posX = 596, posY = -1502.5, posZ = 19.3, rotX = 272, rotY = 90, rotZ = 181.225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1984, doublesided = false, scale = 1, dimension = 0, posX = 593.40002, posY = -1510, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1984, doublesided = false, scale = 1, dimension = 0, posX = 593.40039, posY = -1507.0996, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 611.59998, posY = -1520.4, posZ = 14.3, rotX = 0, rotY = 0, rotZ = 354},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 611.59998, posY = -1510.4, posZ = 14.3, rotX = 0, rotY = 0, rotZ = 353.996},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 611.59998, posY = -1506.6, posZ = 14.3, rotX = 0, rotY = 0, rotZ = 353.996},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 611.70001, posY = -1496.4, posZ = 14.3, rotX = 0, rotY = 0, rotZ = 353.996},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = false, scale = 1, dimension = 0, posX = 611.09998, posY = -1484.7, posZ = 26.7, rotX = 90, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = false, scale = 1, dimension = 0, posX = 611.20001, posY = -1531.9, posZ = 26.7, rotX = 90, rotY = 179.995, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2774, doublesided = false, scale = 1, dimension = 0, posX = 611.09998, posY = -1488.8, posZ = 14.4, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 1411, doublesided = false, scale = 1, dimension = 0, posX = 611.09998, posY = -1523.3, posZ = 15.9, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2885, doublesided = false, scale = 2, dimension = 0, posX = 597.79999, posY = -1510.1, posZ = 20.2, rotX = 272, rotY = 90, rotZ = 181.225},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2885, doublesided = false, scale = 2, dimension = 0, posX = 589.29999, posY = -1510.3, posZ = 20.2, rotX = 272, rotY = 90, rotZ = 181.225},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2885, doublesided = false, scale = 2, dimension = 0, posX = 597.59998, posY = -1507.2, posZ = 20.2, rotX = 272, rotY = 90, rotZ = 181.225},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 2885, doublesided = false, scale = 2, dimension = 0, posX = 589.29999, posY = -1507.4, posZ = 20.2, rotX = 272, rotY = 90, rotZ = 181.225},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.59961, posY = -1427, posZ = 10.5, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 624.40002, posY = -1510, posZ = 12, rotX = 13.997, rotY = 0, rotZ = 91.994},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 624.59998, posY = -1515.9, posZ = 12, rotX = 13.997, rotY = 0, rotZ = 91.994},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 621, posY = -1516, posZ = 12.5, rotX = 0, rotY = 0, rotZ = 89.742},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = true, scale = 0.5, dimension = 0, posX = 617.2998, posY = -1510.7002, posZ = 13.7, rotX = 0, rotY = 0, rotZ = 0.489},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 11292, doublesided = false, scale = 1, dimension = 0, posX = 620.70001, posY = -1507.5, posZ = 12.5, rotX = 0, rotY = 0, rotZ = 89.992},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 2714, doublesided = true, scale = 1, dimension = 0, posX = 611.40002, posY = -1512.6, posZ = 16.3, rotX = 0, rotY = 0, rotZ = 91.25},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 5811, doublesided = false, scale = 1, dimension = 0, posX = 620.29999, posY = -1459.2, posZ = 17.3, rotX = 0, rotY = 0, rotZ = 355.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 7306, doublesided = false, scale = 0.5, dimension = 0, posX = 611.20001, posY = -1508.9, posZ = 22.7, rotX = 0, rotY = 0, rotZ = 136},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 7306, doublesided = false, scale = 0.5, dimension = 0, posX = 611.20001, posY = -1508.2, posZ = 22.7, rotX = 0, rotY = 0, rotZ = 136},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 7306, doublesided = false, scale = 0.5, dimension = 0, posX = 611.09998, posY = -1508.5, posZ = 22.7, rotX = 0, rotY = 0, rotZ = 132.5},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1534.3, posZ = 11.8, rotX = 0, rotY = 4, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1537.3, posZ = 11.9, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1540.5, posZ = 11.9, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1543.8, posZ = 11.9, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1547, posZ = 11.9, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1548.8, posZ = 12, rotX = 0, rotY = 4, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1551.7, posZ = 12.2, rotX = 0, rotY = 4, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1554.8, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1558, posZ = 12.3, rotX = 0, rotY = 0, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1559.3, posZ = 12.3, rotX = 0, rotY = 2, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1540.8, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 90.231},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.20001, posY = -1541, posZ = 13.5, rotX = 0, rotY = 0, rotZ = 89.731},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1561.9, posZ = 12.4, rotX = 0, rotY = 2, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1565.1, posZ = 12.5, rotX = 0, rotY = 2, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1567.8, posZ = 12.6, rotX = 0, rotY = 2, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1570.6, posZ = 12.7, rotX = 0, rotY = 2, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1571.2, posZ = 12.5, rotX = 0, rotY = 2, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1571.8, posZ = 12.4, rotX = 0, rotY = 2, rotZ = 90.742},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 614.70001, posY = -1518.2, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 270.25},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 614.70001, posY = -1514, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 614.70001, posY = -1503.5, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 614.70001, posY = -1499.4, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1494.8, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1490.7, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1486.7, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1482.6, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 269.997},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1478.5, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1486.7, posZ = 13.9, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1482.6, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1478.5, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1459.5, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 620.29999, posY = -1457.4, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 359.245},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 618.20001, posY = -1459.4, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 90.242},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 620.29999, posY = -1461.5, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 177.741},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1437.8, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1433.7, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1433.7, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1429.6, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1427.2, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1429.6, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1427.2, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 617.29999, posY = -1427.2, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 617.29999, posY = -1427.2, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 614.70001, posY = -1427.2, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 614.70001, posY = -1427.2, posZ = 13.4, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1256, doublesided = false, scale = 1, dimension = 0, posX = 617.90002, posY = -1449.8, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1256, doublesided = false, scale = 1, dimension = 0, posX = 617.90002, posY = -1442, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1256, doublesided = false, scale = 1, dimension = 0, posX = 613.90002, posY = -1442.1, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 359.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1256, doublesided = false, scale = 1, dimension = 0, posX = 613.79999, posY = -1450.1, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 359.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1256, doublesided = false, scale = 1, dimension = 0, posX = 614, posY = -1467.4, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 359.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1256, doublesided = false, scale = 1, dimension = 0, posX = 614, posY = -1475.8, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 359.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1256, doublesided = false, scale = 1, dimension = 0, posX = 617.90002, posY = -1475.6, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 178.239},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1256, doublesided = false, scale = 1, dimension = 0, posX = 618, posY = -1467.3, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 179.737},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 615.79999, posY = -1478.2, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 615.70001, posY = -1478.2, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 184.5},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 616, posY = -1464.9, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 616, posY = -1464.9004, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 615.79999, posY = -1452.4, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 616, posY = -1452.4, posZ = 13.2, rotX = 0, rotY = 0, rotZ = 351.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 615.70001, posY = -1439, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 615.7002, posY = -1439, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 359.995},
	{type = 'removeWorldObject', radius = 2.6354723, interior = 0, model = 1215, lodModel = 0, posX = 616.7923, posY = -1421.7245, posZ = 13.36383, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 2.6354723, interior = 0, model = 1215, lodModel = 0, posX = 616.91437, posY = -1416.3834, posZ = 13.21425, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 2.6354723, interior = 0, model = 1215, lodModel = 0, posX = 614.10657, posY = -1416.4183, posZ = 13.02456, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1776, doublesided = false, scale = 1, dimension = 0, posX = 607.40002, posY = -1437, posZ = 14.6, rotX = 0, rotY = 0, rotZ = 49.75},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3447, doublesided = false, scale = 1, dimension = 0, posX = 614.5, posY = -1417.5, posZ = 20, rotX = 0, rotY = 0, rotZ = 4},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3447, doublesided = false, scale = 1, dimension = 0, posX = 614.59998, posY = -1414.9, posZ = 20, rotX = 0, rotY = 0, rotZ = 3.999},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1570, doublesided = false, scale = 1, dimension = 0, posX = 609.70001, posY = -1420.1, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 6},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1363, doublesided = false, scale = 1, dimension = 0, posX = 610, posY = -1446.9, posZ = 14.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1363, doublesided = false, scale = 1, dimension = 0, posX = 610.40002, posY = -1470.6, posZ = 14.3, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1342, doublesided = false, scale = 1, dimension = 0, posX = 608.59998, posY = -1478.5, posZ = 14.7, rotX = 0, rotY = 0, rotZ = 38},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1341, doublesided = false, scale = 1, dimension = 0, posX = 613.70001, posY = -1488.3, posZ = 15.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1340, doublesided = false, scale = 1, dimension = 0, posX = 608.09998, posY = -1453.5, posZ = 14.8, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1424.9, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 174},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1420.3, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 173.996},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 622.20001, posY = -1415.6, posZ = 13, rotX = 0, rotY = 0, rotZ = 173.996},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 617.29999, posY = -1410.7, posZ = 13, rotX = 0, rotY = 0, rotZ = 263.996},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 612.29999, posY = -1411.3, posZ = 13.1, rotX = 0, rotY = 0, rotZ = 263.99},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 606.29999, posY = -1411.8, posZ = 13, rotX = 0, rotY = 0, rotZ = 263.99},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 617.29999, posY = -1425, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 173.996},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 614.70001, posY = -1425, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 173.996},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 611.20001, posY = -1425, posZ = 13.3, rotX = 0, rotY = 0, rotZ = 173.996},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 611.20001, posY = -1427, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 611.20001, posY = -1427, posZ = 13.5, rotX = 0, rotY = 0, rotZ = 269.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.20001, posY = -1430.3, posZ = 12.6, rotX = 0, rotY = 0, rotZ = 89.984},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1440, posZ = 14.2, rotX = 0, rotY = 0, rotZ = 173.996},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1457.3, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 173.996},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1461.8, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 173.996},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 618.20001, posY = -1457.2, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 173.996},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1319, doublesided = false, scale = 1, dimension = 0, posX = 618.20001, posY = -1461.6, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 173.996},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1547.7, posZ = 14.7, rotX = 0, rotY = 358, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1551.8, posZ = 14.8, rotX = 0, rotY = 357.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1555.9, posZ = 14.9, rotX = 0, rotY = 359.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1559.9, posZ = 14.9, rotX = 0, rotY = 359.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1563.9, posZ = 14.9, rotX = 0, rotY = 359.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1568, posZ = 14.9, rotX = 0, rotY = 359.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1571.1, posZ = 14.9, rotX = 0, rotY = 359.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1571.1, posZ = 15.6, rotX = 0, rotY = 359.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1568, posZ = 15.6, rotX = 0, rotY = 359.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1563.9, posZ = 15.6, rotX = 0, rotY = 359.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1559.9, posZ = 15.6, rotX = 0, rotY = 359.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1555.9, posZ = 15.6, rotX = 0, rotY = 359.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1551.8, posZ = 15.5, rotX = 0, rotY = 357.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1547.7, posZ = 15.3, rotX = 0, rotY = 357.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 617.29999, posY = -1571.3, posZ = 15.6, rotX = 0, rotY = 359.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 610.79999, posY = -1573.2, posZ = 12.5, rotX = 0, rotY = 348, rotZ = 90.242},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 595.40002, posY = -1571.9, posZ = 12.7, rotX = 0, rotY = 2, rotZ = 90.492},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 619.59998, posY = -1571.3, posZ = 15.6, rotX = 0, rotY = 359.995, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 614.20001, posY = -1571.4, posZ = 15.6, rotX = 0, rotY = 359.995, rotZ = 269.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 612.09998, posY = -1573.4, posZ = 15.6, rotX = 0, rotY = 359.995, rotZ = 179.497},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 608.09998, posY = -1573.4, posZ = 15.6, rotX = 0, rotY = 359.989, rotZ = 180.245},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 604, posY = -1573.4, posZ = 15.6, rotX = 0, rotY = 359.989, rotZ = 180.242},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 599.90002, posY = -1573.4, posZ = 15.6, rotX = 0, rotY = 359.989, rotZ = 179.992},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 596.09998, posY = -1573.4, posZ = 15.6, rotX = 0, rotY = 359.989, rotZ = 179.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 592, posY = -1573.4, posZ = 15.6, rotX = 0, rotY = 359.989, rotZ = 179.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 588.90002, posY = -1573.4, posZ = 15.6, rotX = 0, rotY = 359.989, rotZ = 179.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 970, doublesided = false, scale = 1, dimension = 0, posX = 586.79999, posY = -1571.3, posZ = 15.6, rotX = 0, rotY = 359.989, rotZ = 89.989},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 605.40002, posY = -1571.9, posZ = 12.7, rotX = 0, rotY = 2, rotZ = 90.489},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3920, doublesided = false, scale = 1, dimension = 0, posX = 616.5, posY = -1565.4, posZ = 19.1, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3920, doublesided = false, scale = 1, dimension = 0, posX = 616.5, posY = -1553, posZ = 19.1, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3920, doublesided = false, scale = 1, dimension = 0, posX = 616.5, posY = -1541.2, posZ = 19.1, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3920, doublesided = false, scale = 1, dimension = 0, posX = 616.70001, posY = -1529.8, posZ = 19.1, rotX = 0, rotY = 0, rotZ = 270},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3920, doublesided = false, scale = 1, dimension = 0, posX = 610.5, posY = -1523.8, posZ = 19.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1226, doublesided = false, scale = 1, dimension = 0, posX = 623.40002, posY = -1540.2, posZ = 17.8, rotX = 0, rotY = 0, rotZ = 180},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1226, doublesided = false, scale = 1, dimension = 0, posX = 623.40002, posY = -1522.4, posZ = 17.8, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1226, doublesided = false, scale = 1, dimension = 0, posX = 623.29999, posY = -1494.5, posZ = 17.8, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'removeWorldObject', radius = 6.6149273, interior = 0, model = 1226, lodModel = 0, posX = 622.03143, posY = -1478.0203, posZ = 16.44536, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1226, doublesided = false, scale = 1, dimension = 0, posX = 623.29999, posY = -1476.2, posZ = 17.2, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1226, doublesided = false, scale = 1, dimension = 0, posX = 623.29999, posY = -1448.3, posZ = 17, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1226, doublesided = false, scale = 1, dimension = 0, posX = 623.29999, posY = -1426.1, posZ = 16.8, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = true, alpha = 255, model = 3566, doublesided = false, scale = 1, dimension = 0, posX = 613.5, posY = -1524.8, posZ = 11.8, rotX = 0, rotY = 0, rotZ = 86.986},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1530.9, posZ = 13.5, rotX = 0, rotY = 0, rotZ = 89.731},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 3578, doublesided = false, scale = 1, dimension = 0, posX = 622.29999, posY = -1530.7, posZ = 12.9, rotX = 0, rotY = 8, rotZ = 89.981},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 640, doublesided = true, scale = 1, dimension = 0, posX = 590.20001, posY = -1572.5, posZ = 15.9, rotX = 0, rotY = 0, rotZ = 270.25},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 640, doublesided = true, scale = 1, dimension = 0, posX = 598.40002, posY = -1572.5, posZ = 15.9, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 640, doublesided = true, scale = 1, dimension = 0, posX = 606.70001, posY = -1572.4, posZ = 15.9, rotX = 0, rotY = 0, rotZ = 270.247},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 587.09998, posY = -1573.1, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 260},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 594.40002, posY = -1572.7, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 259.997},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 602.5, posY = -1572.6, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 259.997},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 611.90002, posY = -1572.2, posZ = 14.1, rotX = 0, rotY = 0, rotZ = 259.997},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 616.20001, posY = -1560.2, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 3.997},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 616, posY = -1548.3, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 3.994},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 616.09998, posY = -1536.3, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 1.994},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1223, doublesided = false, scale = 1, dimension = 0, posX = 616.20001, posY = -1524.4, posZ = 13.6, rotX = 0, rotY = 0, rotZ = 1.989},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1361, doublesided = false, scale = 1, dimension = 0, posX = 615.20001, posY = -1561.5, posZ = 15.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1361, doublesided = false, scale = 1, dimension = 0, posX = 615.29999, posY = -1558.9, posZ = 15.5, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1361, doublesided = false, scale = 1, dimension = 0, posX = 615.29999, posY = -1549.7, posZ = 15.2, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1361, doublesided = false, scale = 1, dimension = 0, posX = 615.20001, posY = -1546.9, posZ = 15.1, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1361, doublesided = false, scale = 1, dimension = 0, posX = 615.29999, posY = -1537.7, posZ = 15, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1361, doublesided = false, scale = 1, dimension = 0, posX = 615.09998, posY = -1535.2, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1361, doublesided = false, scale = 1, dimension = 0, posX = 615.20001, posY = -1525.7, posZ = 14.9, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'removeWorldObject', radius = 6.6149273, interior = 0, model = 1226, lodModel = 0, posX = 622.12708, posY = -1561.099, posZ = 16.74034, rotX = 0, rotY = 0, rotZ = 0},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1226, doublesided = false, scale = 1, dimension = 0, posX = 623.29999, posY = -1565.8, posZ = 17.8, rotX = 0, rotY = 0, rotZ = 179.995},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1364, doublesided = false, scale = 1, dimension = 0, posX = 615.20001, posY = -1530.5, posZ = 15, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1364, doublesided = false, scale = 1, dimension = 0, posX = 614.90002, posY = -1542.2, posZ = 15, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1364, doublesided = false, scale = 1, dimension = 0, posX = 614.59998, posY = -1554.2, posZ = 15.3, rotX = 0, rotY = 0, rotZ = 90},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1364, doublesided = false, scale = 1, dimension = 0, posX = 614.70001, posY = -1565.7, posZ = 15.5, rotX = 0, rotY = 0, rotZ = 88},
	{type = 'object', breakable = true, interior = 0, collisions = false, alpha = 255, model = 1361, doublesided = false, scale = 1, dimension = 0, posX = 614.70001, posY = -1570.5, posZ = 15.8, rotX = 0, rotY = 0, rotZ = 0},
}

temporizador = {}
	function inicioCliente (jogador)
		if PUNKSTUDIOSkoasd9jaindsaj == false then return end
		if not isElement(jogador) then jogador = source end
		if table.contain (jogadoresProntos, jogador) then
		triggerClientEvent (jogador, "PUNKMapaEletronicosClient", jogador, eletronicos)
		else
		local str = tostring(jogador)
			temporizador[str] = setTimer (function ()
				if isElement (jogador) then
					if table.contain (jogadoresProntos, jogador) then
					triggerClientEvent (jogador, "PUNKMapaEletronicosClient", jogador, eletronicos)
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
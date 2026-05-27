marcador = {}
blindado = {}
lataria = {}
pneus = {}
janelas = {}
perfurantes = {}
colisoes = {}
preco = {}

temporizador = {}
function inicio (mod)
	if mod ~= getThisResource () then return end
local jogador = source
	if not jogador then jogador = source end
	if table.contain (jogadoresProntos, jogador) then
	local veiculo = getElementsByType ("vehicle")
		for i=1, #veiculo do
		local a = veiculo[i]
			if blindado[a] then
			triggerClientEvent (jogador, "PUNKBlindagemBlindarVeiculo", jogador, veiculo[i], true, lataria[a], pneus[a], janelas[a], colisoes[a], perfurantes[a])
			end
		end
	end
end
addEventHandler ("onPlayerResourceStart", getRootElement(), inicio)

function fix(veh)
	local marcador = source
	if getElementType (veh) == "vehicle" then
	local jogador = getVehicleOccupant (veh)
		if jogador then
			if preco[marcador] and preco[marcador] > 0 then
				if getPlayerMoney(jogador) >= preco[marcador] then
				estado = true
				else
				outputChatBox ("Você não possui dinheiro suficiente $"..preco[marcador] , jogador, 255 ,255,0)
				end
			else
			estado = true
			end
			if estado == true then
			setVehicleFrozen (veh, true )
				setTimer (function ()
				setVehicleFrozen (veh, false )
					if estado == true then
						if preco[marcador] and preco[marcador] > 0 then
							if getPlayerMoney(jogador) >= preco[marcador] then
							takePlayerMoney(jogador, preco[marcador])
							outputChatBox ("Seu veiculo foi blindado pelo valor de $"..preco[marcador] , jogador, 0 ,255,0)
							end
						else
						outputChatBox ("Seu veiculo foi blindado", jogador, 0 ,255,0)
						end
					fixVehicle(veh)
					blindado[veh] = sim
					lataria[veh] = lataria[marcador]
					pneus[veh] = pneus[marcador]
					janelas[veh] = janelas[marcador]
					colisoes[veh] = colisoes[marcador]
					perfurantes[veh] = perfurantes[marcador]
					triggerClientEvent (jogadoresProntos, "PUNKBlindagemBlindarVeiculo", root, veh, sim, lataria[veh], pneus[veh], janelas[veh], colisoes[veh], perfurantes[veh])
					end
				end, 1000, 1)
			end
		end
	end
end

function obterMelhorias (veh)
return blindado[veh] or false, lataria[veh] or false, pneus[veh] or false, janelas[veh] or false, colisoes[veh] or false, perfurantes[veh] or false
end

function aplicarMelhorias (veh,blindagem, corpo, pneu, janela, perf, coli)
triggerClientEvent (jogadoresProntos, "PUNKBlindagemBlindarVeiculo", root, veh, blindagem, corpo, pneu, janela, perf, coli)
end

function criarMarcadores ()
	if marcadores and #marcadores > 0 then
		for i=1, #marcadores do
		local x,y,z = marcadores[i].posicao[1], marcadores[i].posicao[2], marcadores[i].posicao[3]
		marcador[i] = createMarker(x,y,z,"cylinder",3,255,0,0,255)
		local a = marcador[i]
		preco[a] = marcadores[i].preco
		lataria[a] = marcadores[i].lataria
		pneus[a] = marcadores[i].pneus
		janelas[a] = marcadores[i].janelas
		perfurantes[a] = marcadores[i].perfurantes
		colisoes[a] = marcadores[i].colisoes
		
		
		createBlipAttachedTo (marcador[i], blip, 1,  255,255,255,255,0,180)	
		addEventHandler("onMarkerHit",marcador[i],fix)
		end
		for i=1, #portas do
		setGarageOpen ( portas[i], true )
		end
	end
end
criarMarcadores()

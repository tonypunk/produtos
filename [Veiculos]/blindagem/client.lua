blindado = {}
lataria = {}
pneus = {}
janelas = {}
perfurantes = {}
colisoes = {}

function blindarVeiculo (veiculo, estado, lat, pne, jan, col, per)
blindado[veiculo] = estado
lataria[veiculo] = lat
pneus[veiculo] = pne
janelas[veiculo] = jan
colisoes[veiculo] = col
perfurantes[veiculo] = per
end
addEvent ("PUNKBlindagemBlindarVeiculo", true)
addEventHandler ("PUNKBlindagemBlindarVeiculo", getRootElement(), blindarVeiculo)

function dano(agressor, arma, perda, x, y, z, pneu)
local veiculo = source
	if blindado[veiculo] or (getElementType (veiculo) == "player" and blindado[getPedOccupiedVehicle(veiculo)]) then
		if agressor then
			--
			if perfurantes[veiculo] and #perfurantes[veiculo] > 0 then
				for i=1, #perfurantes[veiculo] do
					if arma == perfurantes[veiculo][i] then
                    return end
				end
			end
			--
			if lataria[veiculo] == sim then
			cancelEvent()
				--
				for i=0, 6 do
					if i ~= 4 then
					setVehiclePanelState (veiculo, i, 0)
					end
				end
				--
				for i=0, 5 do
				local estado = getVehicleDoorState (veiculo, i)
					if estado == 0 or estado == 2 then
					setVehicleDoorState (veiculo, i, 0)
					else
						if estado == 1 or estado == 3 then
						setVehicleDoorState (veiculo, i, 1)
						end
					end
				end
				--
			end
			--
			if pneu ~= nil then
				if pneus[veiculo] == sim then
				cancelEvent ()
				end
			end
			--
			if janelas[veiculo] == sim then
				if getVehiclePanelState (veiculo, 4) ~= 0 then
				setVehiclePanelState (veiculo, 4, 0)
				cancelEvent()
				end
			end
			--
		else
			if colisoes[veiculo] == sim then
			cancelEvent ()
				--
				for i=0, 6 do
					if i ~= 4 then
					setVehiclePanelState (veiculo, i, 0)
					end
				end
				--
				for i=0, 5 do
				local estado = getVehicleDoorState (veiculo, i)
					if estado == 0 or estado == 2 then
					setVehicleDoorState (veiculo, i, 0)
					else
						if estado == 1 or estado == 3 then
						setVehicleDoorState (veiculo, i, 1)
						end
					end
				end
				--
			end
		end
		if getElementType (source) == "player" then
			if isPedInVehicle (source) then
				if janelas[getPedOccupiedVehicle(source)] == sim then
					if perfurantes[getPedOccupiedVehicle(source)] then
						for i=1, #perfurantes[getPedOccupiedVehicle(source)] do
							if arma == perfurantes[getPedOccupiedVehicle(source)][i] then
							return end
						end
					end
				cancelEvent ()
				end
			end
		end
	end
end
addEventHandler("onClientVehicleDamage", root, dano)
addEventHandler("onClientPlayerDamage", root, dano)

function streamIn ()
	if eventName then
	local veiculo = source
	local modelo = getElementModel (veiculo)
		if not blindado[veiculo] then
			if nativos[modelo] then
			blindado[veiculo] = true
			lataria[veiculo] = nativos[modelo].lataria
			pneus[veiculo] = nativos[modelo].pneus
			janelas[veiculo] = nativos[modelo].janelas
			perfurantes[veiculo] = nativos[modelo].perfurantes
			colisoes[veiculo] = nativos[modelo].colisoes
			end
		end
	else
	local tabela = {}
	local veiculos = getElementsByType ("vehicle")
		if veiculos and #veiculos > 0 then
			for i=1, #veiculos do
			local modelo = getElementModel (veiculos[i])
				if nativos[modelo] then
				local a = veiculos[i]
				blindado[a] = true
				lataria[a] = nativos[modelo].lataria
				pneus[a] = nativos[modelo].pneus
				janelas[a] = nativos[modelo].janelas
				perfurantes[a] = nativos[modelo].perfurantes
				colisoes[a] = nativos[modelo].colisoes
				end
			end
		end
	end
end
addEventHandler ("onClientElementStreamIn", getRootElement(), streamIn)
streamIn()
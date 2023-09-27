--Client
if localPlayer then

--Radio
station = getRadioChannel ()
	addEventHandler ("onVehicleEnter", getRootElement (), function (jogador, lugar)
		if jogador ~= localPlayer then return end
		if not dados[source] then return end
	local veiculo = source
	local e = dados[veiculo]
		if lugar > _getVehicleMaxPassengers (veiculo) then
			for k=1, #e do
				if e[k].passageiro then
				local passageiro = e[k].passageiro
					if passageiro == localPlayer then
						if veiculos[getElementModel(veiculo)][k].station and veiculos[getElementModel(veiculo)][k].station == true then
							if not station then station = getRadioChannel () end
						--setRadioChannel (0)
						setRadioChannel (station)
						removeEventHandler ("onClientKey", root, digitou)
						addEventHandler ("onClientKey", root, digitou)
						end
					break
					end
				end
			end
		end
	end)
	
	addEventHandler ("onVehicleExit", getRootElement (), function (jogador, lugar)
		if jogador ~= localPlayer then return end
	local veiculo = source
		if lugar > _getVehicleMaxPassengers (veiculo) then
			if station then
			station = getRadioChannel ()
			setRadioChannel (0)
			removeEventHandler ("onClientKey", root, digitou)
			end
		end
	end)
	
	function digitou (botao, estado)
		if isCursorShowing() then return end
	local keys = getBoundKeys ("radio_next")
		if keys then
			for keyName, state in pairs(keys) do
				if botao == keyName then
				station = station + 1
					if station > 12 then station = 0 end
				setRadioChannel (station)
				break
				end
			end
		end
	local keys = getBoundKeys ("radio_previous")
		if keys then
			for keyName, state in pairs(keys) do
				if botao == keyName then
				station = station - 1
					if station < 0 then station = 12 end
				setRadioChannel (station)
				break
				end
			end
		end
	end

end
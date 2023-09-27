--[[
--Setup

local resource = "PUNK+Passageiros"

	_warpPedIntoVehicle = warpPedIntoVehicle
	function warpPedIntoVehicle (...)
	return exports[resource]:warpPedIntoVehicle (...)
	end

	_removePedFromVehicle = removePedFromVehicle
	function removePedFromVehicle (...)
	return exports[resource]:removePedFromVehicle (...)
	end

	_setPedEnterVehicle = setPedEnterVehicle
	function setPedEnterVehicle (...)
	return exports[resource]:setPedEnterVehicle (...)
	end

	_setPedExitVehicle = setPedExitVehicle
	function setPedExitVehicle (...)
	return exports[resource]:setPedExitVehicle (...)
	end

	_getVehicleOccupant = getVehicleOccupant
	function getVehicleOccupant (veiculo, lugar)
	return exports[resource]:getVehicleOccupant (...)
	end

	_getVehicleOccupants = getVehicleOccupants
	function getVehicleOccupants (veiculo)
	return exports[resource]:getVehicleOccupants (...)
	end

	_getVehicleMaxPassengers = getVehicleMaxPassengers
	function getVehicleMaxPassengers (...)
	return exports[resource]:getVehicleMaxPassengers (...)
	end

	_isPedInVehicle = isPedInVehicle
	function isPedInVehicle (boneco)
	return exports[resource]:isPedInVehicle (...)
	end

	_getPedOccupiedVehicle = getPedOccupiedVehicle
	function getPedOccupiedVehicle (boneco)
	return exports[resource]:getPedOccupiedVehicle (...)
	end

	_getPedOccupiedVehicleSeat = getPedOccupiedVehicleSeat
	function getPedOccupiedVehicleSeat (boneco)
	return exports[resource]:getPedOccupiedVehicleSeat (...)
	end
	
	_isPedDoingGangDriveby = isPedDoingGangDriveby
	function isPedDoingGangDriveby (boneco)
	return exports[resource]:isPedDoingGangDriveby (...)
	end
	
	_setPedDoingGangDriveBy = setPedDoingGangDriveBy
	function setPedDoingGangDriveBy (boneco)
	return exports[resource]:setPedDoingGangDriveBy (...)
	end
	
	_isPedEnteringVehicle = isPedEnteringVehicle
	function isPedEnteringVehicle (boneco)
	return exports[resource]:isPedEnteringVehicle (...)
	end
	
	_isPedExitingVehicle = isPedExitingVehicle
	function isPedExitingVehicle (boneco)
	return exports[resource]:isPedExitingVehicle (...)
	end
	
	_getSeatAccessPosition = getSeatAccessPosition
	function getSeatAccessPosition (boneco)
	return exports[resource]:getSeatAccessPosition (...)
	end
	
	exports[resource]:pMove (ped, time, x,y,z, vehicle) --Mover o boneco em um determinado veiculo
	exports[resource]:pRot (ped, time, x,y,z, vehicle) --Rotacionar o boneco em um determinado veiculo
	exports[resource]:findAccess (ped [,vehicle]) --Busca um acesso próximo para ocupar como passageiro
	
--Eventos
"onClientVehicleStartEnter"
"onVehicleStartEnter"
"onClientVehicleEnter"
"onVehicleEnter"
"onVehicleStartExit"
"onClientVehicleExit"
"onVehicleExit"
"onClientPedVehicleEnter"
"onPedVehicleEnter"
"onClientPedVehicleExit"
"onPedVehicleExit"
"onClientPlayerVehicleEnter"
"onPlayerVehicleEnter"
"onClientPlayerVehicleExit"
"onPlayerVehicleExit"
"onClientPedDriveby"
"onPedDriveby"
]]
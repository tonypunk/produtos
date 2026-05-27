
comandos = {
menu = "capacetes", --abrir menu de capacetes
}

configuracoes = {

	applyHair = function (...)
	return exports.cabelos:applyHair (...)
	end,

	createHeadsupMessage = function (...)
	return exports.notify:createHeadsupMessage (...)
	end,
	
	createNativeUI = function (...)
	return exports.notify:createNativeUI (...)
	end,
	
	destroyNativeUI = function (...)
	return exports.notify:destroyNativeUI(...)
	end,
	
	addNativeButton = function (...)
	return exports.notify:addNativeButton(...)
	end,
	
	getNativeButtons = function (...)
	return exports.notify:getNativeButtons(...)
	end,
	
	setNativeButtonIcon = function (...)
	return exports.notify:setNativeButtonIcon (...)
	end,
	
	playNativeSound = function (...)
	return exports.notify:playNativeSound (...)
	end, 

	attach = function (...)
	return exports.attach:attach (...)
	end,
	
	detach = function (...)
	return exports.attach:detach (...)
	end,
	
	getDetails = function (...)
	return exports.attach:getDetails (...)
	end,
}
function giveWeapon (...)
return exports['PUNK+Armas']:giveWeapon (unpack (arg))
end

function takeWeapon (...)
return exports['PUNK+Armas']:takeWeapon (unpack (arg))
end

function takeAllWeapons (...)
return exports['PUNK+Armas']:takeAllWeapons (unpack (arg))
end

_getPedWeapon = getPedWeapon
function getPedWeapon (...)
return exports['PUNK+Armas']:getPedWeapon (unpack (arg))
end

function getPedAmmoInClip (...)
return exports['PUNK+Armas']:getPedAmmoInClip (unpack (arg))
end

_getPedTotalAmmo = getPedTotalAmmo
function getPedTotalAmmo (...)
return exports['PUNK+Armas']:getPedTotalAmmo (unpack (arg))
end

function isPedReloadingWeapon (...)
return exports['PUNK+Armas']:isPedReloadingWeapon (unpack (arg))
end

function setWeaponOwner (...)
return exports['PUNK+Armas']:setWeaponOwner (unpack (arg))
end

function getWeaponOwner (...)
return exports['PUNK+Armas']:getWeaponOwner (unpack (arg))
end

function getWeaponName (...)
return exports['PUNK+Armas']:getWeaponName (unpack (arg))
end

_getSlotFromWeapon = getSlotFromWeapon
function getSlotFromWeapon (...)
return exports['PUNK+Armas']:getSlotFromWeapon (unpack (arg))
end

function getWeaponNameFromID (...)
return exports['PUNK+Armas']:getWeaponNameFromID (unpack (arg))
end

function getProjectileData (...)
return exports['PUNK+Armas']:getProjectileData (unpack (arg))
end


function getData ()
return exports['PUNK+Armas']:getData ()
end

function getWeaponProperty (elem, prop)
local properties = getData ()
return properties[elem][prop]
end


function getPedWeaponReadyTimer (elem)
return exports['PUNK+Armas']:getPedWeaponReadyTimer (elem)
end


events = {
	
	aim = 'WeaponAim',
	
	damage = {
		player = 'WeaponPlayerDamage',
		ped = 'WeaponPedDamage',
	},
	
	fire = 'WeaponFired',
	
	change = 'WeaponStateChange',

	reload = 'weaponReload',
}
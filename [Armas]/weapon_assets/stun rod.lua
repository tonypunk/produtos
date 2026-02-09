
function rodAnim (a, _, parte)
	if not a then return end
	if getElementType (a) == 'weapon' then
	agressor = getWeaponOwner (a)
	end
local arma = getPedWeapon (agressor)
	if arma == 'Stun Rod' then
	local vitima = source
	local px,py,pz = getElementBonePosition (vitima, parte)
	fxCreateParticle ('splash', px,py,pz, 0,0,0.5, 0,125,150,255, false, 2,1,1,true, 0.1)
	local sound = playSound3D ('files/sound/spl/lazer/LAZER_01.wav', px,py,pz, false)
	setSoundVolume (sound, 0.5)
	end
end
addEventHandler ('onClientPedDamage', getRootElement(), rodAnim)
addEventHandler ('onClientPlayerDamage', getRootElement(), rodAnim)
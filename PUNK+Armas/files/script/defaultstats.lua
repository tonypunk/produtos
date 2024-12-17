--No recoil for default weapons

local oProperties = {

"weapon_range", -- float
"target_range", -- float - Max targeting range
"accuracy", -- float
"damage", -- int - Note: Changing the standard M4 stat will change how much damage vehicle guns (e.g: Rustler) do.
"maximum_clip_ammo", -- int
"move_speed", -- float - How fast player can move with weapon
"flags", -- int - (specify a flag to toggle it on/off) See Weapon Flags
"flag_aim_no_auto", -- bool - Disable auto up/down for non-aimed firing
"flag_aim_arm", -- bool - Uses other arm for aiming
"flag_aim_1st_person", -- bool - Uses 1st person aim
"flag_aim_free", -- bool - Can only use free aiming
"flag_move_and_aim", -- bool - Can move and aim at same time
"flag_move_and_shoot", -- bool - Can move and fire at same time
"flag_type_throw", -- bool - Is a throwing weapon
"flag_type_heavy", -- bool - Can't jump
"flag_type_constant", -- bool - Fires every frame within loop (ie paint spray)
"flag_type_dual", -- bool - Can use 2x guns at same time
"flag_anim_reload", -- bool - Weapon has reload anims
"flag_anim_crouch", -- bool - Has crouching anims
"flag_anim_reload_loop", -- bool - Loop from end of reload to fire loop start
"flag_anim_reload_long", -- bool - Force a longer reload time
"flag_shot_slows", -- bool - Slows down (area effect)
"flag_shot_rand_speed", -- bool - Random speed (area effect)
"flag_shot_anim_abrupt", -- bool - Force the anim to finish player after aim/fire rather than blending out (area effect)
"flag_shot_expands", -- bool - Expands (area effect)
"anim_loop_start", -- float - Start of aimed firing animation loop
"anim_loop_stop", -- float - End of aimed firing animation loop (Reduce to increase firing rate)
"anim_loop_bullet_fire", -- float - Time in aimed firing animation when weapon should be fired (Must be between Start and End)
"anim2_loop_start", -- float - Start of non-aimed firing animation2 loop
"anim2_loop_stop", -- float - End of non-aimed firing animation2 loop (Reduce to increase crouch firing rate)
"anim2_loop_bullet_fire", -- float - Time in non-aimed firing animation2 when weapon should be fired (Must be between Start and End)
"anim_breakout_time", -- float - Time after which player can break out of attack and run off

}

local wps = {22, 23, 24, 25, 26, 27, 28,29,30,31,32,33,34,38}
local skills = {'poor', 'std', 'pro'}

	for i=1, #wps do
		for k=1, #skills do
			for j=1, #oProperties do
			--setWeaponProperty( wps[i], skills[k], oProperties[j], getOriginalWeaponProperty (wps[i],skills[k], oProperties[j]))
			end
		end
	end

	for i=1, #wps do
		
		for k=1, #skills do
		setWeaponProperty( wps[i], skills[k], "accuracy", 0)
		setWeaponProperty( wps[i], skills[k], "maximum_clip_ammo", 1000 )
			if wps[i] ~= 38 then
			setWeaponProperty( wps[i], skills[k], "anim_loop_stop", 0.3 )
			setWeaponProperty( wps[i], skills[k], "anim2_loop_stop", 0.3 )
			end
		--setWeaponProperty( wps[i], skills[k], "accuracy", 99 )
		setWeaponProperty( wps[i], skills[k], "flag_anim_reload", false )
		--setWeaponProperty( wps[i], skills[k], "flag_anim_reload_loop", false )
		--setWeaponProperty( wps[i], skills[k], "flag_anim_reload_long", false )
		--setWeaponProperty( wps[i], skills[k], "anim2_loop_stop", 10000 )
		end
	end
	
addEventHandler( 'onResourceStop', getResourceRootElement( getThisResource( ) ), function ()
	for i=1, #wps do
		for k=1, #skills do
			for j=1, #oProperties do
			setWeaponProperty( wps[i], skills[k], oProperties[j], getOriginalWeaponProperty (wps[i],skills[k], oProperties[j]))
			end
		end
	end
end)

--Common default stats
local statsTable = {
	[69] = 500,  -- Pistol
	[70] = 999,  -- Silenced pistol
	[71] = 999,  -- Desert eagle
	[72] = 999,  -- Shotgun
	[73] = 500,  -- Sawnoff, 999 for duel wield
	[74] = 999,  -- Spas-12
	[75] = 500,  -- Micro-uzi & Tec-9, 999 for duel wield
	[76] = 999,  -- MP5
	[77] = 999,  -- AK-47
	[78] = 999,  -- M4
	[79] = 999,  -- Sniper rifle & country rifle
}

local function applyStatsForPlayer(playerElement)
	for statName, statValue in pairs(statsTable) do
		setPedStat(playerElement, statName, statValue)
	end
end

local function applyStatsForSource()
	applyStatsForPlayer(source)
end
addEventHandler("onPlayerJoin", root, applyStatsForSource)

local function applyStatsForEveryone()
	local playersTable = getElementsByType("player")

	for playerID = 1, #playersTable do
		applyStatsForPlayer(playersTable[playerID])
	end
end
addEventHandler("onResourceStart", resourceRoot, applyStatsForEveryone)

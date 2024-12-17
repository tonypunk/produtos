--Hit
function hitAnim ()

local hit_anims = {

	['alvejar'] = {
		--Tórax
		[3] = {
			['anterior'] = {'ped', 'DAM_stomach_frmFT', -1, false, true, true, false},
			['posterior'] = {'ped', 'DAM_stomach_frmBK', -1, false, true, true, false},
		},
		--
		[4] = {
			['anterior'] = {'ped', 'DAM_stomach_frmFT', -1, false, true, true, false},
			['posterior'] = {'ped', 'DAM_stomach_frmBK', -1, false, true, true, false},
		},
		--braço esquerdo
		[5] = {
			['anterior'] = {'ped', 'DAM_armL_frmFT', -1, false, true, true, false},
			['posterior'] = {'ped', 'DAM_armL_frmBK', -1, false, true, true, false},
		},
		--braço direito
		[6] = {
			['anterior'] = {'ped', 'DAM_armR_frmFT', -1, false, true, true, false},
			['posterior'] = {'ped', 'DAM_armR_frmBK', -1, false, true, true, false},
		},
		--perna esquerda
		[7] = {
			['anterior'] = {'ped', 'DAM_LegL_frmFT', -1, false, true, true, false},
			['posterior'] = {'ped', 'DAM_LegL_frmBK', -1, false, true, true, false},
		},
		--perna direita
		[8] = {
			['anterior'] = {'ped', 'DAM_LegR_frmFT', -1, false, true, true, false},
			['posterior'] = {'ped', 'DAM_LegR_frmBK', -1, false, true, true, false},
		},
		--
		--cabeça
		[9] = {
			['anterior'] = {'ped', 'SHOT_partial', -1, false, true, true, false},
			['posterior'] = {'ped', 'SHOT_partial_B', -1, false, true, true, false},
		},
		--
	},
	--
	['obito'] = {
		--Tórax
		[3] = {
			['anterior'] = {'ped', 'KO_shot_stom', -1, false, true, false, true},
			['posterior'] = {'ped', 'KO_skid_back', -1, false, true, false, true},
		},
		--braço esquerdo
		[5] = {
			['anterior'] = {'ped', 'KO_spin_L', -1, false, true, false, true},
			['posterior'] = {'ped', 'KO_spin_L', -1, false, true, false, true},
		},
		--braço direito
		[6] = {
			['anterior'] = {'ped', 'KO_spin_R', -1, false, true, false, true},
			['posterior'] = {'ped', 'KO_spin_R', -1, false, true, false, true},
		},
		--perna esquerda
		[7] = {
			['anterior'] = {'ped', 'KD_left', -1, false, true, false, true},
			['posterior'] = {'ped', 'KD_left', -1, false, true, false, true},
		},
		--perna direita
		[8] = {
			['anterior'] = {'ped', 'KD_right', -1, false, true, false, true},
			['posterior'] = {'ped', 'KD_right', -1, false, true, false, true},
		},
		--
		--cabeça
		[9] = {
			['anterior'] = {'ped', 'KO_shot_face', -1, false, true, false, true},
			['posterior'] = {'ped', 'KO_shot_front', -1, false, true, false, true},
		},
		--
	},

}
    
	hit_anims['alvejar'][1] = hit_anims['alvejar'][3]
    hit_anims['alvejar'][2] = hit_anims['alvejar'][4]
    hit_anims['alvejar'][5] = hit_anims['alvejar'][9]
    hit_anims['alvejar'][6] = hit_anims['alvejar'][9]
    hit_anims['alvejar'][7] = hit_anims['alvejar'][9]
    hit_anims['alvejar'][8] = hit_anims['alvejar'][9]
    hit_anims['alvejar'][21] = hit_anims['alvejar'][5]
    hit_anims['alvejar'][22] = hit_anims['alvejar'][5]
    hit_anims['alvejar'][23] = hit_anims['alvejar'][5]
    hit_anims['alvejar'][24] = hit_anims['alvejar'][5]
    hit_anims['alvejar'][25] = hit_anims['alvejar'][5]
    hit_anims['alvejar'][26] = hit_anims['alvejar'][5]
    hit_anims['alvejar'][31] = hit_anims['alvejar'][6]
    hit_anims['alvejar'][32] = hit_anims['alvejar'][6]
    hit_anims['alvejar'][33] = hit_anims['alvejar'][6]
    hit_anims['alvejar'][34] = hit_anims['alvejar'][6]
    hit_anims['alvejar'][35] = hit_anims['alvejar'][6]
    hit_anims['alvejar'][36] = hit_anims['alvejar'][6]
    hit_anims['alvejar'][41] = hit_anims['alvejar'][7]
    hit_anims['alvejar'][42] = hit_anims['alvejar'][7]
    hit_anims['alvejar'][43] = hit_anims['alvejar'][7]
    hit_anims['alvejar'][44] = hit_anims['alvejar'][7]
    hit_anims['alvejar'][51] = hit_anims['alvejar'][8]
    hit_anims['alvejar'][52] = hit_anims['alvejar'][8]
    hit_anims['alvejar'][53] = hit_anims['alvejar'][8]
	
	hit_anims['obito'][1] = hit_anims['obito'][3]
    hit_anims['obito'][2] = hit_anims['obito'][4]
    hit_anims['obito'][5] = hit_anims['obito'][9]
    hit_anims['obito'][6] = hit_anims['obito'][9]
    hit_anims['obito'][7] = hit_anims['obito'][9]
    hit_anims['obito'][8] = hit_anims['obito'][9]
    hit_anims['obito'][21] = hit_anims['obito'][5]
    hit_anims['obito'][22] = hit_anims['obito'][5]
    hit_anims['obito'][23] = hit_anims['obito'][5]
    hit_anims['obito'][24] = hit_anims['obito'][5]
    hit_anims['obito'][25] = hit_anims['obito'][5]
    hit_anims['obito'][26] = hit_anims['obito'][5]
    hit_anims['obito'][31] = hit_anims['obito'][6]
    hit_anims['obito'][32] = hit_anims['obito'][6]
    hit_anims['obito'][33] = hit_anims['obito'][6]
    hit_anims['obito'][34] = hit_anims['obito'][6]
    hit_anims['obito'][35] = hit_anims['obito'][6]
    hit_anims['obito'][36] = hit_anims['obito'][6]
    hit_anims['obito'][41] = hit_anims['obito'][7]
    hit_anims['obito'][42] = hit_anims['obito'][7]
    hit_anims['obito'][43] = hit_anims['obito'][7]
    hit_anims['obito'][44] = hit_anims['obito'][7]
    hit_anims['obito'][51] = hit_anims['obito'][8]
    hit_anims['obito'][52] = hit_anims['obito'][8]
    hit_anims['obito'][53] = hit_anims['obito'][8]


function getPositionFromElementOffset(element,offX,offY,offZ)
    local m = getElementMatrix ( element )  -- Get the matrix
    local x = offX * m[1][1] + offY * m[2][1] + offZ * m[3][1] + m[4][1]  -- Apply transform
    local y = offX * m[1][2] + offY * m[2][2] + offZ * m[3][2] + m[4][2]
    local z = offX * m[1][3] + offY * m[2][3] + offZ * m[3][3] + m[4][3]
    return x, y, z                               -- Return the transformed point
end

knockdown = {}
function hitAnim (agressor, arma, parte)
	if getSlotFromWeapon (arma) < 2 then return end
	if isElementInWater (source) then return end
	if isPedDead (source) then return end
	outputChatBox ("H: "..getElementHealth (source))
local vitima = source
local px,py,pz = getElementBonePosition (vitima, parte)
local x,y,z = getPositionFromElementOffset(vitima,0,2,0)
local dist1 = getDistanceBetweenPoints3D (px,py,pz, x,y,z)
local x,y,z = getPositionFromElementOffset(vitima,0,-2,0)
local dist2 = getDistanceBetweenPoints3D (px,py,pz, x,y,z)
	if getElementHealth (vitima) > 0 then
	t = hit_anims['alvejar']
	else
	t = hit_anims['obito']
	end
local t = hit_anims['alvejar']
	if dist1 < dist2 then
	setPedAnimation (vitima, unpack (t[parte].anterior))
	else
	setPedAnimation (vitima, unpack (t[parte].posterior))
	end
	if getElementHealth (vitima) <= 0 or properties[arma].knockdown then
		if isElement (vitima) then
		local t = hit_anims['obito']
			--
			if properties[arma].knockdown then
				--setTimer (function ()
					if isElement (vitima) then
						if dist1 < dist2 then
						setPedAnimation (vitima, unpack (t[parte].anterior))
						knockdown[vitima] = 'anterior'
						else
						knockdown[vitima] = 'posterior'
						setPedAnimation (vitima, unpack (t[parte].posterior))
						end
						setTimer (function ()
							if isElement (vitima) and isPedDead (vitima) == false then
								if dist1 > dist2 or t[parte].anterior[2] == 'KO_shot_stom' then
								setPedAnimation (vitima, 'ped', 'getup_front', -1, false, true, false, false)
								else
								setPedAnimation (vitima, 'ped', 'getup', -1, false, true, false, false)
								end
							knockdown[vitima] = nil
							end
						end, properties[arma].knockdown or 5000, 1)
					end
				--end, 1000, 1)
			else
			
			outputChatBox ("P: "..parte)
				if dist1 < dist2 then
				setPedAnimation (vitima, unpack (t[parte].anterior))
				knockdown[vitima] = 'anterior'
				else
				setPedAnimation (vitima, unpack (t[parte].posterior))
				knockdown[vitima] = 'posterior'
				end
			end
		end
	end
end
addEventHandler ('onClient'..events.damage['ped'], getRootElement(), hitAnim)
addEventHandler ('onClient'..events.damage['player'], getRootElement(), hitAnim)

addEventHandler ('onClientWeaponFire', getRootElement(), function (elem)
	if isElement (elem) and (getElementType (elem) == 'player' or getElementType (elem) == 'ped') then
		if getElementHealth (elem) <= 0 then
			if knockdown[elem] then
				if knockdown[elem] == 'anterior' then
				_setPedAnimation (elem, 'ped', 'FLOOR_hit', -1, false, true, false, true, 1, true)
				else
				_setPedAnimation (elem, 'ped', 'FLOOR_hit_f', -1, false, true, false, true, 1, true)
				end
			else
			_setPedAnimation (elem, 'ped', 'FLOOR_hit', -1, false, true, false, true, 1, true)
			end
		end
	end
end)

storedCol = {}
function morreu ()
storedCol[source] = {}
local p = getElementsByType ('player')
	for i=1, #p do
	setElementCollidableWith (source, p[i], false)
	table.insert (storedCol[source], p[i])
	end
local p = getElementsByType ('ped')
	for i=1, #p do
	setElementCollidableWith (source, p[i], false)
	table.insert (storedCol[source], p[i])
	end
local p = getElementsByType ('vehicle')
	for i=1, #p do
	setElementCollidableWith (source, p[i], false)
	table.insert (storedCol[source], p[i])
	end
end
addEventHandler ('onClientPedWasted', getRootElement(), morreu)
addEventHandler ('onClientPlayerWasted', getRootElement(), morreu)

function stream ()
	if getElementType (source) == 'ped' or getElementType (source) == 'player' then
		if isPedDead (source) then
		storedCol[source] = {}
		local p = getElementsByType ('player')
			for i=1, #p do
			setElementCollidableWith (source, p[i], false)
			table.insert (storedCol[source], p[i])
			end
		local p = getElementsByType ('ped')
			for i=1, #p do
			setElementCollidableWith (source, p[i], false)
			table.insert (storedCol[source], p[i])
			end
		local p = getElementsByType ('vehicle')
			for i=1, #p do
			setElementCollidableWith (source, p[i], false)
			table.insert (storedCol[source], p[i])
			end
		end
	end	
end
addEventHandler ('onClientElementStreamIn', getRootElement(), stream)

addEventHandler ('onClientPlayerSpawn', getRootElement(), function ()
	if storedCol[source] then
	local p = storedCol[source]
		for i=1, #p do
			if isElement (p[i]) then
				if isPedDead (p[i]) then
				else
				setElementCollidableWith (source, p[i], true)
				end
			end
		end
	end
end)

end
hitAnim ()

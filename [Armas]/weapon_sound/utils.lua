
	dadosShader = [[
		texture tex;
		technique replace {
			pass P0 {
				Texture[0] = tex;
			}
		}
	]]

--Utilities
function utils ()

function getNearestTarget(player, type, distance)
    local result = false
    local dist = nil
    if player and isElement(player) then
	local arma, objeto = getPedWeapon (player)
	local pos = {getElementPosition (dummy[objeto])}--{getPedWeaponMuzzlePosition (player)}
        local elements = getElementsWithinRange(Vector3(pos), distance, type, getElementInterior(player), getElementDimension(player))
        for i = 1, #elements do	
			if getElementHealth (elements[i]) > 0 then
				local element = elements[i]
				if not dist then
					result = element
					dist = getDistanceBetweenPoints3D(Vector3(pos), Vector3(getElementPosition(element)))
				else
					local newDist = getDistanceBetweenPoints3D(Vector3(pos), Vector3(getElementPosition(element)))
					if newDist <= dist then
						result = element
						dist = newDist
					end
				end
			end
        end
    end
    return result
end

function findRotation3D(x1, y1, z1, x2, y2, z2)
    local rotx = math.atan2 (z2 - z1, getDistanceBetweenPoints2D (x2, y2, x1, y1))
    rotx = math.deg(rotx)
    local rotz = -math.deg(math.atan2(x2 - x1, y2 - y1))
    rotz = rotz < 0 and rotz + 360 or rotz
    return rotx, 0, rotz
end

function table.contain (tabela, item)
	for i, valor in pairs (tabela) do
		if i == item or valor == item then return true end
	end
return false
end

-- add function findRotation
findRotation = function ( x1, y1, x2, y2 )
    local t = -math.deg( math.atan2( x2 - x1, y2 - y1 ) )
    return t < 0 and t + 360 or t
end

-- Taken from https://wiki.multitheftauto.com/wiki/GetElementMatrix example
function getPositionFromElementOffset(element,offX,offY,offZ)
    local m = getElementMatrix ( element )  -- Get the matrix
    local x = offX * m[1][1] + offY * m[2][1] + offZ * m[3][1] + m[4][1]  -- Apply transform
    local y = offX * m[1][2] + offY * m[2][2] + offZ * m[3][2] + m[4][2]
    local z = offX * m[1][3] + offY * m[2][3] + offZ * m[3][3] + m[4][3]
    return x, y, z  -- Return the transformed point
end

function attachEffect(effect, element, x,y,z, rx,ry,rz, hx,hy,hz)
	if not localPlayer then return triggerClientEvent ('attachEffect', root, effect, element, x,y,z, rx,ry,rz, hx,hy,hz) end
    attachedEffects[effect] = { effect = effect, element = element, pos = {x or 0,y or 0,z or 0} or {0,0,0}, rot = {rx or 0,ry or 0,rz or 0},  h = {hx or 0,hy or 0,hz or 0}}
    addEventHandler("onClientElementDestroy", effect, function() attachedEffects[effect] = nil end)
    addEventHandler("onClientElementDestroy", element, function() attachedEffects[effect] = nil end)
    return true
end
addEvent ("attachEffect", true)
addEventHandler ("attachEffect", getRootElement(), attachEffect)

function teaDecodeBinary( data, key ) 
	return base64Decode( teaDecode( data, key ) ) 
end 

function isElementMoving (theElement )
   if isElement ( theElement ) then                                   -- First check if the given argument is an element
      return Vector3( getElementVelocity( theElement ) ).length ~= 0
   end
   return false
end

function isnan(x) --importante, checar se é NaN
    if (x ~= x) then 
        return true 
    end 
    if type(x) ~= "number" then 
       return false 
    end 
    if tostring(x) == tostring((-1)^0.5) then 
        return true 
    end 
    return false 
end

function isPedAiming (thePedToCheck)
	if isElement(thePedToCheck) then
		if getElementType(thePedToCheck) == "player" or getElementType(thePedToCheck) == "ped" then
			if getPedTask(thePedToCheck, "secondary", 0) == "TASK_SIMPLE_USE_GUN" or isPedDoingGangDriveby(thePedToCheck) then
				return true
			end
		end
	end
	return false
end


function table.removeValue(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            table.remove(tab, index)
            return index
        end
    end
    return false
end

function getOffsetsInElementOrientation (element, x, y, z, relative)
	if (not relative) then
		local xp, yp, zp = getElementPosition(element)
		x = x - xp
		y = y - yp
		z = z - zp
	end
	local rotvX, rotvY, rotvZ = getElementRotation(element)
	local cosx = math.cos(math.rad(rotvX))
	local sinx = math.sin(math.rad(rotvX))
	local cosy = math.cos(math.rad(rotvY))
	local siny = math.sin(math.rad(rotvY))
	local cosz = math.cos(math.rad(rotvZ))
	local sinz = math.sin(math.rad(rotvZ))
	local xoffset = -cosx * siny * z + (-sinz * sinx * siny + cosz * cosy) * x + (cosz * sinx * siny + sinz * cosy) * y
	local yoffset = sinx * z - sinz * cosx * x + cosz * cosx * y
	local zoffset = cosx * cosy * z + (sinz * sinx * cosy + cosz * siny) * x + (-cosz * sinx * cosy + sinz * siny) * y
	return xoffset, yoffset, zoffset
end

function getPositionOffsetElement(element,xOffset,yOffset,zOffset,relative)
	if (not isElement(element)) then return false end
	local matrix = getElementMatrix(element)
	local vector = {}
	if (not relative) then
		vector[1] = xOffset * matrix[1][1] + yOffset * matrix[2][1] + zOffset * matrix[3][1] + matrix[4][1]
		vector[2] = xOffset * matrix[1][2] + yOffset * matrix[2][2] + zOffset * matrix[3][2] + matrix[4][2]
		vector[3] = xOffset * matrix[1][3] + yOffset * matrix[2][3] + zOffset * matrix[3][3] + matrix[4][3]
	else
		vector[1] = xOffset * matrix[1][1] + yOffset * matrix[2][1] + zOffset * matrix[3][1]
		vector[2] = xOffset * matrix[1][2] + yOffset * matrix[2][2] + zOffset * matrix[3][2]
		vector[3] = xOffset * matrix[1][3] + yOffset * matrix[2][3] + zOffset * matrix[3][3]
	end
	return unpack(vector)
end

function getAngleBetweenPoints2D(x1,y1,x2,y2)
	local angle = 0 - math.deg(math.atan2(x2 - x1,y2 - y1))
	return angle % 360
end

boneIDs = {
    [1]  = true,
    [2]  = true,
    [3]  = true,
    [4]  = true,
    [5]  = true,
    [6]  = true,
    [7]  = true,
    [8]  = true,
    [21] = true,
    [22] = true,
    [23] = true,
    [24] = true,
    [25] = true,
    [26] = true,
    [31] = true,
    [32] = true,
    [33] = true,
    [34] = true,
    [35] = true,
    [36] = true,
    [41] = true,
    [42] = true,
    [43] = true,
    [44] = true,
    [51] = true,
    [52] = true,
    [53] = true,
    [54] = true,
}

function getNearestBone(player, x,y,z)
local result = false
local dist = nil
    if player and isElement(player) then
		if getElementType (player) == 'player' or getElementType (player) == 'ped' then
		local elements = boneIDs
			for item, valor in pairs (boneIDs) do
			local px,py,pz = getElementBonePosition (player,item)
				if px then
					if not dist then
					result = item
					dist = getDistanceBetweenPoints3D(x,y,z,px,py,pz)
					else
					local newDist = getDistanceBetweenPoints3D(x,y,z,px,py,pz)
						if newDist <= dist then
						result = item
						dist = newDist
						end
					end
				end
			end
		elseif getElementType (player) == 'vehicle' or getElementType (player) == 'object' then
			if getElementType (player) == 'vehicle' then
				for item in pairs ( getVehicleComponents ( player ) ) do
				local px,py,pz = getVehicleComponentPosition (player,item)
					if not dist then
					result = item
					dist = getDistanceBetweenPoints3D(x,y,z,px,py,pz)
					else
					local newDist = getDistanceBetweenPoints3D(x,y,z,px,py,pz)
						if newDist <= dist then
						result = item
						dist = newDist
						end
					end
				end
			else
			result = nil
			end
		end
    end
return result
end


function tonumber (n)
	if type (n) == 'number' then return n end
return n
end

	
end
utils ()

--AT-400
--Server
if not localPlayer then
local driver = getElementsByType ("player")[1]
--Ped table
local pp = {}
--Vehicle
local v = createVehicle (577, 1477, 1804, 10.82, 0,0,180)
setTimer (function ()
setVehicleColor (v,  200,200,200, 100,0,0)
end, 2000, 1)
setElementVelocity (v, 0,0,0)
setVehicleDoorOpenRatio (v, 3, 1)
local x,y,z = getElementPosition (v)
local _,_,rz = getElementRotation (v)
createVehicle (608, 1472.6, 1785.292, 11.344, 0,0,-90)
--Skins
local skinIds = {14, 15, 20, 23, 29, 50, 67, 90, 97,
	101, 153, 204, 206, 213, 217, 247, 249, 260,
	16}
----------------------------
function at400 (driver)
--Delete pre existing stuff
	if #pp > 0 then
		for i=1, #pp do
			if isElement (pp[i]) then destroyElement (pp[i]) end
		end
	end
	if ac == true then
		--if isElement (v) then destroyElement (v) end
	end
ac = true
-------Normal passengers-------
pp[0] = createPed (61, x,y,z, rz)
warpPedIntoVehicle (pp[0], v, 0)

local ped = createPed (61, x,y,z)
warpPedIntoVehicle (ped, v, 1)
--Inside passengers
	for i=1, 80 do
	pp[i] = createPed (skinIds[math.random (#skinIds)], (x-1),(y-5),z, 0)
	end
------------------
--Entering
setTimer (function ()
warpPedIntoVehicle (driver, v, 0)
	for i=1, #pp do
		--setTimer (function ()
		warpPedIntoVehicle (pp[i], v, i)
		--end, 2000*i, 1)
	end
end, 1500, 1)
-----------------
end
addCommandHandler ("at400", at400)

end

--Barracks
--Server
if not localPlayer then
local driver = getElementsByType ("player")[1]
--Ped table
local pp = {}
--Vehicle
local v = createVehicle (433, 135.367, 1960.196, 19.414, 0,0,0)
setElementVelocity (v, 0,0,0)
local x,y,z = getElementPosition (v)
local _,_,rz = getElementRotation (v)
--Skins
local skinIds = {287}
----------------------------
function barracks (driver)
--Delete pre existing stuff
	if #pp > 0 then
		for i=1, #pp do
			if isElement (pp[i]) then destroyElement (pp[i]) end
		end
	end
	if ac == true then
		--if isElement (v) then destroyElement (v) end
	end
ac = true
-------Normal passengers-------
pp[1] = createPed (skinIds[1], x,y,z, rz)

setTimer (function ()
setPedEnterVehicle (pp[1], v, true)
end, 1500, 1)	

--Inside passengers
	for i=2, 6 do
	pp[i] = createPed (skinIds[1], (x-1)-(i*0.1),(y-5)-(i),z, rz)
	end	
	
	for i=7, 13 do
	pp[i] = createPed (skinIds[1], (x+0.5)+(i*0.1),(y-5)-(i-6),z, rz)
	end	
------------------

--Entering
--warpPedIntoVehicle (driver, v, 0)
warpPedIntoVehicle (pp[1], v, 1)

setTimer (function ()
	for i=1, #pp do
		setTimer (function ()
		setPedEnterVehicle (pp[i], v, i)
		end, 2000*i, 1)
	end
end, 1500, 1)
-----------------
end
addCommandHandler ("barracks", barracks)

end

--Bobcat
--Server
if not localPlayer then
local driver = getElementsByType ("player")[1]
--Ped table
local pp = {}
--Vehicle
local v = _getPedOccupiedVehicle(driver) or createVehicle (422, 708.902, -458.291, 16.336, 0,0,90)
setElementVelocity (v, 0,0,0)
local x,y,z = getElementPosition (v)
local _,_,rz = getElementRotation (v)
--Skins
local skinIds = {50, 181, 206, 247, 217}
-----------------------------
function bobcat (driver)
--Delete pre existing stuff
	if #pp > 0 then
		for i=1, #pp do
			if isElement (pp[i]) then destroyElement (pp[i]) end
		end
	end
	if ac == true then
		if isElement (v) then destroyElement (v) end
	end
ac = true
-------Normal passengers-------
pp[1] = createPed (skinIds[1], x,y+2,z, rz)

--Standed passengers
pp[2] = createPed (skinIds[2], x+1,y+2,z, rz)
pp[3] = createPed (skinIds[3], x+2,y+2,z, rz)
--Seated passengers
pp[4] = createPed (skinIds[4], x+1,y-2,z, rz)
pp[5] = createPed (285, x-10,y-2,z, -90)
------------------------------
--Entering
setTimer (function ()
setPedEnterVehicle (pp[1], v, true)
	setTimer (function ()
	setPedEnterVehicle (pp[2], v, 3)
		setTimer (function ()
		setPedEnterVehicle (pp[3], v, 5)
			setTimer (function ()
			setPedEnterVehicle (pp[4], v, 4)
			end, 1000, 1)
		end, 1000, 1)
	end, 1000, 1)
end, 1500, 1)

-----------------
end
addCommandHandler ("bobcat", bobcat)

end

--Burrito
--Server
if not localPlayer then
local driver = getElementsByType ("player")[1]
--Ped table
local pp = {}
--Vehicle
local v = createVehicle (482, -2010.660, 896.574, 45.297, 0,0,180)
setElementVelocity (v, 0,0,0)
local x,y,z = getElementPosition (v)
local _,_,rz = getElementRotation (v)
--Skins
local skinIds = {67, 90, 233, 250, 206, 213, 97}
----------------------------
function burrito (driver)
--Delete pre existing stuff
	if #pp > 0 then
		for i=1, #pp do
			if isElement (pp[i]) then destroyElement (pp[i]) end
		end
	end
	if ac == true then
		if isElement (v) then destroyElement (v) end
	end
ac = true
-------Normal passengers-------
pp[1] = createPed (skinIds[1], x,y,z, rz)

setTimer (function ()
setPedEnterVehicle (pp[1], v, true)
end, 1500, 1)	

--Inside passengers
pp[2] = createPed (skinIds[2], x-0.5,y+3,z, rz)
pp[3] = createPed (skinIds[3], x+0.5,y+3,z, rz)

pp[4] = createPed (skinIds[4], x-0.5,y+4,z, rz)
pp[5] = createPed (skinIds[5], x+0.5,y+4,z, rz)

pp[6] = createPed (skinIds[6], x-0.5,y+5,z, rz)
pp[7] = createPed (skinIds[7], x+0.5,y+5,z, rz)
------------------

--Entering
warpPedIntoVehicle (driver, v, 0)
warpPedIntoVehicle (pp[1], v, 1)

setTimer (function ()
	for i=1, #pp do
		setTimer (function ()
		setPedEnterVehicle (pp[i], v, i)
		end, 1000*i, 1)
	end
end, 3500, 1)
-----------------
end
addCommandHandler ("burrito", burrito)

end

--Bus
--Server
if not localPlayer then
local driver = getElementsByType ("player")[1]
--Ped table
local pp = {}
--Vehicle
local v = createVehicle (431, 2038.889, 1537.422, 10.672, 0,0,180)
setElementVelocity (v, 0,0,0)
local x,y,z = getElementPosition (v)
local _,_,rz = getElementRotation (v)
--Skins
local skinIds = {14, 15, 20, 23, 29, 50, 67, 90, 97,
	101, 153, 204, 206, 213, 217, 247, 249, 260,
	16}
----------------------------
function bus (driver)
--Delete pre existing stuff
	if #pp > 0 then
		for i=1, #pp do
			if isElement (pp[i]) then destroyElement (pp[i]) end
		end
	end
	if ac == true then
		--if isElement (v) then destroyElement (v) end
	end
ac = true
-------Normal passengers-------
pp[0] = createPed (253, x,y,z, rz)

warpPedIntoVehicle (pp[0], v, 0)

--Inside passengers
	for i=1, 40 do
	pp[i] = createPed (skinIds[math.random (#skinIds)], (x-3),(y-5)-(i),z, 0)
	end
------------------

--Entering
--warpPedIntoVehicle (driver, v, 0)
warpPedIntoVehicle (pp[1], v, 1)

setTimer (function ()
	for i=#pp, 1, -1 do
		--setTimer (function ()
		warpPedIntoVehicle (pp[i], v, i)
		--end, 2000*i, 1)
	end
end, 1500, 1)
-----------------
end
addCommandHandler ("bus", bus)

end

--Enforcer
--Server
if not localPlayer then
local driver = getElementsByType ("player")[1]
--Ped table
local pp = {}
--Vehicle
local v = _getPedOccupiedVehicle(driver) or createVehicle (427, 1552.330, -1626.911, 13, 0,0,90)
setElementVelocity (v, 0,0,0)
local x,y,z = getElementPosition (v)
local _,_,rz = getElementRotation (v)
--Skins
local skinIds = {285}
----------------------------
function enforcer (driver)
--Delete pre existing stuff
	if #pp > 0 then
		for i=1, #pp do
			if isElement (pp[i]) then destroyElement (pp[i]) end
		end
	end
	if ac == true then
		if isElement (v) then destroyElement (v) end
	end
ac = true
-------Normal peds-------
pp[1] = createPed (skinIds[1], x,y+2,z, rz, true)
pp[2] = createPed (skinIds[1], x+5,y+0.5,z, rz, true)
pp[3] = createPed (skinIds[1], x+5,y-0.5,z, rz, true)

setTimer (function ()
setPedEnterVehicle (pp[1], v, true)
	setTimer (function ()
	setPedEnterVehicle (pp[2], v, true)
		setTimer (function ()
		setPedEnterVehicle (pp[3], v, true)
		end, 500, 1)
	end, 500, 1)
end, 1500, 1)	

------Extra passengers------

	--Inside passengers
	pp[4] = createPed (skinIds[1], x+8,y+0.5,z, rz, true)
	pp[5] = createPed (skinIds[1], x+8,y-0.5,z, rz, true)

	pp[6] = createPed (skinIds[1], x+10,y+0.5,z, rz, true)
	pp[7] = createPed (skinIds[1], x+10,y-0.5,z, rz, true)

	--Tail passengers
	pp[8] = createPed (skinIds[1], x+12,y+0.5,z, rz, true)
	pp[9] = createPed (skinIds[1], x+12,y-0.5,z, rz, true)

	--Side passengers
	pp[10] = createPed (skinIds[1], x,y+3,z, rz, true)
	pp[11] = createPed (skinIds[1], x+1,y+2,z, rz, true)
	pp[12] = createPed (skinIds[1], x+2,y+2,z, rz, true)

	pp[13] = createPed (skinIds[1], x,y-2,z, rz, true)
	pp[14] = createPed (skinIds[1], x+1,y-2,z, rz, true)
	pp[15] = createPed (skinIds[1], x+2,y-2,z, rz, true)
------------------

--Entering
setTimer (function ()
	setTimer (function ()
	setPedEnterVehicle (pp[4], v, 4)
		setTimer (function ()
		setPedEnterVehicle (pp[5], v, 5)
				setTimer (function ()
				setPedEnterVehicle (pp[6], v, 6)
					setTimer (function ()
					setPedEnterVehicle (pp[7], v, 7)
							setTimer (function ()
							setPedEnterVehicle (pp[8], v, 8)
								setTimer (function ()
								setPedEnterVehicle (pp[9], v, 9)
									setTimer (function ()
									setPedEnterVehicle (pp[10], v, 10)
										setTimer (function ()
										setPedEnterVehicle (pp[11], v, 11)
											setTimer (function ()
											setPedEnterVehicle (pp[12], v, 12)
												setTimer (function ()
												setPedEnterVehicle (pp[13], v, 13)
													setTimer (function ()
													setPedEnterVehicle (pp[14], v, 14)
														setTimer (function ()
														setPedEnterVehicle (pp[15], v, 15)
														end, 500, 1)
													end, 500, 1)
												end, 5000, 1)
											end, 500, 1)
										end, 500, 1)
									end, 1500, 1)
								end, 500, 1)
							end, 1500, 1)
					end, 500, 1)
				end, 1000, 1)
		end, 500, 1)	
	end, 1500, 1)	
end, 3500, 1)
-----------------
end
addCommandHandler ("enforcer", enforcer)

end

--Savanna
--Server
if not localPlayer then
local driver = getElementsByType ("player")[1]
--Ped table
local pp = {}
--Vehicle
local v = createVehicle (567, 1776.622, -1924.136, 13, 0,0,-90)
setElementVelocity (v, 0,0,0)
local x,y,z = getElementPosition (v)
local _,_,rz = getElementRotation (v)
--Skins
local skinIds = {29 , 23, 20, 181}
----------------------------
function savanna (driver)
--Delete pre existing stuff
	if #pp > 0 then
		for i=1, #pp do
			if isElement (pp[i]) then destroyElement (pp[i]) end
		end
	end
	if ac == true then
		if isElement (v) then destroyElement (v) end
	end
ac = true
-------Normal passengers-------
pp[1] = createPed (skinIds[1], x,y-2,z, -90)
pp[2] = createPed (skinIds[2], x-1,y-2,z, -90)
pp[3] = createPed (skinIds[3], x,y+3,z, -90)

--Mid seat
pp[4] = createPed (skinIds[4], x-1,y+2,z, -90)
----------------------------
--Entering
warpPedIntoVehicle (driver, v, 0)
--warpPedIntoVehicle (pp[1], v, 1)
--warpPedIntoVehicle (pp[3], v, 3)

setTimer (function ()
setPedEnterVehicle (pp[1], v, true)
	setTimer (function ()
	setPedEnterVehicle (pp[2], v, 2)
		setTimer (function ()
		setPedEnterVehicle (pp[4], v, 4)
			setTimer (function ()
			setPedEnterVehicle (pp[3], v, 3)
			end, 1000, 1)
		end, 1000, 1)
		
	end, 1000, 1)
end, 3000, 1)
-----------------
end
addCommandHandler ("savanna", savanna)

end

--Streak
--Server
if not localPlayer then
local driver = getElementsByType ("player")[1]
--Ped table
local pp = {}
--Vehicle
local v = getElementsByType ("vehicle")[1]
setElementVelocity (v, 0,0,0)
local x,y,z = getElementPosition (v)
local _,_,rz = getElementRotation (v)

--Skins
local skinIds = {14, 15, 20, 23, 29, 50, 59, 67, 90, 97,
	101, 153, 188, 193, 204, 206, 213, 217, 239, 240, 247, 249, 250, 260,
	16}
----------------------------
function streak (driver)
--Delete pre existing stuff
	if #pp > 0 then
		for i=1, #pp do
			if isElement (pp[i]) then destroyElement (pp[i]) end
		end
	end
	if ac == true then
		--if isElement (v) then destroyElement (v) end
	end
ac = true
--Inside passengers
	for i=2, 36 do
	pp[i] = createPed (skinIds[math.random (#skinIds)], (x-1)-(i*0.1),(y-5)-(i),z, rz)
	end	
------------------
--Entering
setTimer (function ()
	for i=1, #pp do
		--setTimer (function ()
		warpPedIntoVehicle (pp[i], v, i)
		--end, 500*i, 1)
	end
end, 1500, 1)
-----------------
end
addCommandHandler ("streak", streak)

end

--Trashmaster
--Server
if not localPlayer then
local driver = getElementsByType ("player")[1]
--Ped table
local pp = {}
--Vehicle
local v = createVehicle (408, 2200.683, -1975.283, 13, 0,0,-90)
setElementVelocity (v, 0,0,0)
local x,y,z = getElementPosition (v)
local _,_,rz = getElementRotation (v)
--Skins
local skinIds = {16}
----------------------------
function trashmaster (driver)
--Delete pre existing stuff
	if #pp > 0 then
		for i=1, #pp do
			if isElement (pp[i]) then destroyElement (pp[i]) end
		end
	end
	if ac == true then
		if isElement (v) then destroyElement (v) end
	end
ac = true
-------Normal passengers-------
pp[1] = createPed (skinIds[1], x+2,y-2,z, rz, true)
setTimer (function ()
setPedEnterVehicle (pp[1], v, true)
end, 1500, 1)
------Tail passengers
pp[2] = createPed (skinIds[1], x-8,y+0.5,z, rz, true)
pp[3] = createPed (skinIds[1], x-8,y-0.5,z, rz, true)
------------------

--Entering
setTimer (function ()
	setTimer (function ()
	setPedEnterVehicle (pp[2], v, 2)
		setTimer (function ()
		setPedEnterVehicle (pp[3], v, 3)
		end, 1000, 1)	
	end, 1500, 1)	
end, 3500, 1)
-----------------
end
addCommandHandler ("trashmaster", trashmaster)

end

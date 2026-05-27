function utils ()

function setupIni ()

if localPlayer then
color1 = {41, 80, 113, 200}
color2 = {41, 80, 113, 100}
color3 = {0, 0, 0, 120}

 screenW,screenH = guiGetScreenSize()
 resW, resH = 1920, 1080
 resW2, resH2 = 1366, 768
 resW3, resH3 = 1600, 900
 x, y =  (screenW/resW), (screenH/resH)
 x2, y2 =  (screenW/resW2), (screenH/resH2)
 x3, y3 =  (screenW/resW3), (screenH/resH3)
 posx = (resW/2) - (540/2)
 painel2 = false

ammoPos = {

	[1] = {x*0, y*75, x*resW, y*413},
	[2] = {x*400, y*240, x*resW, y*413},
	[3] = {x*475, y*600, x*resW, y*413},
	[4] = {x*325, y*925, x*resW, y*413},
	[5] = nil,
	[6] = {x*-312.5, y*925, x*resW, y*413},
	[7] = {x*-470, y*585, x*resW, y*413},
	[8] = {x*-375, y*230, x*resW, y*413},
	
}

imagePos = {
	[1] = {x*745, y*85, x*448, y*224},
	[2] = {x*posx+x*215, y*165, x*448, y*224},
	[3] = {x*posx+x*300, y*340, x*448, y*224},
	[4] = {x*posx+x*240, y*500, x*448, y*224},
	[5] = {x*737, y*575, x*448, y*224},
	[6] = {x*posx+x*-125, y*500, x*448, y*224},
	[7] = {x*posx+x*-190, y*335, x*448, y*224},
	[8] = {x*560, y*150, x*448, y*224},
	[9] = {x*1170, y*613, x*180, y*80},
	[10 ] = {x*560, y*605, x*200, y*100},
}

currentWeapon = {
	[1] = nil,
	[2] = nil,
	[3] = nil,
	[4] = nil,
	[5] = nil,
	[6] = nil,
	[7] = nil,
	[8] = nil,
	[9] = nil,
	[10] = nil,
}


 startX, startY = x*1920/2, y*445
 screenW, screenH = guiGetScreenSize()
direction = 5
end
weaponSlots = {}
slotWeapon = {}

maximum = {
	damage = 0,
	accuracy = 0,
	rate = 0,
	weapon_range = 0,
}

local data = getData ()
	for arma, tabela in pairs (data) do
		if tabela.slot then
			if not weaponSlots[tabela.slot] then weaponSlots[tabela.slot] = {} end
		table.insert (weaponSlots[tabela.slot], arma)
		slotWeapon[arma] = tabela.slot
			for nome, valor in pairs (maximum) do
				if tabela[nome] then
					if tabela[nome] > maximum[nome] then maximum[nome] = tabela[nome] end
					if nome == 'damage' then
						if tabela.fragments and tabela.fragments > 1 then
						maximum[nome] = tabela[nome] * tabela.fragments
						else
						maximum[nome] = tabela[nome]
						end
					end
				end
			end
		end
	end

myWeapons = {}
function wheelStart ()
local properties, projectiles, armas = getData ()
	if armas[localPlayer] then
		for slot, t in pairs (armas[localPlayer]) do
			for arma, tabela in pairs (t) do
				if slotWeapon[arma] then
					if not myWeapons[slot] then myWeapons[slot] = {} end
					if table.contain (myWeapons[slot], arma) ~= true then
					table.insert (myWeapons[slot], arma)
					end
					for i=1, #myWeapons[slot] do
						if myWeapons[slot][i] == getPedWeapon (localPlayer, slot) then
						currentWeapon[slot] = myWeapons[slot][i]
						end
					end
				end
			end
		end
	end
end
addEvent ('wheelStart', true)
addEventHandler ('wheelStart', getRootElement(), wheelStart)
addEventHandler ('giveWeapon', getRootElement(), wheelStart)
addEventHandler ('takeWeapon', getRootElement(), wheelStart)
addEventHandler ('takeAllWeapons', getRootElement(), wheelStart)
addEventHandler ('setPedAmmoInClip', getRootElement(), wheelStart)
addEventHandler ('setPedTotalAmmo', getRootElement(), wheelStart)
addEventHandler ('applyUpgradeForPlayer', getRootElement(), wheelStart)


addEvent ('PUNKArmasComprar', true)
addEventHandler ('PUNKArmasComprar', getRootElement (), function (arma)
	if source ~= localPlayer then return end
	if slotWeapon[arma] then
	local slot = slotWeapon[arma]
		if not myWeapons[slot] then myWeapons[slot] = {} end
		if table.contain (myWeapons[slotWeapon[arma]], arma) then else
		table.insert (myWeapons[slotWeapon[arma]], arma)
		end
	currentWeapon[slotWeapon[arma]] = arma
	updateRenderStats ()
	end
end)

end
setupIni()

function table.contain (tabela, item)
	for i, valor in pairs (tabela) do
		if i == item or valor == item then return true end
	end
return false
end

function getCurrentSlot ()
return direction
end

-- Inicia captura quando o cursor aparecer
local startX, startY = nil, nil
function cursor (_, _, absX, absY)
 if not isCursorShowing() then return end

		 -- Define ponto inicial se ainda não tiver
        if not startX then
         --   startX = absX
          --  startY = absY
          --  return
        end


        -- Define ponto inicial se ainda não tiver
        local startX, startY = x*1920/2, y*445

        local dx = absX - startX
        local dy = startY - absY -- invertido porque Y cresce para baixo na tela

          -- Ignora micro movimento
        if (dx*dx + dy*dy) < 60 then return end

        local angle = math.deg(math.atan2(dy, dx))
        if angle < 0 then
            angle = angle + 360
        end
		
		if direction then
			if direction ~= getDirectionFromAngle(angle) then
			direction = getDirectionFromAngle(angle)
			end
		else
		direction = getDirectionFromAngle(angle)
		end
		force[direction] = force[direction] + 1
		--        startX = absX
        --startY = absY
		removeEventHandler("onClientCursorMove", root, cursor)
		setCursorPosition (x*1920/2, y*445)
		addEventHandler("onClientCursorMove", root, cursor)
end

force = {}

	for i=1, 8 do
	force[i] = 0
	end

function getDirectionFromAngle(angle)
    if angle >= 337.5 or angle < 22.5 then
        return 3
    elseif angle >= 22.5 and angle < 67.5 then
        return 2
    elseif angle >= 67.5 and angle < 112.5 then
        return 1
    elseif angle >= 112.5 and angle < 157.5 then
        return 8
    elseif angle >= 157.5 and angle < 202.5 then
        return 7
    elseif angle >= 202.5 and angle < 247.5 then
        return 6
    elseif angle >= 247.5 and angle < 292.5 then
        return 5
    elseif angle >= 292.5 and angle < 337.5 then
        return 4
    end
end


function cursorPosition(x, y, w, h)
	if (not isCursorShowing()) then
		return false
	end
	local mx, my = getCursorPosition()
	local fullx, fully = guiGetScreenSize()
	cursorx, cursory = mx*fullx, my*fully
	if cursorx > x and cursorx < x + w and cursory > y and cursory < y + h then
		return true
	else
		return false
	end
end

function isCursorOnElement(x,y,w,h)
	local mx,my = getCursorPosition ()
	local fullx,fully = guiGetScreenSize()
	cursorx,cursory = mx*fullx,my*fully
		if cursorx > x and cursorx < x + w and cursory > y and cursory < y + h then
			return true
		else
		return false
		end
end

function dxDrawBorderedText( text, x, y, w, h, color, scale, font, alignX, alignY, clip, wordBreak, postGUI )
    dxDrawText ( text:gsub("#%x%x%x%x%x%x", ""), x - 2, y - 2, w - 2, h - 2, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false ) -- black
    dxDrawText ( text:gsub("#%x%x%x%x%x%x", ""), x + 2, y - 2, w + 2, h - 2, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
    dxDrawText ( text:gsub("#%x%x%x%x%x%x", ""), x - 2, y + 2, w - 2, h + 2, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
    dxDrawText ( text:gsub("#%x%x%x%x%x%x", ""), x + 2, y + 2, w + 2, h + 3, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )  
    dxDrawText ( text:gsub("#%x%x%x%x%x%x", ""), x - 3, y, w - 3, h, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
    dxDrawText ( text:gsub("#%x%x%x%x%x%x", ""), x + 3, y, w + 3, h, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
    dxDrawText ( text:gsub("#%x%x%x%x%x%x", ""), x, y - 3, w, h - 3, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
    dxDrawText ( text:gsub("#%x%x%x%x%x%x", ""), x, y + 3, w, h + 3, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )   
    dxDrawText ( text, x, y, w, h, color, scale, font, alignX, alignY, clip, wordBreak, postGUI, true )
end

function dxDrawCircle(px, py, width, height, color, angleStart, angleSweep, borderWidth)
    height = height or width
    color = color or tocolor(255,255,255)
    borderWidth = borderWidth or 1e9
    angleStart = angleStart or 0
    angleSweep = angleSweep or 360 - angleStart
    if ( angleSweep < 360 ) then
        angleEnd = math.fmod( angleStart + angleSweep, 360 ) + 0
    else
        angleStart = 0
        angleEnd = 360
    end
    px = px - width / 2
    py = py - height / 2
    if not circleShader then
        circleShader = dxCreateShader ( "sfx/circle.fx" )
    end
    dxSetShaderValue ( circleShader, "sCircleWidthInPixel", width );
    dxSetShaderValue ( circleShader, "sCircleHeightInPixel", height );
    dxSetShaderValue ( circleShader, "sBorderWidthInPixel", borderWidth );
    dxSetShaderValue ( circleShader, "sAngleStart", math.rad( angleStart ) - math.pi );
    dxSetShaderValue ( circleShader, "sAngleEnd", math.rad( angleEnd) - math.pi );
    dxDrawImage( px, py, width, height, circleShader, 0, 0, 0, color)
end

function findIndex (tab, item)
	for i, valor in pairs (tab) do
		if valor == item then return i end
	end
return false
end

function getInputType (botao)
local teclas = getBoundKeys ('weapon_wheel')
	for tecla, et in pairs (teclas) do
		if botao == tecla then
		return 'weapon_wheel'
		end
	end
	if painel2 == true then
	local teclas = getBoundKeys ('fire')
		for tecla, et in pairs (teclas) do
			if botao == tecla then
			return 'select'
			end
		end
	local teclas = getBoundKeys ('next_weapon')
		for tecla, et in pairs (teclas) do
			if botao == tecla then
			return 'previous'
			end
		end
	local teclas = getBoundKeys ('previous_weapon')
		for tecla, et in pairs (teclas) do
			if botao == tecla then
			return'next'
			end
		end
	end
return false
end

end
utils ()

if localPlayer then

function commandIni ()
addCommandHandler ('weapon_wheel', function () end)
bindKey ('tab', 'down', 'weapon_wheel')

addEventHandler ('onClientResourceStart', getResourceRootElement (getThisResource ()), function ()
toggleControl("next_weapon", false) 
toggleControl("previous_weapon", false)
end)

end


function renderIni ()

local weapon_wheel = dxCreateTexture ('gfx/weapon_wheel.png', 'dxt3')
local wheel_selected = dxCreateTexture ('gfx/wheel_selected.png', 'dxt3')
local wheel_use = dxCreateTexture ('gfx/wheel_use.png', 'dxt3')

local wheel_selector = dxCreateTexture ('gfx/wheel_selector.png', 'dxt3')
local weapon_stats = dxCreateTexture ('gfx/weapon_stats.png', 'dxt3')

function placas ()
dxDrawImage (530.08*x, 18.08*y, 859.84*x, 859.84*y, weapon_wheel)
	for i=1, 8 do
		if direction == i then
		dxDrawImage (530.08*x, 18.08*y, 859.84*x, 859.84*y, wheel_selected, 0 + (45*(i-1)))
		end
	end
--[[
	if isCursorOnElement(x*1210, y*605, x*100, y*100) then
	dxDrawCircle(x*1920/2+x*300, y*655, x*100, y*100, tocolor(color2[1], color2[2], color2[3], color2[4]), 0, 360, y*100)
	else
	dxDrawCircle(x*1920/2+x*300, y*655, x*100, y*100, tocolor(0, 0, 0, 153), 0, 360, y*100)
	end
dxDrawCircle(x*1920/2+x*300, y*655, x*100, y*100, tocolor(color3[1], color3[2], color3[3], color3[4]), 0, 360, y*5)
	
	if isCursorOnElement(x*610, y*605, x*100, y*100) then
	dxDrawCircle(x*1920/2-x*300, y*655, x*100, y*100, tocolor(color2[1], color2[2], color2[3], color2[4]), 0, 360, y*100)
	else
	dxDrawCircle(x*1920/2-x*300, y*655, x*100, y*100, tocolor(0, 0, 0, 153), 0, 360, y*100)
	end
dxDrawCircle(x*1920/2-x*300, y*655, x*100, y*100, tocolor(color3[1], color3[2], color3[3], color3[4]), 0, 360, y*5)
	]]
	
end

function border ()
local weapon = getPedWeapon (localPlayer)
local slot = slotWeapon[weapon]
	if slot then
	dxDrawImage (530.08*x, 18.08*y, 859.84*x, 859.84*y, wheel_use, -45 + (45*slot), 0, 0, tocolor (255,255,255,255))
	end
end

function municoes ()
	for slot=1, #ammoPos do
		if ammoPos[slot] ~= nil then
		local weapons = currentWeapon[slot]--getPedWeapon (localPlayer, slot)
			if weapons and weapons ~= 0 then
			local ammos = getPedAmmoInClip (localPlayer, weapons)
			local total = getPedTotalAmmo(localPlayer, weapons)
				if ammos and total then
				local ammos1 = total-ammos
					if ammos1 < 0 then ammos1 = 0 end
				local ax,ay, px,py = unpack (ammoPos[slot])
				dxDrawBorderedText ("#A9A9A9 "..ammos1.."#7e7675 /"..ammos, ax,ay,px,py, tocolor (255, 255, 255, 255), y3*1.25, "default-bold", "center", "center", false, false, false, false, false)
				end
			end
		end
	end
end

function images ()
	icons = exports['weapon_replace']:getWeaponIcons () 
	for slot=1, #imagePos do
	local pos = imagePos[slot]
	local ax,ay, px,py = unpack (pos)
	local arma = currentWeapon[slot]
		if arma and arma ~= 0 then
		dxDrawImage(ax,ay,px,py, icons[arma], 0, 0, 0, tocolor(255, 255, 255, 255))	
		end
	end
end

local ax,ay = guiGetScreenSize ()
local renderStats = dxCreateRenderTarget(ax, ay, true)

function updateRenderStats()
if isCursorShowing () ~= true then return end
    dxSetRenderTarget(renderStats, true)
    dxSetBlendMode("modulate_add")
dxDrawRectangle(x*0, y*0, x*1920, y*1080, tocolor(0, 0, 0, 40), false)
	
local slot = getCurrentSlot ()
	if slot then
		if myWeapons[slot] and currentWeapon[slot] then
		local atual = findIndex (myWeapons[slot], currentWeapon[slot])
			if atual then
			local total = #myWeapons[slot]
				if total and total > 1 then
				dxDrawImage (x*900, y*330	, x*17.88, y*29.88, wheel_selector, 0,0,0, tocolor (255,255,255,255))
				dxDrawBorderedText(atual..'/'..total, x*0, y*275, x*resW, y*413, tocolor(255, 255, 255, 255), x2*1.25, "default-bold", "center", "center", false, false, false, false, false)
				dxDrawImage (x*1003, y*330, x*17.88, y*29.88, wheel_selector, 180,0,0, tocolor (255,255,255,255))
				end
				if ammoPos[slot] ~= nil then
					if getResourceFromName ('weapon_gunshop') and getResourceState (getResourceFromName ('weapon_gunshop')) == 'running' then
					local armas = exports['weapon_gunshop']:obterArmas ()
						if armas then
						local tabela = armas[currentWeapon[slot]]
							if tabela then
								if tabela.upgrades and tabela.upgrades ~= {} then
								counter = 1
									for item, valor in pairs (tabela.upgrades) do
										if not string.find (item, 'Tint') then
											if valor == true then
											dxDrawBorderedText(item, x*0, y*(275 + (100*counter)), x*resW, y*413, tocolor(255, 255, 255, 255), x2*1.25, "default-bold", "center", "center", false, false, false, false, false)
											counter = counter + 1
											end
										end
									end
								counter = nil
								else
								dxDrawBorderedText('No attachments', x*0, y*(375 + (100*1)), x*resW, y*413, tocolor(255, 255, 255, 255), x2*1.25, "default-bold", "center", "center", false, false, false, false, false)
								end
							else
							dxDrawBorderedText('No attachments', x*0, y*(375 + (100*1)), x*resW, y*413, tocolor(255, 255, 255, 255), x2*1.25, "default-bold", "center", "center", false, false, false, false, false)
							end
						else
						dxDrawBorderedText('No attachments', x*0, y*(375 + (100*1)), x*resW, y*413, tocolor(255, 255, 255, 255), x2*1.25, "default-bold", "center", "center", false, false, false, false, false)
						end
					else
					dxDrawBorderedText('No attachments', x*0, y*(375 + (100*1)), x*resW, y*413, tocolor(255, 255, 255, 255), x2*1.25, "default-bold", "center", "center", false, false, false, false, false)
					end
				end
			dxDrawBorderedText(currentWeapon[slot], x*0, y*175, x*resW, y*413, tocolor(255, 255, 255, 255), x2*1.25, "default-bold", "center", "center", false, false, false, false, false)
			
			dxDrawImage (x*posx+x*971, y*1, x*256, y*256, weapon_stats, 0,0,0, tocolor (255,255,255,255))
			--Damage
			local atual = getWeaponProperty (currentWeapon[slot], 'damage')
			local frag = getWeaponProperty (currentWeapon[slot], 'fragments')
			local size = (atual*frag)/maximum.damage
			dxDrawRectangle(x*posx+x*982.5, y*35, x*(227.75*size), y*11, tocolor(255,255,255,255), false)
			--Fire rate
			local atual = getWeaponProperty (currentWeapon[slot], 'rate')
			local size = atual/maximum.rate
			dxDrawRectangle(x*posx+x*982.5, y*89.125, x*(227.75*size), y*11, tocolor(255,255,255,255), false)
			--Accuracy
			local atual = getWeaponProperty (currentWeapon[slot], 'accuracy')
			local size = atual/maximum.accuracy
			dxDrawRectangle(x*posx+x*982.5, y*151, x*(227.75*size), y*11, tocolor(255,255,255,255), false)
			--Range
			local atual = getWeaponProperty (currentWeapon[slot], 'weapon_range')
			local size = atual/maximum.weapon_range
			dxDrawRectangle(x*posx+x*982.5, y*214.5, x*(227.75*size), y*11, tocolor(255,255,255,255), false)

			end
		end
	end
	
			
placas ()
	
municoes ()

border ()
	
images ()


    dxSetBlendMode("blend")
    dxSetRenderTarget()
end

function renderizar ()
exports["Blur"]:dxDrawBluredRectangle(x*0, y*0, x*1920, y*1080, tocolor(255, 255, 255, 225))
dxDrawImage (0,0,ax,ay, renderStats)
end

end


function animIni ()
timer = {}
function switchAnim()
local jogador = source
setPedAnimation (jogador, 'ped', 'phone_out', 1, false, false, true, true, 500, true)
	timer[jogador] = setTimer (function ()
	setPedAnimationProgress (jogador, 'phone_out', 0.5)
		timer[jogador] = setTimer (function ()
		setPedAnimation (jogador, 'ped', 'phone_out', 50, false, false, true, false, -1, true)
		end, 700, 1)
	end, 50, 1)
end
addEvent('switchAnim', true)
addEventHandler('switchAnim', getRootElement(), switchAnim)



end


function controlsIni ()

addEventHandler ('onClientCursorMove', root, function ()
	if painel2 ~= true then return end
local slot = getCurrentSlot ()
	if slot then
		if tempSlot then
			if slot ~= tempSlot then
			tempSlot = slot 
			playSound ('sfx/select.mp3', false)
			updateRenderStats ()
			end
		else
		playSound ('sfx/select.mp3', false)
		tempSlot = slot 
		updateRenderStats ()
		end
	else
	tempSlot = nil
	updateRenderStats ()
	end
end)

_showCursor = showCursor
function showCursor (a,b)
	_showCursor (a,b)
	setCursorAlpha (255)
	setCursorAlpha (a == true and 0 or a == false and 255)
	if a == true then
	
	removeEventHandler("onClientCursorMove", root, cursor)
	setCursorPosition (x*1920/2, y*445)

	addEventHandler("onClientCursorMove", root, cursor)
	

	else
	removeEventHandler("onClientCursorMove", root, cursor)
	end
return _showCursor (a,b)
end

function digitou (botao, estado)
	if painel2 == true then
	local teclas = getBoundKeys ('aim_weapon')
		for tecla, et in pairs (teclas) do
			if botao == tecla then
			return cancelEvent ()
			end
		end
	end
local tipo = getInputType (botao)
	if tipo == false then return end
cancelEvent ()
	if tipo == 'weapon_wheel' then
		if estado then
		showCursor (true, false)
		addEventHandler ("onClientRender", root, renderizar)
		updateRenderStats ()
			setTimer (function ()
				if painel2 == true then
				updateRenderStats ()
				end
			end, 50, 1)
		painel2 = true
	--	fundo = playSound ('sfx/effect.mp3', true)
		playSound ('sfx/change.mp3', false)
		else
		painel2 = false
		removeEventHandler ("onClientRender", root, renderizar)
		local slot = getCurrentSlot ()
			if slot then
			local arma = currentWeapon[slot]
				if arma and arma ~= getPedWeapon (localPlayer) then
				triggerServerEvent ('pegarArma', localPlayer, arma)
				end
			end
		showCursor (false)
	--	stopSound (fundo)
		playSound ('sfx/change.mp3', false)
		end
	end
	if tipo == 'select' then
	local slot = getCurrentSlot ()
			if slot then
			local arma = currentWeapon[slot]
				if arma and arma ~= getPedWeapon (localPlayer) then
				triggerServerEvent ('pegarArma', localPlayer, arma)
				end
			end
	playSound ('sfx/select.mp3', false)
	end
	if tipo == 'next' or tipo == 'previous' then
		if estado then
		local slot = getCurrentSlot ()
			if slot ~= false then
				for i=1, #myWeapons do
				local tabela = myWeapons[i]
					for k=1, #tabela do
					local arma = tabela[k]
						if arma == currentWeapon[slot] then
							if tipo == 'next' then
								if tabela[k+1] then
								currentWeapon[slot] = tabela[k+1]
								else
								currentWeapon[slot] = tabela[1]
								end
							else
								if tabela[k-1]then
								currentWeapon[slot] = tabela[k-1]
								else
								currentWeapon[slot] = tabela[#tabela]
								end
							end
						playSound ('sfx/select.mp3', false)
						updateRenderStats ()
						break
						end
					end
				end
			end
		end
	end
end
addEventHandler ('onClientKey', root, digitou)

end


addEventHandler ('onClientResourceStart', getResourceRootElement (getThisResource ()), function ()
commandIni ()
renderIni ()
animIni ()
animIni ()
controlsIni ()
end)

end

if not localPlayer then

timer = {}
function pegarArma (arma)
local jogador = source
	if arma == getPedWeapon (jogador) then return end
	if timer[jogador] and isTimer(timer[jogador]) then return end
	triggerClientEvent('switchAnim', jogador)
    timer[jogador] = setTimer(function()
	giveWeapon (jogador, arma, 0, true)
    end, 600, 1, player) 
end
addEvent ('pegarArma', true)
addEventHandler ('pegarArma', getRootElement(), pegarArma)

addEventHandler ('onPlayerLogin', getRootElement(), function ()
triggerClientEvent (source, 'wheelStart', source)
end)

addEventHandler ('onPlayerResourceStart', getRootElement(), function (mod)
	if mod ~= getThisResource () then return end
	if getPlayerAccount (source) and isGuestAccount (getPlayerAccount (source)) == false then
	giveWeapon (source, 'Unarmed', 1)
	triggerClientEvent (source, 'wheelStart', source)
	end
end)

end
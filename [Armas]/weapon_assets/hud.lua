local screenW,screenH = guiGetScreenSize()
local resW, resH = 1280, 720
local x, y =  (screenW/resW), (screenH/resH)

function HudGtaV ( )
showammo1 = getPedAmmoInClip (localPlayer,getPedWeaponSlot(localPlayer))
showammo2 = _getPedTotalAmmo(localPlayer)-getPedAmmoInClip(localPlayer)
dxDrawBorderedText("".. showammo2 ,x*1150, y*75, x*1205, y*40,tocolor(255, 255, 255,255),1.0,"pricedown","right","top",false,false,false)
dxDrawBorderedText("".. showammo1 ,x*1212, y*75, x*750, y*40,tocolor(190, 190, 190,255),1.0,"pricedown","left","top",false,false,false)
end

function toggleRadar()
	if isVisible then
		addEventHandler("onClientRender", root, HudGtaV)
	else
		removeEventHandler("onClientRender", root, HudGtaV)
	end
	isVisible = not isVisible
end
bindKey ("F11", "down", toggleRadar)


local hudTable = 
{
--"ammo",
"armour",
"clock",
"health",
"money",
"weapon",
"wanted",
"area_name",
"vehicle_name",
"breath",
"clock"
}

addEventHandler("onClientRender", root, HudGtaV)
addEventHandler("onClientResourceStart", resourceRoot,
    function()
	for id, hudComponents in ipairs(hudTable) do
		showPlayerHudComponent(hudComponents, false)
	end
    end
)

addEventHandler("onClientResourceStop", resourceRoot,
    function()
	for id, hudComponents in ipairs(hudTable) do
		showPlayerHudComponent(hudComponents, true)
	end
    end
)

function dxDrawBorderedText( text, x, y, w, h, color, scale, font, alignX, alignY, clip, wordBreak, postGUI )
	dxDrawText ( text, x - 1, y - 1, w - 1, h - 1, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
	dxDrawText ( text, x + 1, y - 1, w + 1, h - 1, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
	dxDrawText ( text, x - 1, y + 1, w - 1, h + 1, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
	dxDrawText ( text, x + 1, y + 1, w + 1, h + 1, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
	dxDrawText ( text, x - 1, y, w - 1, h, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
	dxDrawText ( text, x + 1, y, w + 1, h, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
	dxDrawText ( text, x, y - 1, w, h - 1, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
	dxDrawText ( text, x, y + 1, w, h + 1, tocolor ( 0, 0, 0, 155 ), scale, font, alignX, alignY, clip, wordBreak, false )
	dxDrawText ( text, x, y, w, h, color, scale, font, alignX, alignY, clip, wordBreak, postGUI )
end

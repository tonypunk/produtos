
function core ()

--Client
if localPlayer then

--UI
-- Button Events
addEvent("onClientAcceptButton", true)
addEvent("onClientChangeButton", true)
-- CheckBox Events
addEvent("onClientCheckBoxChange", true)
--Switch
addEvent("onClientAcceptSwitch", true)
addEvent("onClientChangeSwitch", true)
function destroyNativeUI ()

--Main
window = {
    options={}
}

local sound
local actual = 1
isNativeShown = nil
switch={}


if renderNative then
removeEventHandler("onClientRender", getRootElement(), renderNative)
end
if UIkeypress then
--removeEventHandler("onClientKey", getRootElement(), UIkeypress)
end


function createNativeUI(name, title, image, color, namecolor, titlecolor, align, counter, scrollitems, namealign)
    if isNativeShown then return false end
    if name == "" then
        assert(type(name) == string, "Bad argument @ createNativeUI [expected string at argument 1,  got "..type(name).." '"..name.."'']")
    end
    if title then
        assert(title and tostring(title), "Bad argument @ createNativeUI [expected string at argument 2,  got "..type(title).." '"..title.."'']")
    end
    if not image then
        assert(color, "[Native UI]No specified image and not specified color")
    end
    if image then
        assert(fileExists(image), "Bad argument @ createNativeUI [expected file at argument 3,  got "..type(color).." '"..color.."'']")
    end
    if color then
        assert(tonumber(color), "Bad argument @ createNativeUI [expected color at argument 4,  got "..type(color).." '"..color.."'']")
    end
    if align then
        assert(align == "left" or align == "right", "Invalid align type @ createNativeUI [expected 'left'/'right' at argument 7,  got"..type(align).." '"..align.."'']")
    end
    if namealign then
        assert(namealign == "left" or namealign == "center" or namealign == "right","Invalid menu-align type @ createNativeUI [expected 'left'/'center'/'right' at argument 11,  got"..type(align).." '"..align.."'']")
    end
    if not namealign then
        namealign = "center"
    end
    window = {}
    window.items={}
    zoom = getZoom()
    window.name = name
    window.title = title or "Native UI"
    local scale = scaleScreen(10, 10, 431, 107, align, "top")
    window.namepos = Vector2(unpack(scale, 1), unpack(scale, 2))
    window.namesize = Vector2(unpack(scale, 3), unpack(scale, 4))
    if namealign == "left" then
        pos = window.namepos["x"]+(15/zoom)
    elseif namealign == "center" then
        pos = window.namepos["x"]+(window.namesize["x"]/2)
    elseif namealign == "right" then
        pos = window.namepos["x"]+(window.namesize["x"]-(15/zoom))
    end
    window.namealign = namealign
    window.namepos2 = Vector2(pos, window.namepos["y"]+(window.namesize["y"]/1.75))
    local scale = scaleScreen(0, 0, 431, 37, "left", "top")
    window.titlepos = Vector2(window.namepos["x"], window.namepos["y"]+window.namesize["y"])
    window.titlesize = Vector2(unpack(scale, 3), unpack(scale, 4))
    window.titlepos2 = Vector2(window.titlepos["x"]+(15/zoom), window.titlepos["y"]+(window.titlesize["y"]/2))
    window.titlepos3 = Vector2(window.titlepos["x"]+window.titlesize["x"]-(15/zoom), window.titlepos["y"]+(window.titlesize["y"]/2))
	local st = dxGetStatus()
		if st.VideoMemoryFreeForMTA <= 0 then
		window.namefont = "default"
		window.titlefont = "default-bold"
		else
		window.namefont = dxCreateFont("assets/fonts/font.ttf", 55/zoom) or "default"
		window.titlefont = dxCreateFont("assets/fonts/fonttitle.ttf", 18/zoom, false) or "default-bold"
		end
    window.image = image or false
    window.color = color or false
    window.namecolor = namecolor or tocolor(255, 255, 255)
    window.titlecolor = titlecolor or tocolor(255, 255, 255)
    window.counter = counter or false
    window.scroll = scroll or false
    if not scrollitems or scrollitems > 10 or scrollitems <= 1 then
        scrollitems = 10
    end
    local scale = scaleScreen(0,0,50,50)
    window.iconscale = Vector2(unpack(scale,3),unpack(scale,4))
    window.scrollitems = scrollitems
    
    isNativeShown = true
    addEventHandler("onClientRender", getRootElement(), renderNative)
	
	--Destruir
		if sourceResource ~= getThisResource() then
		local res = sourceResource or getThisResource ()
			addEventHandler ("onClientResourceStop", getResourceRootElement(res), function ()
			clearNativeUI ()
			removeNativeUI ()
			end)
		end
	
end

function renderNative()
    if not window.image then
        dxDrawRectangle(window.namepos,window.namesize,window.color)
    else
        dxDrawImage(window.namepos, window.namesize, window.image)
    end
    dxDrawRectangle(window.titlepos, window.titlesize, tocolor(0, 0, 0))
    dxDrawText(window.title, window.titlepos2, nil, nil, window.titlecolor, 1, window.titlefont or "default-bold", "left", "center")
    if window.counter then
        dxDrawText(actual.."/"..#window.items, window.titlepos3, nil, nil, window.titlecolor, 1, window.titlefont or "default-bold", "right", "center")
    end
    if window.name then
        dxDrawText(window.name, window.namepos2, nil, nil, window.namecolor, 1, window.namefont or "default", window.namealign, "center")
    end
    for i, v in pairs(window.items) do
        page = math.ceil(i/window.scrollitems)
        dxDrawText(getCurrentNativePage(), 0, 0, 0, 0)
        if i > window.scrollitems*(getCurrentNativePage()-1) and i <= window.scrollitems*getCurrentNativePage() then
            i=i-window.scrollitems*(getCurrentNativePage()-1)
            if actual-window.scrollitems*(getCurrentNativePage()-1) == i then
                color = tocolor(255, 255, 255, 255*0.6)
                textcolor = tocolor(0, 0, 0, 255)
            else
                local multiplier = 255*(0.03*i)
                color = tocolor(0, 0, 0, 255-multiplier)
                textcolor = v.color
            end
            local pos = Vector2(window.titlepos["x"], window.titlepos["y"]+window.titlesize["y"]+(window.titlesize["y"]*(i-1)))
            dxDrawRectangle(pos, window.titlesize, color)
            local pos = Vector2(window.titlepos["x"]+(15/zoom), window.titlepos["y"]+window.titlesize["y"]/2+(window.titlesize["y"]*(i)))
            dxDrawText(v.text, pos, nil, nil, textcolor, 1, window.titlefont or "default-bold", "left", "center")
           
			

			if v.type == "switch" then
                local pos = Vector2(window.titlepos["x"]+window.titlesize["x"]-(15/zoom), window.titlepos["y"]+window.titlesize["y"]/2+(window.titlesize["y"]*(i)))
                local actual = tonumber(v.actual)
                dxDrawText("⮜ "..v.value[actual].." ⮞", pos, nil, nil, textcolor, 1, window.titlefont or "default-bold", "right", "center")
            elseif v.type == "button" then
				
				if v.icon then
				local pos = Vector2(window.titlepos["x"]+window.titlesize["x"]-(60/zoom), window.titlepos["y"]+window.titlesize["y"]/2+(window.titlesize["y"]*(i-1))+(12/zoom))
				dxDrawImage(pos,window.iconscale,"assets/icons/"..v.icon..".png")
				
					if actual-window.scrollitems*(getCurrentNativePage()-1) == i then
						--imgtype = 2
					else
						--imgtype = 1
					end
					
					
				else
					if v.price then
					local pos = Vector2(window.titlepos["x"]+window.titlesize["x"]-(15/zoom), window.titlepos["y"]+window.titlesize["y"]/2+(window.titlesize["y"]*(i)))
					local actual = tonumber(v.actual)
					dxDrawText(v.price, pos, nil, nil, textcolor, 1, window.titlefont or "default-bold", "right", "center")
					end
				end
            end

            if v.type == "checkbox" then
                if v.actual == 1 then
                    checkicon = "accept"
                    if actual-window.scrollitems*(getCurrentNativePage()-1) == i then
                        imgtype = 2
                    else
                        imgtype = 1
                    end
                elseif v.actual == 0 then
                    checkicon = "box"
                    if actual-window.scrollitems*(getCurrentNativePage()-1) == i then
                        imgtype = 2
                    else
                        imgtype = 1
                    end
                end

                local pos = Vector2(window.titlepos["x"]+window.titlesize["x"]-(60/zoom), window.titlepos["y"]+window.titlesize["y"]/2+(window.titlesize["y"]*(i-1))+(12/zoom))

                dxDrawImage(pos,window.iconscale,"assets/icons/"..checkicon..""..imgtype..".png")
            
            end

            if #window.items > window.scrollitems  then
                local pos = Vector2(window.titlepos["x"], window.titlepos["y"]+window.titlesize["y"]+(window.titlesize["y"]*(10)))
                dxDrawRectangle(pos, window.titlesize, tocolor(0, 0, 0, 255*0.4))
                local pos = Vector2(window.titlepos["x"]+(window.titlesize["x"]/2), window.titlepos["y"]+window.titlesize["y"]/2+(window.titlesize["y"]*(11)))
                if actual == 1 then
                    text = "⮟"
                elseif actual == #window.items then
                    text = "⮝"
                else
                    text = "⮝ \ ⮟"
                end
                dxDrawText(text, pos, nil, nil, tocolor(255, 255, 255), 1, window.titlefont or "default-bold", "center", "center")
            end
        end
    end
end

function UIkeypress (btn, state)
	if not isNativeShown then return end
    if btn == "arrow_d" and state == true then
        cancelEvent()
    end
    if btn == "arrow_u" and state == true then
        cancelEvent()
    end
    if btn == "arrow_r" and state == true then
        cancelEvent()
    end
    if btn == "arrow_l" and state == true then
        cancelEvent()
    end
    if btn == "enter" and state == true then
       -- cancelEvent()
    end
end
addEventHandler("onClientKey", getRootElement(), UIkeypress)

function down ()
	if not isNativeShown then return end
        if #window.items == 0 then return end
        if actual+1 > #window.items then
            actual = 1
        else
            actual = actual+1
        end
		playNativeSound ("navigation")
		if window.items[actual].type == "switch" then
		local actualswitch = window.items[actual].actual
		local actualswitch = window.items[actual].value[tonumber(actualswitch)]
		triggerEvent("onClientChangeSwitch", localPlayer, actual, actualswitch, true)
		end
		if window.items[actual].type == "button" then
		local btntext = window.items[actual].text
        triggerEvent("onClientChangeButton", localPlayer, actual, btntext, true)
		end
end

function up ()
 if not isNativeShown then return end
        if #window.items == 0 then return end
        if actual-1 < 1 then
            actual = #window.items
        else
            actual = actual-1
        end
		playNativeSound ("navigation")
		if window.items[actual].type == "switch" then
		local actualswitch = window.items[actual].actual
		local actualswitch = window.items[actual].value[tonumber(actualswitch)]
		triggerEvent("onClientChangeSwitch", localPlayer, actual, actualswitch, true)
		end
		if window.items[actual].type == "button" then
		local btntext = window.items[actual].text
        triggerEvent("onClientChangeButton", localPlayer, actual, btntext, true)
		end
end

function right ()
if not isNativeShown then return end
        if #window.items == 0 then return end
        if window.items[actual].type == "switch" then
            window.items[actual].actual = window.items[actual].actual+1
            if window.items[actual].actual > #window.items[actual].value then window.items[actual].actual = 1 end
            playNativeSound ("navigation")
            local actualswitch = window.items[actual].actual
            local actualswitch = window.items[actual].value[tonumber(actualswitch)]
            triggerEvent("onClientChangeSwitch", localPlayer, actual, actualswitch)
        end
end

function left ()
 if not isNativeShown then return end
        if #window.items == 0 then return end
        if window.items[actual].type == "switch" then
            window.items[actual].actual = window.items[actual].actual-1
            if window.items[actual].actual < 1 then window.items[actual].actual = #window.items[actual].value end
            local actualswitch = window.items[actual].actual
            local actualswitch = window.items[actual].value[tonumber(actualswitch)]
            triggerEvent("onClientChangeSwitch", localPlayer, actual, actualswitch)
            playNativeSound ("navigation")
        end
end

function enter ()
	if isNativeShown == true then
        if #window.items == 0 then return end
        if window.items[actual].type == "switch" then
            local actualswitch = window.items[actual].actual
            local actualswitch = window.items[actual].value[tonumber(actualswitch)]
            triggerEvent("onClientAcceptSwitch", localPlayer, actual, actualswitch)
        end
        if window.items[actual].type == "button" then
            local btntext = window.items[actual].text
            triggerEvent("onClientAcceptButton", localPlayer, actual, btntext)
        end
        if window and window.items and window.items[actual] and window.items[actual].type == "checkbox" then
            if window.items[actual].actual == 1 then 
                window.items[actual].actual = 0
                triggerEvent("onClientCheckBoxChange", localPlayer, actual, false)
            else
                window.items[actual].actual = 1
                triggerEvent("onClientCheckBoxChange", localPlayer, actual, true)
            end
        end
	end
end

botoes = {
	arrow_d = down,
	arrow_u = up,
	arrow_l = left,
	arrow_r = right,
	enter = enter,
}

if not digitou then
function digitou (botao, estado)
	if estado then
		if botoes[botao] then
		botoes[botao]()
		end
	end
end
addEventHandler ("onClientKey", root, digitou)
end

function getCurrentNativePage()
	if isInfoboxShown == false then
    local currentpage = math.ceil(actual/window.scrollitems)
    return currentpage
	else
	local currentpage = math.ceil(actual/infobox.scrollitems)
    return currentpage
	end
end

function clearNativeUI()
    window.items = {}
    actual = 0
end

function removeNativeItem(id)
    table.remove(window.items, id)
end

removeNativeUI = function()
    removeEventHandler("onClientRender",getRootElement(),renderNative)
    window = {}
    window.items = {}
    actual = 0
    isNativeShown = false
end

--Switch

function addNativeSwitch(text, values, color)
    if type(color) == "string" then
        color = tocolor(getColorFromString(color))
    end
    color = color or tocolor(255, 255, 255)
    local table = {
        ["type"] = "switch",
        ["text"] = text,
        ["color"] = color,
        ["value"] = values,
        ["actual"] = 1,
    }
    window.items[#window.items+1] = table
end

function getSwitchText(id)
    assert(tonumber(id), "Bad argument @ getSwitchText [expected number at argument 1,  got "..type(id).." '"..id.."'']")
    local actualswitch = window.items[id].actual
    local actualswitch = window.items[id].value[tonumber(actualswitch)]
    return actualswitch
end

function setNativeSwitchSelection(id,selection)
    if not id or not selection then return end
    assert(tonumber(id),"Bad argument @ setNativeButtonIcon [expected number at argument 1,  got "..type(id).." '"..id.."'']")
    if window.items[id].type ~= "switch" then return end
    itemindex = 1
    for i,v in pairs(window.items[id].value) do
        if v == selection then
            print(i)
            itemindex = i
        end
    end
    window.items[id].actual = itemindex
end

--Checkbox
function addNativeCheckBox(text, color, check)
    if type(color) == "string" then
        color = tocolor(getColorFromString(color))
    end
    color = color or tocolor(255, 255, 255)
    local table = {
        ["type"] = "checkbox",
        ["color"] = color,
        ["text"] = text,
        ["actual"] = check
    }
    window.items[#window.items+1] = table
end

function nativeSetCheckBoxSelection(id, selection)
    if not id or not selection then return end
    assert(tonumber(id),"Bad argument @ nativeSetCheckBoxSelection [expected number at argument 1,  got "..type(id).." '"..id.."'']")
    if not selection then
        selection = 0
    else
        selection = 1
    end
    if window.items[id].type == "checkbox" then 
        window.items[id].actual = selection
    end
end

function nativeGetCheckBoxSelection(id)
    if not id then return end
    assert(tonumber(id),"Bad argument @ nativeSetCheckBoxSelection [expected number at argument 1,  got "..type(id).." '"..id.."'']")
    if window.items[id].type == "checkbox" then 
        if window.items[id].actual == 1 then 
            return true
        else
            return false
        end
    else
        return false
    end
end

--Button
function addNativeButton(text, color, icon, price)
    if icon then
        assert(icon ~= "box","Invalid icon type @ addNativeButton [got"..type(icon).." '"..icon.."'']")
    end
    if type(color) == "string" then
        color = tocolor(getColorFromString(color))
    end
    color = color or tocolor(255, 255, 255)
    local table = {
        ["type"] = "button",
        ["color"] = color,
        ["text"] = text,
        ["icon"] = icon or false,
		["price"] = price or false,
    }
	if not window.items then window.items = {} end
    window.items[#window.items+1] = table
end

function setNativeButtonIcon(id,icon)
    if not id or not icon then return end
    assert(tonumber(id),"Bad argument @ setNativeButtonIcon [expected number at argument 1,  got "..type(id).." '"..id.."'']")
    assert(icon ~= "box","Invalid icon type @ addNativeButton [got"..type(icon).." '"..icon.."'']")
    window.items[id].icon = icon
end

function setNativeButtonPrice(id,price)
    if not id or not price then return end
    assert(tonumber(id),"Bad argument @ setNativeButtonIcon [expected number at argument 1,  got "..type(id).." '"..id.."'']")
    assert(price ~= "box","Invalid icon type @ addNativeButton [got"..type(price).." '"..price.."'']")
    window.items[id].price = price
end

function removeNativeButtonIcon(id)
    if not id then return end
    assert(tonumber(id),"Bad argument @ setNativeButtonIcon [expected number at argument 1,  got "..type(id).." '"..id.."'']")
    window.items[id].icon = false
end

function getNativeButtons ()
return window.items
end

--Scale
local screenW, screenH = guiGetScreenSize( )
local baseX = 1920
if screenW < baseX then
    zoom = math.min(2, baseX/screenW)
end

function getZoom()
    local screenW, screenH = guiGetScreenSize(  )
    if screenW < 1920 then
        return math.min(2, 1920/screenW)
    else
        return 1.0
    end
end

function scaleScreen(x, y, w, h, alignX, alignY)
    assert(x, "Bad argument @ 'scaleScreen' [Execpted number at argument 1, got "..tostring(x).."]")
    assert(tonumber(x), "Bad argument @ 'scaleScreen' [The argument 1 must be a number!]")
    assert(y, "Bad argument @ 'scaleScreen' [Execpted number at argument 2, got "..tostring(y).."]")
    assert(tonumber(y), "Bad argument @ 'scaleScreen' [The argument 2 must be a number!]")
    assert(w, "Bad argument @ 'scaleScreen' [Execpted number at argument 3, got "..tostring(w).."]")
    assert(tonumber(w), "Bad argument @ 'scaleScreen' [The argument 3 must be a number!]")
    assert(h, "Bad argument @ 'scaleScreen' [Execpted number at argument 4, got "..tostring(h).."]")
    assert(tonumber(h), "Bad argument @ 'scaleScreen' [The argument 4 must be a number!]")
    alignX = alignX or "left"
    alignY = alignY or "top"
    w = w/zoom
    h = h/zoom
    assert( (string.lower(alignX) == "left" or string.lower(alignX) == "center" or string.lower(alignX) == "right") , "Bad argument 5 @ scaleScreen (invalid type alignment X)")
    assert( (string.lower(alignY) == "top" or string.lower(alignY) == "center" or string.lower(alignY) == "bottom") , "Bad argument 5 @ scaleScreen (invalid type alignment X)")

    -- assert(alignX, "Bad argument @ 'scaleScreen' [Execpted string at argument 5, got none]")
    -- assert(alignY, "Bad argument @ 'scaleScreen' [Execpted string at argument 5, got none]")
    if alignX == "left" then
        x = x/zoom
    elseif alignX == "center" then
        x = (screenW/2-w/2)-(x/zoom)
    elseif alignX == "right" then
        x = (screenW-w)-(x/zoom)
    end
    if alignY == "top" then
        y = y/zoom
    elseif alignY == "center" then
        y = (screenH/2-h/2)-(y/zoom)
    elseif alignY == "bottom" then
        y = (screenH-h)-(y/zoom)
    end
    return {x, y, w, h}
end

end
destroyNativeUI ()

function playNativeSound(s)
    sound = playSound("assets/sounds/"..s..".wav", false)
end

function sounds (id, value)
	if eventName == "onClientAcceptSwitch" then
	playNativeSound ("confirm")
	elseif eventName == "onClientChangeSwitch" then
	playNativeSound ("navigation")
	elseif eventName == "onClientAcceptButton" then
	playNativeSound ("confirm")
	elseif eventName == "onClientCheckBoxChange" then
	playNativeSound ("navigation")
	end
end
addEventHandler("onClientAcceptSwitch", getRootElement(), sounds)
addEventHandler("onClientChangeSwitch", getRootElement(), sounds)
addEventHandler("onClientAcceptButton", getRootElement(), sounds)
addEventHandler("onClientCheckBoxChange", getRootElement(), sounds)

--Box
function destroyNativeBox ()
	if renderNative2 then
	removeEventHandler("onClientRender", getRootElement(), renderNative2)
	end
--Main
infobox = {
    options={}
}

local sound
local actual = 1
isInfoboxShown = false

function createNativeBox(name, title, image, color, namecolor, titlecolor, align, counter, scrollitems, namealign)
	if isInfoboxShown then return false end
    if name == "" then
        assert(type(name) == string, "Bad argument @ createNativeUI [expected string at argument 1,  got "..type(name).." '"..name.."'']")
    end
    if title then
        assert(title and tostring(title), "Bad argument @ createNativeUI [expected string at argument 2,  got "..type(title).." '"..title.."'']")
    end
    if not image then
        assert(color, "[Native UI]No specified image and not specified color")
    end
    if image then
        assert(fileExists(image), "Bad argument @ createNativeUI [expected file at argument 3,  got "..type(color).." '"..color.."'']")
    end
    if color then
        assert(tonumber(color), "Bad argument @ createNativeUI [expected color at argument 4,  got "..type(color).." '"..color.."'']")
    end
    if align then
        assert(align == "left" or align == "right", "Invalid align type @ createNativeUI [expected 'left'/'right' at argument 7,  got"..type(align).." '"..align.."'']")
    end
    if namealign then
        assert(namealign == "left" or namealign == "center" or namealign == "right","Invalid menu-align type @ createNativeUI [expected 'left'/'center'/'right' at argument 11,  got"..type(align).." '"..align.."'']")
    end
    if not namealign then
        namealign = "center"
    end
    infobox = {}
    infobox.items={}
    zoom = getZoom()
    infobox.name = name
    infobox.title = title or "Native UI"
    local scale = scaleScreen(10, 10, 431, 107, align, "top")
    infobox.namepos = Vector2(unpack(scale, 1), unpack(scale, 2))
    infobox.namesize = Vector2(unpack(scale, 3), unpack(scale, 4))
    if namealign == "left" then
        pos = infobox.namepos["x"]+(15/zoom)
    elseif namealign == "center" then
        pos = infobox.namepos["x"]+(infobox.namesize["x"]/2)
    elseif namealign == "right" then
        pos = infobox.namepos["x"]+(infobox.namesize["x"]-(15/zoom))
    end
    infobox.namealign = namealign
    infobox.namepos2 = Vector2(pos, infobox.namepos["y"]+(infobox.namesize["y"]/1.75))
    local scale = scaleScreen(0, 0, 431, 37, "left", "top")
    infobox.titlepos = Vector2(infobox.namepos["x"], infobox.namepos["y"]-infobox.namesize["y"]/3)
    infobox.titlesize = Vector2(unpack(scale, 3), unpack(scale, 4))
    infobox.titlepos2 = Vector2(infobox.titlepos["x"]+(15/zoom), infobox.titlepos["y"]+(infobox.titlesize["y"]/2))
    infobox.titlepos3 = Vector2(infobox.titlepos["x"]+infobox.titlesize["x"]-(15/zoom), infobox.titlepos["y"]+(infobox.titlesize["y"]/2))
	local st = dxGetStatus()
		if st.VideoMemoryFreeForMTA <= 0 then
		infobox.namefont = "default"
		infobox.titlefont = "default-bold"
		else
		infobox.namefont = dxCreateFont("assets/fonts/font.ttf", 55/zoom) or "default"
		infobox.titlefont = dxCreateFont("assets/fonts/fonttitle.ttf", 18/zoom, false) or "default-bold"
		end
	infobox.image = image or false
    infobox.color = color or false
    infobox.namecolor = namecolor or tocolor(255, 255, 255)
    infobox.titlecolor = titlecolor or tocolor(255, 255, 255)
    infobox.counter = counter or false
    infobox.scroll = scroll or false
    if not scrollitems or scrollitems > 10 or scrollitems <= 1 then
        scrollitems = 10
    end
    local scale = scaleScreen(0,0,50,50)
    infobox.iconscale = Vector2(unpack(scale,3),unpack(scale,4))
    infobox.scrollitems = scrollitems
    --bindKeys()
    isInfoboxShown = true
    addEventHandler("onClientRender", getRootElement(), renderNative2)
	--addEventHandler("onClientKey", getRootElement(), UIkeypress)
	--Destruir
		if sourceResource ~= getThisResource() then
		local res = sourceResource or getThisResource ()
			addEventHandler ("onClientResourceStop", getResourceRootElement(res), function ()
			destroyNativeBox ()
			end)
		end
end

function renderNative2()
	if infobox and infobox.items then
		for i, v in pairs(infobox.items) do
			page = math.ceil(i/infobox.scrollitems)
			dxDrawText(getCurrentNativePage(), 0, 0, 0, 0)
			if i > infobox.scrollitems*(getCurrentNativePage()-1) and i <= infobox.scrollitems*getCurrentNativePage() then
				i=i-infobox.scrollitems*(getCurrentNativePage()-1)
				local multiplier = 255*(0.03*i)
					color = tocolor(0, 0, 0, 255-multiplier)
					textcolor = v.color
				local pos = Vector2(infobox.titlepos["x"], infobox.titlepos["y"]+infobox.titlesize["y"]+(infobox.titlesize["y"]*(i-1)))
				dxDrawRectangle(pos, infobox.titlesize, color)
				local pos = Vector2(infobox.titlepos["x"]+(15/zoom), infobox.titlepos["y"]+infobox.titlesize["y"]/2+(infobox.titlesize["y"]*(i)))
				dxDrawText(v.text, pos, nil, nil, textcolor, 1, infobox.titlefont or "default-bold", "left", "center")
			   
				if #infobox.items > infobox.scrollitems  then
					local pos = Vector2(infobox.titlepos["x"], infobox.titlepos["y"]+infobox.titlesize["y"]+(infobox.titlesize["y"]*(10)))
				   -- dxDrawRectangle(pos, infobox.titlesize, tocolor(0, 0, 0, 255*0.4))
					local pos = Vector2(infobox.titlepos["x"]+(infobox.titlesize["x"]/2), infobox.titlepos["y"]+infobox.titlesize["y"]/2+(infobox.titlesize["y"]*(11)))
					if actual == 1 then
						text = "⮟"
					elseif actual == #infobox.items then
						text = "⮝"
					else
						text = "⮝ \ ⮟"
					end
					dxDrawText(text, pos, nil, nil, tocolor(255, 255, 255), 1, infobox.titlefont or "default-bold", "center", "center")
				end
			end
		end
	else
	
removeEventHandler("onClientRender", getRootElement(), renderNative2)
	end
end
removeEventHandler("onClientRender", getRootElement(), renderNative2)

timerinfobox = {}
function addNativeBoxLine(text, color, icon, price)
    if icon then
        assert(icon ~= "box","Invalid icon type @ addNativeButton [got"..type(icon).." '"..icon.."'']")
    end
    if type(color) == "string" then
        color = tocolor(getColorFromString(color))
    end
    color = color or tocolor(255, 255, 255)
    local table = {
        ["type"] = "button",
        ["color"] = color,
        ["text"] = text,
        ["icon"] = icon or false,
		["price"] = price or false,
    }
    infobox.items[#infobox.items+1] = table
		if isTimer (timerinfobox) then killTimer (timerinfobox) end
	timerinfobox = setTimer (function ()
	destroyNativeBox ()
	end, 1000*#infobox.items+1, 1)
end

removeNativeBox = function()
    removeEventHandler("onClientRender",getRootElement(),renderNative)
    window = {}
    window.items = {}
    actual = 0
    isNativeShown = false
end

end
destroyNativeBox ()

--Informações
	function createHeadsupMessage (tab, alg)
	playNativeSound ("headsup")
	destroyNativeBox ()
	createNativeBox("a", "test", false, tocolor(0,0,0), tocolor(255,255,255), tocolor(255, 255, 255), alg or "left", false ,10,"left")
		for i=1, #tab do
		addNativeBoxLine (tab[i], tocolor (255,255,255), false)
		end
	end
	addEvent ("createHeadsupMessage", true)
	addEventHandler ("createHeadsupMessage", getRootElement(), createHeadsupMessage)

end

--Server
if not localPlayer then

	function createHeadsupMessage (tab)
	triggerClientEvent (source, "createHeadsupMessage", source, tab)
	end
	addEvent ("createHeadsupMessage", true)
	addEventHandler ("createHeadsupMessage", getRootElement(), createHeadsupMessage)

end	

end
addEventHandler ("onClientResourceStart", resourceRoot, core)
addEventHandler ("onResourceStart", resourceRoot, core)
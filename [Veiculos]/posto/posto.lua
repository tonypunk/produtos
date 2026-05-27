

--Eventos
addEvent ("PUNKPostoAtualizarCustoms", true)

--Shared
aquaticos = {}
aereos = {}

local PC = getResourceFromName("PUNKInformativo")
if PC and getResourceState(PC) == "running" then	
	informativo = true
end

function infoLigar (r)
	if r == getResourceFromName("PUNKInformativo") then
		if eventName == "onResourceStart" or eventName == "onClientResourceStart" then
		informativo = true
		else
		informativo = false
		end
	end
end
addEventHandler ("onClientResourceStart", getRootElement(), infoLigar)
addEventHandler ("onClientResourceStop", getRootElement(), infoLigar)
addEventHandler ("onResourceStart", getRootElement(), infoLigar)
addEventHandler ("onResourceStop", getRootElement(), infoLigar)

function table.contain (tabela, item)
	for index, value in ipairs(tabela) do
		if value == item then
		return true
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

function table.merge(t1, t2)
    for k,v in pairs(t2) do
        if type(v) == "table" then
            if type(t1[k] or false) == "table" then
                table.merge(t1[k] or {}, t2[k] or {})
            else
                t1[k] = v
            end
        else
            t1[k] = v
        end
    end
    return t1
end

function findRotation(x1,y1,x2,y2) 
  local t = -math.deg(math.atan2(x2-x1,y2-y1)) 
  if t < 0 then t = t + 360 end 
  return t 
end

function getOffsetFromXYZ( mat, vec )
    -- make sure our matrix is setup correctly 'cos MTA used to set all of these to 1.
    mat[1][4] = 0
    mat[2][4] = 0
    mat[3][4] = 0
    mat[4][4] = 1
    mat = matrix.invert( mat )
    local offX = vec[1] * mat[1][1] + vec[2] * mat[2][1] + vec[3] * mat[3][1] + mat[4][1]
    local offY = vec[1] * mat[1][2] + vec[2] * mat[2][2] + vec[3] * mat[3][2] + mat[4][2]
    local offZ = vec[1] * mat[1][3] + vec[2] * mat[2][3] + vec[3] * mat[3][3] + mat[4][3]
    return {offX, offY, offZ}
end

function getNearestElement(element, elementType, distance)
local lastMinDis = distance-0.0001
local nearestElement = false
local px,py,pz = getElementPosition(element)
local pInt = getElementInterior(element)
local pDim = getElementDimension(element)
	for _,e in pairs(getElementsByType(elementType)) do
		local eInt,eDim = getElementInterior(e),getElementDimension(e)
		if eInt == pInt and eDim == pDim and e ~= element then
			local ex,ey,ez = getElementPosition(e)
			local dis = getDistanceBetweenPoints3D(px,py,pz,ex,ey,ez)
			if dis < distance then
				if dis < lastMinDis then
					lastMinDis = dis
					nearestElement = e
				end
			end
		end
	end
	return nearestElement
end

function getPositionFromElementOffset(element,offX,offY,offZ)
		local m = getElementMatrix ( element )  -- Get the matrix
		local x = offX * m[1][1] + offY * m[2][1] + offZ * m[3][1] + m[4][1]  -- Apply transform
		local y = offX * m[1][2] + offY * m[2][2] + offZ * m[3][2] + m[4][2]
		local z = offX * m[1][3] + offY * m[2][3] + offZ * m[3][3] + m[4][3]
		return x, y, z                               -- Return the transformed point
		end
		
function isElementMoving (theElement )
   if isElement ( theElement ) then                                   -- First check if the given argument is an element
	  return Vector3( getElementVelocity( theElement ) ).length ~= 0
   end
   return false
end

function table.toString(tab)
	if type(tab) ~= 'table' then return false end
local str = '{'
	for k,v in pairs(tab) do
		local kType = (type(k) == 'string') and "'%s'" or (type(k) == 'number') and "%s"
		if type(v) == 'string' then
			str = string.format(str.."[%s]='%s',",string.format(kType,k),v)
		elseif type(v) == 'number' then
			str = string.format(str.."[%s]=%s,",string.format(kType,k),v)
		elseif type(v) == 'table' then
			str = string.format(str.."[%s]=%s,",string.format(kType,k),table.toString(v))
		end
	end
return (str == '{' and '{}' or string.sub(str,1,-2)..'}')
end
		
function table.fromString(str)
	if type(str) ~= 'string' then return false end
return (loadstring)('return '..str)()
end

function teaEncodeBinary( data, key ) 
return teaEncode( base64Encode( data ), key ) 
end 
		
function teaDecodeBinary( data, key ) 
	return base64Decode( teaDecode( data, key ) ) 
end 

function getPlayerFromPartialName(name)
		local name = name and name:gsub("#%x%x%x%x%x%x", ""):lower() or nil
		if name then
			for _, player in ipairs(getElementsByType("player")) do
				local name_ = getPlayerName(player):gsub("#%x%x%x%x%x%x", ""):lower()
				if name_:find(name, 1, true) then
					return player
				end
			end
		end
	end

local vehicleIds = {400, 401, 402, 403, 404, 405, 407, 408, 409, 410, 411, 412, 413, 414, 415,
	416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 433,
	434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451,
	452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469,
	470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487,
	488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505,
	506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523,
	524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541,
	542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559,
	560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577,
	578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595,
	596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611
}

--Cliente
if isElement(localPlayer) then


function clienteRecebeu ()
	function notificacao (a,b,c,d,e,f,g,h,i,j,l,m,n,o,p)
		if informativo == true then
		exports.PUNKInformativo:notificacao (a,b,c,d,e,f,g,h,i,j,l,m,n,o,p)
		else
		local r,g,b = 255,255,255	
			if p == "sucesso" then
			r,g,b = 0,255,0
			elseif p == "falha" then
			r,b,g = 255, 0, 0
			elseif p == "coletavel" then
			r,g,b = 255,255,0
			end
		outputChatBox (c, r,g,b)
		end
	end

--Visual
local scX,scY = GuiElement.getScreenSize()
local tamanhoX = 1
local tamanhoY = 1
function getScale()
	if ( scX <= 320 ) then
		tamanhoX = 0.5
    elseif ( scX <= 640 ) then
		tamanhoX = 1
	elseif ( scX <= 720 ) then
		tamanhoX = 1.125
	elseif ( scX <= 800 ) then
		tamanhoX = 1.25
    elseif ( scX <= 1024 ) then
        tamanhoX = 1.6
	elseif ( scX <= 1152 ) then
		tamanhoX = 1.8
    elseif ( scX <= 1280 ) then
        tamanhoX = 2
    elseif ( scX <= 1366 ) then
        tamanhoX = 2.134375
	 elseif ( scX <= 1440 ) then
        tamanhoX = 2.25
	elseif ( scX <= 1600 ) then
		tamanhoX = 2.5
	elseif ( scX <= 1680 ) then
		tamanhoX = 2.625
    elseif ( scX <= 1920 ) then
        tamanhoX = 3
	elseif (scX <= 2560) then
		tamanhoX = 4
	elseif (scX <= 3840) then
		tamanhoX = 6
    end
	
	if ( scY <= 240 ) then
		tamanhoY = 0.5
	elseif ( scY <= 480 ) then
		tamanhoY = 1
	elseif ( scY <= 576 ) then
		tamanhoY = 1.2
	elseif ( scY <= 600 ) then
		tamanhoY = 1.25
    elseif ( scY <= 720 ) then
        tamanhoY = 1.5
	elseif ( scY <= 768 ) then
		tamanhoY = 1.6
    elseif ( scY <= 800 ) then
        tamanhoY = 1.666666666666667
    elseif ( scY <= 900 ) then
        tamanhoY = 1.875
	elseif ( scY <= 960 ) then
		tamanhoY = 2
	elseif ( scY <= 1024 ) then
		tamanhoY = 2.133333333333333
    elseif ( scY <= 1050 ) then
        tamanhoY = 2.1875
	elseif (scY <= 1080) then
		tamanhoY = 2.25
	elseif (scY <= 1440) then
		tamanhoY = 3
	elseif (scY <= 2160) then
		tamanhoY = 4.5
    end
end
getScale()
local sx,sy = GuiElement.getScreenSize()
local px,py = sx,sy
local scX,scY =  (sx/px), (sy/py) 

--Shader

--texto temporizado
renderTxIn = {}
renderTxOut = {}
theDuration = {}
function fadeInText (outline, text, left, top, right, bottom, r, g, b, scale, font, alignX, alignY, clip, wordBreak, postGUI, duracao, theType, thePeriod, theAmplitude, theOvershoot)
    if renderTxIn[text] then removeEventHandler ("onClientRender", getRootElement(), renderTxIn[text]) end
	if renderTxOut[text] then removeEventHandler ("onClientRender", getRootElement(), renderTxOut[text]) end
	local start = getTickCount()
	theDuration[text] = duracao
    renderTxIn[text] = function ()
        local now = getTickCount()
        local endTime = start + duracao
        local elapsedTime = now - start
        local duration = endTime - start
        local progress = elapsedTime / duration
        local a = interpolateBetween (0, 0, 0, 255, 0, 0, progress, theType, thePeriod, theAmplitude, theOvershoot)
        dxDrawBorderedText (outline, text, left, top, right, bottom, tocolor (r, g, b, a), scale, font, alignX, alignY, clip, wordBreak,postGUI)
    end
	if renderTxIn[text] then
		addEventHandler ("onClientRender", getRootElement(), renderTxIn[text])
		setTimer (function()
			removeEventHandler ("onClientRender", getRootElement(), renderTxIn[text])
		end, theDuration[text]+100, 1)
	end
end

function fadeOutText (outline, text, left, top, right, bottom, r, g, b, scale, font, alignX, alignY, clip, wordBreak, postGUI, duracao, theType, thePeriod, theAmplitude, theOvershoot)
	if renderTxOut[text] then removeEventHandler ("onClientRender", getRootElement(), renderTxOut[text]) end
	if renderTxIn[text] then removeEventHandler ("onClientRender", getRootElement(), renderTxIn[text]) end
   local start = getTickCount()
	theDuration[text] = duracao
    renderTxOut[text] = function ()
        local now = getTickCount()
        local endTime = start + duracao
        local elapsedTime = now - start
        local duration = endTime - start
        local progress = elapsedTime / duration
        local a = interpolateBetween (255, 0, 0, 0, 0, 0, progress, theType, thePeriod, theAmplitude, theOvershoot)
         dxDrawBorderedText (outline, text, left, top, right, bottom, tocolor (r, g, b, a), scale, font, alignX, alignY, clip, wordBreak,postGUI)
    end
	if renderTxOut[text] then
		addEventHandler ("onClientRender", getRootElement(), renderTxOut[text])
		setTimer (function()
			removeEventHandler ("onClientRender", getRootElement(), renderTxOut[text])
		end, theDuration[text]+100, 1)
	end
end
--

--texto bordeado
function dxDrawBorderedText (outline, text, left, top, right, bottom, color, scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
   -- if not outline then outline = 1 end
	if font == "default-bold" then
	outline = outline*0.5
		for oX = (outline * -1), outline do
			for oY = (outline * -1), outline do
				dxDrawText (text, left + oX, top + oY, right + (outline*5), bottom + oY + (outline*5), tocolor(0, 0, 0, 255), scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
			end
		end
    dxDrawText (text, left, top, right, bottom, color, scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
	else
	for oX = (outline * -1), outline do
        for oY = (outline * -1), outline do
            dxDrawText (text, left + oX, top + oY, right, bottom + oY, tocolor(0, 0, 0, 255), scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
        end
    end
    dxDrawText (text, left, top, right, bottom, color, scale, font, alignX, alignY, clip, wordBreak, postGUI, colorCoded, subPixelPositioning, fRotation, fRotationCenterX, fRotationCenterY)
	end
end

function round(number, digits)
  	local mult = 10^(digits or 0)
  	return math.floor(number * mult + 0.5) / mult
end

somInfo = {}
function infoSom (grupo, id1, id2, x,y,z, loop, volume)
	if grupo then
		if not loop then
			for i=1, #somInfo do
			local som = somInfo[i]
				if isElement(som) then
				local px,py,pz = getElementPosition (som)
					if getDistanceBetweenPoints3D (x,y,z, px,py,pz) <= 1 then
					stopSound (som)
					end
				end
			table.remove (somInfo, i)
			end
		return
		end
	local som = playSFX3D (grupo, id1, id2, x,y,z, loop)
	table.insert (somInfo, som)
		if volume then
		setSoundVolume (som, volume)
		end
	else
		if somInfo and #somInfo > 0 then
			for i=1, #somInfo do
			local som = somInfo[i]
				if isElement(som) then
				stopSound (som)
				end
			table.remove (somInfo, i)
			end
		end
	end
end
addEvent ("PUNKPostoSom", true)
addEventHandler ("PUNKPostoSom", getRootElement(), infoSom)

function teaDecodeBinary( data, key ) 
	return base64Decode( teaDecode( data, key ) ) 
end 

nomes = {
		["aquatico"] = "aquatico",
		["aereo"] = "aereo",
		["massa"] = "mass",
		["curvas"] = "turnMass",
		["aderência"] = "dragCoeff",
		["centro"] = "centerOfMass",
		["submerssão"] = "percentSubmerged",
		["tração"] = "tractionMultiplier",
		["perda de tração"] =  "tractionLoss",
		["relação de tração"] = "tractionBias",
		["marchas"] = "numberOfGears",
		["velocidade"] = "maxVelocity",
		["aceleração"] = "engineAcceleration",
		["inercia"] = "engineInertia",
		["direção"] = "driveType",
		["alimentacao"] = "engineType",
		["desaceleração"] = "brakeDeceleration",
		["relação dos freios"] = "brakeBias",
		["ABS"] = "ABS",
		["limite direcional"] = "steeringLock",
		["suspensão"] = "suspensionForceLevel",
		["lubrificação"] = "suspensionDamping",
		["lubrificação alta"] = "suspensionHighSpeedDamping",
		["suspensão superior"] = "suspensionUpperLimit",
		["suspensão inferior"] = "suspensionLowerLimit",
		["relação da suspensão"] = "suspensionFrontRearBias",
		["embicagem"] = "suspensionAntiDiveMultiplier",
		["assentos"] = "seatOffsetDistance",
		["colisão"] = "collisionDamageMultiplier",
		["valor"] = "monetary",
		["marcadores do modelo"] = "modelFlags",
		["marcadores do manuseio"] = "handlingFlags",
		["faróis frontais"] = "headLight",
		["faróis traseiros"] = "tailLight",
		["animações"] = "animGroup",
	}

function getVehicleHandlingProperty ( element, property )
    if isElement ( element ) and getElementType ( element ) == "vehicle" and type ( property ) == "string" then -- Make sure there's a valid vehicle and a property string
        local handlingTable = getVehicleHandling ( element ) -- Get the handling as table and save as handlingTable
        local value = handlingTable[property] -- Get the value from the table
        
        if value then -- If there's a value (valid property)
            return value -- Return it
        end
    end
    
    return false -- Not an element, not a vehicle or no valid property string. Return failure
end

--Postos
veiculosAbastecendo = {}
if postos then
--shader

branco = dxCreateTexture (2, 2)
local pixels = dxGetTexturePixels (branco)
    for i=0,1 do
        for j=0,1 do
        dxSetPixelColor (pixels, j, i, 100,100,100, 60)
        end
    end
dxSetTexturePixels (branco, pixels)

shaderBranco =  dxCreateShader(dadosShader, 1, 0, false, "object")
dxSetShaderValue(shaderBranco, "tex", branco)

function aplicarCor (objeto, shader)
local n = engineGetModelTextureNames( getElementModel(objeto) )
	if n then
		for i=1,#n do
			if n[i] then
				if not shader then
				engineRemoveShaderFromWorldTexture(shaderBranco, n[i], objeto)
				else
				engineApplyShaderToWorldTexture(shader, n[i], objeto)	
				end
			end
		end
	end
end

function postoHit (elem)
				if elem == localPlayer then
				removeEventHandler ("onClientColShapeHit", source, postoHit)
				local posto = source
					if isTimer (tempoPosto) == true then return end
					tempoPosto = setTimer (function ()
					addEventHandler ("onClientColShapeHit", posto, postoHit)
					end, 15000,1)
				buscandoBombas(source)
				local gasolina, alcool, diesel, eletrico, nome = buscarPosto (localPlayer)
				local veiculo = localPlayer:getOccupiedVehicle()
				notificacao (localPlayer, nil, nome, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
			
					if isElement (veiculo) then
						if (getVehicleType (veiculo) == "BMX") or (getVehicleType (veiculo) == "Train") then return end
						if mAlimentacao == "alcool" then
						notificacao (localPlayer, nil, "Alcool: $"..alcool, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
						elseif mAlimentacao == "gasolina" then
						notificacao (localPlayer, nil, "Gasolina: $"..gasolina, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
						elseif mAlimentacao == "eletronica" then
						notificacao (localPlayer, nil, "Eletrico: $"..eletrico, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
						elseif mAlimentacao == "diesel" then
						notificacao (localPlayer, nil, "Diesel: $"..diesel, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
						end
					else
					notificacao (localPlayer, nil, "Alcool: $"..alcool, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
					notificacao (localPlayer, nil, "Gasolina: $"..gasolina, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
					notificacao (localPlayer, nil, "Diesel: $"..diesel, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
					notificacao (localPlayer, nil, "Eletrico: $"..eletrico, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
					end
					
					
					
				end
			end
		
			function postoLeave (elem)
				if elem == localPlayer then
				local posto = source
				removeEventHandler ("onClientColShapeLeave", source, postoLeave)
					if isTimer (tempoPosto) then killTimer (tempoPosto) end
					tempoPosto = setTimer (function ()
						if isElementWithinColShape (localPlayer, posto) == false then
						buscandoBombas ()
						end
					end, 5000, 1)
				end
			end

function postoEntrarSair (posto)

local elemento = source
	if elemento == localPlayer then
		if isElement(posto) then
			if isTimer (tempoPosto) == true then return end
			tempoPosto = setTimer (function ()
			end, 15000,1)
		buscandoBombas(posto)
		local veiculo = localPlayer:getOccupiedVehicle()
		local gasolina, alcool, diesel, eletrico, nome = buscarPosto (localPlayer)
		notificacao (localPlayer, nil, nome, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
			if isElement (veiculo) then
				if (getVehicleType (veiculo) == "BMX") or (getVehicleType (veiculo) == "Train") then return end
				if mAlimentacao == "alcool" then
				notificacao (localPlayer, nil, "Alcool: $"..alcool, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
				elseif mAlimentacao == "gasolina" then
				notificacao (localPlayer, nil, "Gasolina: $"..gasolina, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
				elseif mAlimentacao == "eletronica" then
				--outputChatBoxBox ("Eletrico: $"..eletrico)
				notificacao (localPlayer, nil, "Eletrico: $"..eletrico, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
				elseif mAlimentacao == "diesel" then
				notificacao (localPlayer, nil, "Diesel: $"..diesel, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
				end
			else
			notificacao (localPlayer, nil, "Alcool: $"..alcool, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
			notificacao (localPlayer, nil, "Gasolina: $"..gasolina, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
			notificacao (localPlayer, nil, "Diesel: $"..diesel, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
			notificacao (localPlayer, nil, "Eletrico: $"..eletrico, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
			end
		addEventHandler ("onClientColShapeHit", posto, postoHit)
		addEventHandler ("onClientColShapeLeave", posto, postoLeave)
		end
		--notificacao (jogador, nome or nil, "Gasolina: $"..gasolina.." Alcool: $"..alcool.." Diesel: $"..diesel, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 5, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")								
	end
end
addEvent ("PUNKPostoPostoEntrarSair", true)
addEventHandler ("PUNKPostoPostoEntrarSair", getRootElement(), postoEntrarSair)

bombas = {}
function buscandoBombas (posto)

	if not posto then
		if bombas and #bombas > 0 then
			for j=1, #bombas do
				if isElement (bombas[j]) then
				removeEventHandler ("onClientColShapeHit", bombas[j], bombaChegou)
				removeEventHandler ("onClientColShapeLeave", bombas[j], bombaChegou)
				destroyElement (bombas[j])
				end
			end
		bombas = {}
		end
	else
		if isElement (posto) then
		bx, by,bz = getElementPosition (posto)
		else
		bx,by,bz = posto[1], posto[2], posto[3]
		end
	local bz = bz
		for i=1, 360 do
		bx2 = bx + ((math.cos(math.rad(i + 90))) * 90) 
		by2 = by + ((math.sin(math.rad(i + 90))) * 90) 
		local hit, bx, by, bz, elementHit, nx,ny, nz, material, iluminacao, parte, modelo, px,py,pz, ry,ry,rz, lodID = processLineOfSight (bx,by,bz, bx2, by2, bz, true, false, false, true, true, false, false, false, nil, true )
			if hit == true then
				if elementHit and postos.bombasID[getElementModel (elementHit)] then
				estado = nil
					for k=1, #postos.bombasID do
						if modelo == postos.bombasID[k] then
						haBomba = nil
							if bombas and #bombas > 0 then
								for j=1, #bombas do
									if isElement (bombas[j]) then
									local ax,ay, az = getElementPosition (bombas[j])
										if ax == px and ay == py then
										haBomba = true
										--removeEventHandler ("onClientColShapeHit", bombas[j], bombaChegou)
										--removeEventHandler ("onClientColShapeLeave", bombas[j], bombaChegou)
										--destroyElement (bombas[j])
										--table.remove (bombas, j)
										end
									end
								end
							end
							if haBomba ~= true then
								if modelo == 1676 or modelo == 3465 then
								pz = pz - 2
								end
								if modelo == 1244 then
								pz = pz - 1
								end
							local col = createColTube (px,py,pz, 5, 2)
							table.insert (bombas, col)
							addEventHandler ("onClientColShapeHit", col, bombaChegou)
							addEventHandler ("onClientColShapeLeave", col, bombaChegou)
								if isTimer (tempoCount) then killTimer (tempoCount) end
								
								local vehs = getElementsWithinRange (px,py,pz, 100, "vehicle")
								for m=1, #vehs do
								local x,y,z = getElementPosition (vehs[m])
								local dist = getDistanceBetweenPoints3D (px,py,pz, x,y,z)
									if dist < 5 then
									--if isElementWithinColShape (vehs[m], col) then
									bombaChegou (vehs[m],col)
									end
								end
								
							end
						break
						end
					end
					haBomba = nil
					--outputChatBox (#bombas)
					--setTimer (function ()
					
					--end, 3000, 1)
				end
				if modelo then
				estado = nil
					for k=1, #postos.bombasID do
						if modelo == postos.bombasID[k] then
						haBomba = nil
							if bombas and #bombas > 0 then
								for j=1, #bombas do
									if isElement (bombas[j]) then
									local ax,ay, az = getElementPosition (bombas[j])
										if ax == px and ay == py then
										haBomba = true
										--removeEventHandler ("onClientColShapeHit", bombas[j], bombaChegou)
										--removeEventHandler ("onClientColShapeLeave", bombas[j], bombaChegou)
										--destroyElement (bombas[j])
										--table.remove (bombas, j)
										end
									end
								end
							end
							if haBomba ~= true then
								if modelo == 1676 or modelo == 3465 then
								pz = pz - 2
								end
								if modelo == 1244 then
								pz = pz - 1
								end
							local col = createColTube (px,py,pz, 5, 2)
							table.insert (bombas, col)
							addEventHandler ("onClientColShapeHit", col, bombaChegou)
							addEventHandler ("onClientColShapeLeave", col, bombaChegou)
								if isTimer (tempoCount) then killTimer (tempoCount) end
								
								local vehs = getElementsWithinRange (px,py,pz, 100, "vehicle")
								for m=1, #vehs do
								local x,y,z = getElementPosition (vehs[m])
								local dist = getDistanceBetweenPoints3D (px,py,pz, x,y,z)
									if dist < 5 then
									--if isElementWithinColShape (vehs[m], col) then
									bombaChegou (vehs[m],col)
									end
								end
								
							end
						break
						end
					end
					haBomba = nil
					--outputChatBox (#bombas)
					--setTimer (function ()
					
					--end, 3000, 1)
				end
			end
		bx,by,bz, bx2, by2 = nil,nil,nil,nil,nil
		end
	end
end

function buscarInicio()
	for i=1, #postos do
	local posto = postos[i]
	local posicao = Vector3 (posto.posicao)
	local tamanho = posto.tamanho
	local x,y,z = getElementPosition (localPlayer)
		if getDistanceBetweenPoints3D (x,y,z, Vector3 (posicao)) <= tamanho then
		buscandoBombas ({x,y,z})
		end
	end
end

setTimer (function ()
buscarInicio()
end, 1000, 1)

veiculosBomba = {}
jogadoresBomba = {}
markerGeral = {}
colGeral = {}
function bombaChegou (elemento, marcador)
	if isElement (elemento) and getElementType (elemento) == "vehicle" then
	local veiculo = elemento
		if (getVehicleType (veiculo) == "BMX") or (getVehicleType (veiculo) == "Train") then return end
		if not marcador then marcador = source end
		if not veiculosBomba[marcador] then veiculosBomba[marcador] = {} end
		if abastecendo == true then return end
		if not eventName or eventName == "onClientColShapeHit" then
			if isElement (colGeral[elemento]) == false then
			local x,y,z = getVehicleModelDummyPosition ( getElementModel (elemento), "gas_cap" )
			--local x,y,z = getPositionFromElementOffset (elemento, x,y,z)
				if not markerGeral[elemento] then
				local marker = createMarker (x,y,z, "arrow", 0.5, 0,0,255, 255)
				markerGeral[elemento] = marker
				end
			local tamanho = 1
				if getVehicleType (elemento) == "Bike" or getVehicleType (elemento) == "Quad" then
				tamanho = 2
				end
			local col = createColSphere (x,y,z, tamanho)
			tamanho = nil
			colGeral[elemento] = col
			local a = colGeral[elemento]
			colGeral[a] = elemento
			attachElements (markerGeral[elemento], elemento, x,y,z+1)
			attachElements(col, elemento, x,y,z)
			table.insert (veiculosBomba[marcador], elemento)
			addEventHandler ("onClientColShapeHit", col, tanqueChegou)
			addEventHandler ("onClientColShapeLeave", col, tanqueChegou)
			addEventHandler ("onClientVehicleExit", elemento, tanqueChegou)
			--addEventHandler ("onClientVehicleStartEnter", elemento, tanqueChegou)
			
					if renderAdd ~= true then
					--if hudCar ~= true and renderMangueira ~= true and chegou ~= true then
					renderAdd = true
					addEventHandler ("onClientRender", root, renderMangueira)
					end
				hudCar = true
				
			--veiculoCombustivel = 0
			triggerServerEvent ("PUNKPostoSolicitarCombustivel", localPlayer, elemento)
				if isElementWithinColShape (localPlayer, col) then
				--triggerEvent ("PUNKPostoTanqueChegou", col, elemento)
				tanqueChegou2 (localPlayer, col)
				end
				if tanqueChegar ~= true then
					--tanqueChegou (jogador)
					--end)
				tanqueChegar = true
				end
			end
		--elseif getElementType (elemento) == "player" and isPedInVehicle (elemento) == false then
		--notificacao (elem, nil, "Pressione '"..botao.."' para abastecer", "default-bold", 12, "esquerda", "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")			
			
		--end
		else
			--if getElementType (elemento) == "vehicle" then
			if table.contain (veiculosAbastecendo, elemento) then triggerServerEvent ("PUNKPostoEnviarCombustivel", localPlayer, elemento, veiculoCombustivel, distanciaPercorrida) end
			estado = nil
				for i=1, #bombas do
					if isElement(bombas[i]) then
						if isElementWithinColShape (elemento, bombas[i]) == true then
						estado = true
						break
						end
					else
					table.remove (bombas, i)
					end
				end
				if not estado then
					removeEventHandler ("onClientColShapeHit", elemento, tanqueChegou)
					removeEventHandler ("onClientColShapeLeave", elemento, tanqueChegou)
					removeEventHandler ("onClientVehicleExit", elemento, tanqueChegou)
					--removeEventHandler ("onClientVehicleStartEnter", elemento, tanqueChegou)
							if isPedInVehicle (localPlayer) == false then
							hudCar = false
								if hudCar ~= true and renderMangueira ~= true and chegou ~= true then
								renderAdd = nil
								removeEventHandler ("onClientRender", root, renderMangueira)
								end
							end
					if tanqueChegar == true then
					tanqueChegar = nil
					table.removeValue (veiculosBomba[marcador], elemento)
					end
					local a = colGeral[elemento]
					local b = colGeral[a]
					if markerGeral[b] then
					destroyElement (markerGeral[b])
					markerGeral[b] = nil
					end
					if isElement (colGeral[elemento]) then
					destroyElement (colGeral[elemento])
					end
				end
			--end
		end
	end
end

function tanqueChegou (elem)
	if getElementType (elem) == "player" and isPedInVehicle (elem) then return end
	if abastecendo == true then return end
	if getElementType (elem) == "player" and elem == localPlayer then
		if eventName == "onClientColShapeHit" or eventName == "onClientVehicleExit" then
			if eventName == "onClientVehicleExit" and isElementWithinColShape (elem, colGeral[source]) == false then return end
		local keys = getBoundKeys (comandos.abastecer)
			if keys then
			botao = keys
				for keyName, state in pairs(keys) do
				botao = keyName
				break
				end
			end
		notificacao (elem, nil, "Pressione '"..botao.."' para abastecer", "default-bold", 12, "esquerda", "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")			
		botao = nil
			if onTanque ~= true then
					if renderAdd ~= true then
					--if hudCar ~= true and renderMangueira ~= true and chegou ~= true then
					renderAdd = true
					addEventHandler ("onClientRender", root, renderMangueira)
					end
				hudCar = true
				--addEventHandler ("onClientRender", root, renderizarHud)
			onTanque = true
			end
			local a = colGeral[source]
			if getElementType (source) == "vehicle" then bombaVeiculo = colGeral[a] else bombaVeiculo = colGeral[source] end
			if isElement (bombaVeiculo) then
			triggerServerEvent ("PUNKPostoSolicitarCombustivel", elem, bombaVeiculo)
			end
		elseif eventName == "onClientColShapeLeave" or eventName == "onClientVehicleStartEnter" then
			hudCar = false
				if hudCar ~= true and renderMangueira ~= true and chegou ~= true then
				renderAdd = nil
				removeEventHandler ("onClientRender", root, renderMangueira)
				end
			--removeEventHandler ("onClientRender", root, renderizarHud)
			
			if abastecendo == true then
			abastecerDigitou()
			end
			if isTimer (temporizadorCombustivel) then killTimer (temporizadorCombustivel) end
		onTanque = false
		bombaVeiculo = nil
		end
	end
end

function tanqueChegou2 (elem, col)
	if getElementType (elem) == "player" and isPedInVehicle (elem) then return end
	if abastecendo == true then return end
	if getElementType (elem) == "player" and elem == localPlayer then
		if eventName == "onClientColShapeHit" or eventName == "onClientVehicleExit" then
			if eventName == "onClientVehicleExit" and isElementWithinColShape (elem, colGeral[col]) == false then return end
		local keys = getBoundKeys ("abastecer")
			if keys then
			botao = keys
				for keyName, state in pairs(keys) do
				botao = keyName
				--break
				end
			end
		notificacao (elem, nil, "Pressione '"..botao.."' para abastecer", "default-bold", 12, "esquerda", "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "sucesso")			
		botao = nil
			if onTanque ~= true then
				if renderAdd ~= true then
				--if hudCar ~= true and renderMangueira ~= true and chegou ~= true then
				renderAdd = true
				addEventHandler ("onClientRender", root, renderMangueira)
				end
			hudCar = true
			--addEventHandler ("onClientRender", root, hudCar)
			onTanque = true
			end
			bombaVeiculo = colGeral[col]
			if isElement (bombaVeiculo) then
			triggerServerEvent ("PUNKPostoSolicitarCombustivel", elem, bombaVeiculo)
			end
		elseif eventName == "onClientColShapeLeave" or eventName == "onClientVehicleEnter" then
		hudCar = false
			if hudCar ~= true and renderMangueira ~= true and chegou ~= true then
			renderAdd = nil
			removeEventHandler ("onClientRender", root, renderMangueira)
			end
		--removeEventHandler ("onClientRender", root, hudCar)
			if abastecendo == true then
			abastecerDigitou()
			end
			if isTimer (temporizadorCombustivel) then killTimer (temporizadorCombustivel) end
		onTanque = false
		bombaVeiculo = nil
		end
	end
end

function abastecerDigitou (a)
		if a == true then
			if isChatBoxInputActive() then return end
			if isCursorShowing() then return end
		end
	if onTanque == true and isElement (bombaVeiculo) then
		if not abastecendo then abastecendo = false end
		abastecendo = not abastecendo
		if abastecendo == true then
		table.insert (veiculosAbastecendo, bombaVeiculo)
		else
		table.removeValue (veiculosAbastecendo, bombaVeiculo)
		triggerServerEvent ("PUNKPostoEnviarCombustivel", localPlayer, bombaVeiculo, veiculoCombustivel, distanciaPercorrida)
		end
		if colGeral[bombaVeiculo] and isElement (colGeral[bombaVeiculo]) and isElementWithinColShape (localPlayer, colGeral[bombaVeiculo]) then
		triggerServerEvent ("PUNKPostoAbastecer", localPlayer, abastecendo, bombaVeiculo, getElementPosition (colGeral[bombaVeiculo]))
		end
	end
end
addCommandHandler (comandos.abastecer, abastecerDigitou, false )
bindKey (controles.abastecer, "down", comandos.abastecer)

function abastecerMorreu ()
local jogador = source
	if jogador == localPlayer then
		if abastecendo == true then
		abastecerDigitou()
		end
	end
end
addEventHandler ("onClientPlayerWasted", getRootElement(), abastecerMorreu)

	function renderMangueira ()
		if mangueirasRender and #mangueirasRender > 0 then
			for i=1, #mangueirasRender do			
				if isElement (mangueirasRender[i]) then
				--
				local x,y,z = buscarBombaMangueira (mangueirasRender[i]) -- mangueira
				local px,py,pz =  getElementPosition (mangueirasRender[i]) -- bomba
				local rot = findRotation (x,y,px,py)
				local dist = getDistanceBetweenPoints3D (x,y,z, px,py,pz)
				--0.5
				--0.25
				--0.25
				
				local ax = x + ((math.cos(math.rad(rot + 90))) * (dist*0.15)) 
				local ay = y + ((math.sin(math.rad(rot + 90))) * (dist*0.15))
				dxDrawLine3D (x,y,z+0.75,ax,ay,z, tocolor(0, 0, 0, 255), 3, false)
				local x,y = ax,ay
				local d = dist - (dist*0.15)
				--
				local ax = x + ((math.cos(math.rad(rot + 90))) * (d*0.15)) 
				local ay = y + ((math.sin(math.rad(rot + 90))) * (d*0.15)) 
				local d = d - (dist*0.15)
				dxDrawLine3D (x,y,pz+0.25,ax,ay,pz-0.75, tocolor(0, 0, 0, 255), 3, false)
				local x,y = ax,ay
			
				--local d = dist - (dist*0.1)
				--local d = d - (dist*0.1)
				--local d = d - (dist*0.05)
				--local d = d - (dist*0.05)
				local ax = x + ((math.cos(math.rad(rot + 90))) * (d))
				local ay = y + ((math.sin(math.rad(rot + 90))) * (d)) 
				dxDrawLine3D (x,y,pz-0.75,ax,ay,pz-0.75, tocolor(0, 0, 0, 255), 3, false)
				--local d = d - (dist*1.2)
				local x,y = ax,ay
				--
				local ax = x + ((math.cos(math.rad(rot + 90))) * (0.05))
				local ay = y + ((math.sin(math.rad(rot + 90))) * (0.05)) 
				dxDrawLine3D (x,y,pz-0.75,ax,ay,pz-0.5, tocolor(0, 0, 0, 255), 3, false)
				dxDrawLine3D (ax,ay,pz-0.5,x,y,pz-0.25, tocolor(0, 0, 0, 255), 3, false)
				--
				local ax = x + ((math.cos(math.rad(rot - 90))) * (0.15))
				local ay = y + ((math.sin(math.rad(rot - 90))) * (0.15)) 
				dxDrawLine3D (x,y,pz-0.25,ax,ay,pz-0.15, tocolor(0, 0, 0, 255), 3, false)
				local x,y = ax,ay
				--
				
				local ax = x + ((math.cos(math.rad(rot - 90))) * (0.15))
				local ay = y + ((math.sin(math.rad(rot - 90))) * (0.15)) 
				dxDrawLine3D (x,y,pz-0.15,ax,ay,pz, tocolor(0, 0, 0, 255), 3, false)
				--
				else
				table.remove (mangueirasRender, i)
				end
			end
		end
	end
	
	mangueirasRender = {}
	function mangueiraStream ()
		if getElementType (source) == "object" then
			if getElementModel (source) == 2983 then
				if getElementData (source, "PUNKPostoTorneira") == true then
					if eventName == "onClientElementStreamIn" then
					local elementos = getAttachedElements (source)
						for i=1, #elementos do
						aplicarCor (elementos[i], shaderAmarelo)
						end
					table.insert (mangueirasRender, source)
						if #mangueirasRender > 0 then
							if mangueirasRenderAdicionado ~= true then
							mangueirasRenderAdicionado = true
							removeEventHandler ("onClientRender", root, renderMangueira)
							addEventHandler ("onClientRender", root, renderMangueira)
							end
						end
					else
					table.removeValue (mangueirasRender, source)
						if #mangueirasRender == 0 then
							if mangueirasRenderAdicionado == true then
							mangueirasRenderAdicionado = false
							removeEventHandler ("onClientRender", root, renderMangueira)
							end
						end
					end
				end
			end
		end
	end
	addEventHandler ("onClientElementStreamIn", root, mangueiraStream)
	addEventHandler ("onClientElementDestroy", root, mangueiraStream)

	function buscarBombaMangueira (elemento)
	local distancia = 99999
	local minimaDistancia = distancia-0.0001
	local px,py,pz = getElementPosition(elemento)
	local pint = getElementInterior(elemento)
	local pdim = getElementDimension(elemento)
	local objeto = getElementsByType ("colshape")
		if bombas and #bombas > 0 then
			for i=1, #bombas do
				if isElement(bombas[i]) then
				local a,b,c = getElementPosition (bombas[i])
				local dist = getDistanceBetweenPoints3D (a,b,c,px,py,pz)
					if dist < distancia then
						if dist < minimaDistancia  then
						minimaDistancia = dist
						x,y,z = getElementPosition (bombas[i])
						end
					end
				end
			end
		end
	return x,y,z
	end

function buscarPosto (jogador)
local distancia = 9999
local minimaDistancia = distancia-0.0001
local px,py,pz = getElementPosition(jogador)
posto = nil
gasolina = nil
alcool = nil
diesel = nil
eletrico = nil
nome = nil
	for i=1, #postos do
	local posicao = postos[i].posicao
	local dist = getDistanceBetweenPoints3D (Vector3(posicao),px,py,pz)
		if dist < distancia then
			if dist < minimaDistancia  then
			minimaDistancia = dist
			preco = postos[i].precos
			gasolina = preco.gasolina
			alcool = preco.alcool
			diesel = preco.diesel
			eletrico = preco.eletrico
			nome = postos[i].nome
			end
		end
	end
return gasolina, alcool, diesel, eletrico, nome
end

end

--Combustivel
if combustivel then
function combustivelSolicitar (jogador, lugar)
	if jogador == localPlayer and lugar == 0 then
		if eventName == "onClientVehicleEnter" then veiculo = source else veiculo = getPedOccupiedVehicle (jogador) end
		if isElement(veiculo) == false then return end
		if (getVehicleType (getElementModel(veiculo)) == "BMX") or (getVehicleType (getElementModel(veiculo)) == "Train") then return end
		if getVehicleController (veiculo) == jogador then
			if not eventName or eventName == "onClientVehicleEnter" then
			triggerServerEvent ("PUNKPostoSolicitarCombustivel", jogador, veiculo)
			else
				if isTimer (temporizadorCombustivel) and (bombaVeiculo and isElement (bombaVeiculo) == false) then
					if bombaVeiculo and isElement(bombaVeiculo) then  
					
					else
					killTimer (temporizadorCombustivel)
					end
				
				end
			triggerServerEvent ("PUNKPostoEnviarCombustivel", jogador, veiculo, veiculoCombustivel, distanciaPercorrida)
			end
		end
	end
veiculo = nil
end
addEventHandler ("onClientVehicleEnter", getRootElement(), combustivelSolicitar)
addEventHandler ("onClientVehicleStartExit", getRootElement(), combustivelSolicitar)

function combustivelReceber (veiculo, gasolina, distancia, alimentacao)
local jogador = source
	if jogador == localPlayer and isElement(veiculo) then
		if (getVehicleType (getElementModel(veiculo)) ~= "BMX") and (getVehicleType (getElementModel(veiculo)) ~= "Train") then
			if getVehicleType(getElementModel(veiculo)) == "Automobile" or getVehicleType(getElementModel(veiculo)) == "Monster Truck" then
			c = combustivel.automoveis
			elseif getVehicleType(getElementModel(veiculo)) == "Bike" or getVehicleType(getElementModel(veiculo)) == "Quad" then
			c = combustivel.motocicletas
			elseif getVehicleType(getElementModel(veiculo)) == "Plane"  then
			c = combustivel.avioes
			elseif getVehicleType(getElementModel(veiculo)) == "Helicopter" then
			c = combustivel.helicopteros
			elseif getVehicleType(getElementModel(veiculo)) == "Boat" then
			c = combustivel.navios
			end
			veiculoKmPorLitro = c.kmPorLitro
			veiculoConsumo = c.consumo
			veiculoTanque = c.tanque
		end
	combustivelUltimaPosicao = {getElementPosition(veiculo)}
		--if not veiculoCombustivel then
		--veiculoCombustivel = veiculoTanque*(combustivel.inicial/100)
		--else
		veiculoCombustivel = gasolina or veiculoTanque*(combustivel.inicial/100)
		--end
		mAlimentacao = alimentacao
		if not distancia then
		distanciaPercorrida = 0
		else
		distanciaPercorrida = distancia
		end
		if isTimer (temporizadorCombustivel) then killTimer (temporizadorCombustivel) end
		local veiculo = veiculo
			temporizadorCombustivel = setTimer (function ()
				if isElement (veiculo) then
					if getVehicleEngineState(veiculo) then
					local x,y,z = getElementPosition (veiculo)
					local posicao = Vector3 (combustivelUltimaPosicao)
					combustivelUltimaPosicao = {x,y,z}
					distanciaPercorrida = (distanciaPercorrida + getDistanceBetweenPoints3D (x,y,z, Vector3(posicao)))
						if distanciaPercorrida > veiculoKmPorLitro*1000 then
						distanciaPercorrida = 0
						veiculoCombustivel = veiculoCombustivel - 1
						else
							if table.contain (veiculosAbastecendo, veiculo) == false then
							veiculoCombustivel = veiculoCombustivel - veiculoConsumo/100
							end
						end
						if veiculoCombustivel <= 0 then
						semCombustivel = sim
						veiculoCombustivel = 0
						setVehicleEngineState (veiculo, false)
						triggerServerEvent ("PUNKPostoEnviarCombustivel", jogador, veiculo, veiculoCombustivel, distanciaPercorrida)
						end
					end
					if table.contain (veiculosAbastecendo, veiculo) then
						local posto, gasolina, alcool, diesel, eletrico = buscarPosto(veiculo)
						p = nil
						if mAlimentacao == "alcool" then
						p = alcool
						else
						local alimentacao = getVehicleHandling (veiculo).engineType
							if alimentacao == "petrol" then
							p = gasolina
							elseif alimentacao == "electric" then
							p = eletrico
							elseif alimentacao == "diesel" then
							p = diesel
							end
						end
						if getPlayerMoney (localPlayer) >= p then
						veiculoCombustivel = veiculoCombustivel + 1
							if veiculoCombustivel >= veiculoTanque then	
								if markerGeral[bombaVeiculo] then
								destroyElement (markerGeral[bombaVeiculo])
								markerGeral[bombaVeiculo] = nil
								end
							abastecerDigitou()
							veiculoCombustivel = veiculoTanque
							table.removeValue (veiculosAbastecendo, bombaVeiculo)
							table.removeValue (veiculosAbastecendo, veiculo)
								if colGeral[bombaVeiculo] and isElement (colGeral[bombaVeiculo]) and isElementWithinColShape (localPlayer, colGeral[bombaVeiculo]) then
								triggerServerEvent ("PUNKPostoAbastecer", localPlayer, false, bombaVeiculo, getElementPosition (colGeral[bombaVeiculo]))
								end
								if hudCar == true then hudCar = false end
								if hudCar ~= true and renderMangueira ~= true and chegou ~= true then
								renderAdd = nil
								removeEventHandler ("onClientRender", root, renderMangueira)
								end
							end
						triggerServerEvent ("PUNKPostoEnviarCombustivel", jogador, veiculo, veiculoCombustivel, distanciaPercorrida, true)
						else
						notificacao (localPlayer, nil, "Você não possui dinheiro suficiente: $"..p, "default-bold", 12, posicaoHorizontal or "esquerda", posicaoVertical or "topo", 2, {255,255,255,255}, {255,255,255,255}, {0,0,0,225}, {0,0,0,175}, nil, {255,255,255,255}, "falha")								
						abastecerDigitou()
						end
					end
					if combustivel.elementData and combustivel.elementData then
						if getElementData (veiculo, combustivel.elementData) ~= veiculoCombustivel then
						setElementData (veiculo, combustivel.elementData, veiculoCombustivel)
						end
					end
				else
				killTimer(temporizadorCombustivel)
				end
			end, 1000, 0)
		--end
	end
end
addEvent ("PUNKPostoSolicitarCombustivelRetorno", true)
addEventHandler ("PUNKPostoSolicitarCombustivelRetorno", getRootElement(), combustivelReceber)

function dataChange (data, antigo, novo)
	if data == combustivel.elementData then
	local veiculo = source
		if veiculo == getPedOccupiedVehicle (localPlayer) or veiculo == bombaVeiculo then
		veiculoCombustivel = novo
		end
	end
end
addEventHandler ("onClientElementDataChange", getRootElement(), dataChange)

end


 function attach(...)
        return pAttach:attach(...)
    end
    addEvent("PUNKPosto:attach", true)
    addEventHandler("PUNKPosto:attach", resourceRoot, attach)

    function detach(...)
        return pAttach:detach(...)
    end
    addEvent("PUNKPosto:detach", true)
    addEventHandler("PUNKPosto:detach", resourceRoot, detach)

    function detachAll(...)
        return pAttach:detachAll(...)
    end
    addEvent("PUNKPosto:detachAll", true)
    addEventHandler("PUNKPosto:detachAll", resourceRoot, detachAll)

    function setPositionOffset(...)
        return pAttach:setPositionOffset(...)
    end
    addEvent("PUNKPosto:setPositionOffset", true)
    addEventHandler("PUNKPosto:setPositionOffset", resourceRoot, setPositionOffset)

    function setRotationOffset(...)
        return pAttach:setRotationOffset(...)
    end
    addEvent("PUNKPosto:setRotationOffset", true)
    addEventHandler("PUNKPosto:setRotationOffset", resourceRoot, setRotationOffset)

    function invisibleAll(...)
        return pAttach:invisibleAll(...)
    end
    addEvent("PUNKPosto:invisibleAll", true)
    addEventHandler("PUNKPosto:invisibleAll", resourceRoot, invisibleAll)

    function isAttached(...)
        return pAttach:isAttached(...)
    end

    function getDetails(...)
        return pAttach:getDetails(...)
    end

    function getAttacheds(...)
        return pAttach:getAttacheds(...)
    end


local sin, cos, rad = math.sin, math.cos, math.rad
local setMatrix     = setElementMatrix
local setPosition   = setElementPosition
local setDimension  = setElementDimension
local getDimension  = getElementDimension
local setInterior   = setElementInterior
local getInterior   = getElementInterior
local setAlpha      = setElementAlpha
local getBoneMatrix = getElementBoneMatrix
local setCollisions = setElementCollisionsEnabled
local isOnScreen    = isElementOnScreen
local isElement     = isElement
local isStreamedIn  = isElementStreamedIn
local getType       = getElementType

pAttach = {
    instances                 = {},
    pedInstances              = {},
    inStreamPeds              = {},
    preparedToRenderInstances = {},
    pedsProcessedAdded        = false,

    attach = function(self, element, ped, _boneid, ox, oy, oz, rx, ry, rz)
        local boneid = boneIDNames[_boneid] or tonumber(_boneid) or false
        --assert(isElement(element) and getType(element) ~= "player", "Expected element (except: player) at argument 1, got "..type(element))
        assert(isElement(ped), "Expected element at argument 2, got "..type(ped))
        --assert(boneid and boneIDs[boneid], "Expected valid bone-id or bone-name at argument 3, got "..tostring(_boneid)..". Check available bones in README.md")
        if self:isAttached(element) then return false end

        setPosition(element, 0, 0, 10000)
        setDimension(element, getDimension(ped))
        setInterior(element, getInterior(ped))
		--if getElementModel (element) ~= idCapacete1 then
        setCollisions(element, false)
		--end

        local pedIns  = self.pedInstances[ped]
        local pedType = getType(ped)

        if not pedIns then
            pedIns = { count = 1, pedType = pedType, list = {} }
            self.pedInstances[ped] = pedIns

            if ped ~= localPlayer then
                addEventHandler("onClientElementStreamIn",    ped, self.onStreamIn)
                addEventHandler("onClientElementStreamOut",   ped, self.onStreamOut)
                if pedType == "ped" then
                    addEventHandler("onClientElementDestroy", ped, self.onPedDestroy)
                end
            end
            addEventHandler("onClientElementDimensionChange", ped, self.onDimensionChange)
            addEventHandler("onClientElementInteriorChange",  ped, self.onInteriorChange)
        else
            pedIns.count = pedIns.count + 1
        end
        pedIns.list[element] = {
            element = element,
            ped     = ped,
            boneid  = boneid,
            _boneid = _boneid,
            ox      = ox or 0,
            oy      = oy or 0,
            oz      = oz or 0,
            rx      = rx or 0,
            ry      = ry or 0,
            rz      = rz or 0,
            rotMat  = self:calculateRotMat(rx or 0, ry or 0, rz or 0)
        }
        self.instances[element] = ped

        if ped == localPlayer or isStreamedIn(ped) then
            if self.inStreamPeds[ped] then
                self:refreshRender()
            else
                self:addToStream(ped)
            end
        end

        addEventHandler("onClientElementDestroy", element, self.onElementDestroy)
        return true
    end,

    detach = function(self, element)
        if not self:isAttached(element) then return false end

        local ped    = self.instances[element]
        local pedIns = self.pedInstances[ped]

        pedIns.count = pedIns.count - 1

        if pedIns.count == 0 then
            if isElement(ped) then
                removeEventHandler("onClientElementStreamIn",        ped, self.onStreamIn)
                removeEventHandler("onClientElementStreamOut",       ped, self.onStreamOut)
                removeEventHandler("onClientElementDimensionChange", ped, self.onDimensionChange)
                removeEventHandler("onClientElementInteriorChange",  ped, self.onInteriorChange)
                if pedIns.pedType == "ped" then
                    removeEventHandler("onClientElementDestroy",     ped, self.onPedDestroy)
                end
            end
            self.pedInstances[ped] = nil
            self:removeFromStream(ped)

        else
            pedIns.list[element] = nil
            self:refreshRender()
        end

        removeEventHandler("onClientElementDestroy", element, self.onElementDestroy)
        self.instances[element] = nil
        return true
    end,

    detachAll = function(self, ped)
        assert(isElement(ped), "Expected element at argument 1, got "..type(ped))

        if self.pedInstances[ped] then
            for element in pairs(self.pedInstances[ped].list) do
                self:detach(element)
            end
        end
        return true
    end,

    isAttached = function(self, element)
        return (element and self.instances[element]) and true or false
    end,

    getDetails = function(self, element)
        assert(isElement(element), "Expected element at argument 1, got "..type(element))
        if not self:isAttached(element) then return false end
        
		local a = self.instances[element]
        local v = self.pedInstances[a].list[element]
        return v and { v.element, v.ped, v._boneid, v.ox, v.oy, v.oz, v.rx, v.ry, v.rz } or false
    end,

    getAttacheds = function(self, ped)
        assert(isElement(ped), "Expected element at argument 1, got "..type(ped))
        
        local list = {}
        if self.pedInstances[ped] then
            for element in pairs(self.pedInstances[ped].list) do
                list[ #list + 1 ] = element
            end
        end
        return list
    end,

    setPositionOffset = function(self, element, x, y, z)
        assert(isElement(element), "Expected element at argument 1, got "..type(element))
        if not self:isAttached(element) then return false end

        local ped = self.instances[element]
        local ins = self.pedInstances[ped].list[element]

        ins.ox = x or 0
        ins.oy = y or 0
        ins.oz = z or 0
        return true
    end,

    setRotationOffset = function(self, element, x, y, z)
        assert(isElement(element), "Expected element at argument 1, got "..type(element))
        if not self:isAttached(element) then return false end

        local ped = self.instances[element]
        local ins = self.pedInstances[ped].list[element]

        ins.rx = x or 0
        ins.ry = y or 0
        ins.rz = z or 0
        ins.rotMat = self:calculateRotMat(x or 0, y or 0, z or 0)
        return true
    end,

    invisibleAll = function(self, ped, bool)
        assert(isElement(ped), "Expected element at argument 1, got "..type(ped))

        if self.pedInstances[ped] then
            for element in pairs(self.pedInstances[ped].list) do
                setAlpha(element, bool and 0 or 255)
            end
        end
        return true
    end,

    addToStream = function(self, ped)
        if not self.inStreamPeds[ped] then
            self.inStreamPeds[ped] = true
            if self.pedInstances[ped] then
                self:refreshRender()
            end
            return true
        end
        return false
    end,

    removeFromStream = function(self, ped)
        if self.inStreamPeds[ped] then
            if self.pedInstances[ped] then
                for element in pairs(self.pedInstances[ped].list) do
                    setPosition(element, 0, 0, 10000)
                end
            end
            self.inStreamPeds[ped] = nil
            self:refreshRender()
            return true
        end
        return false
    end,


    onStreamIn = function()
        pAttach:addToStream(source)
    end,

    onStreamOut = function()
        pAttach:removeFromStream(source)
    end,

    onDimensionChange = function(old, new)
        if pAttach.pedInstances[source] then
            for element in pairs(pAttach.pedInstances[source].list) do
                setDimension(element, new)
            end
        end
    end,

    onInteriorChange = function(old, new)
        if pAttach.pedInstances[source] then
            for element in pairs(pAttach.pedInstances[source].list) do
                setInterior(element, new)
            end
        end
    end,

    onElementDestroy = function()
        pAttach:detach(source)
    end,

    onPedDestroy = function()
        pAttach:detachAll(source)
    end,


    refreshRender = function(self)
        local tbl = {}
        local len = 0
        for ped in pairs(self.inStreamPeds) do
            for element, data in pairs(self.pedInstances[ped].list) do
                len = len + 1
                tbl[len] = data
            end
        end
        self.preparedToRenderInstances = tbl

        if len > 0 and not self.pedsProcessedAdded then
            addEventHandler("onClientPedsProcessed", root, self.onPedsProcessed)
            self.pedsProcessedAdded = true
        elseif len == 0 and self.pedsProcessedAdded then
            removeEventHandler("onClientPedsProcessed", root, self.onPedsProcessed)
            self.pedsProcessedAdded = false
        end
        return true
    end,

    calculateRotMat = function(self, rx, ry, rz)
        local rx, ry, rz     = rad(rx), rad(ry), rad(rz)
        local syaw,   cyaw   = sin(rx), cos(rx)
        local spitch, cpitch = sin(ry), cos(ry)
        local sroll,  croll  = sin(rz), cos(rz)
        return {
            { sroll  * spitch * syaw + croll * cyaw, sroll * cpitch, sroll * spitch * cyaw - croll * syaw },
            { croll  * spitch * syaw - sroll * cyaw, croll * cpitch, croll * spitch * cyaw + sroll * syaw },
            { cpitch * syaw, -spitch, cpitch * cyaw }
        }
    end,

    -- Modified https://wiki.multitheftauto.com/wiki/attach
    onPedsProcessed = function()
        local boneMatCache = {}

        for i = 1, #pAttach.preparedToRenderInstances do
            local data         = pAttach.preparedToRenderInstances[i]
            local element, ped = data.element, data.ped
            local boneid       = data.boneid
            local ox, oy, oz   = data.ox, data.oy, data.oz

            if isOnScreen(ped) then
                local bMCache = boneMatCache[ped]
                local boneMat = false

                if not bMCache then
                    bMCache = {}
                    boneMatCache[ped] = bMCache
                end
                if not bMCache[boneid] then
					if getElementType (ped) == "ped" or getElementType (ped) == "player" then
                    boneMat = getBoneMatrix(ped, boneid)
                    bMCache[boneid] = boneMat
					else
					boneMat = getElementMatrix(ped)
                    bMCache[boneid] = boneMat
					end
                else
                    boneMat = bMCache[boneid]
                end
                if boneMat then
                    local bM1X, bM1Y, bM1Z = boneMat[1][1], boneMat[1][2], boneMat[1][3]
                    local bM2X, bM2Y, bM2Z = boneMat[2][1], boneMat[2][2], boneMat[2][3]
                    local bM3X, bM3Y, bM3Z = boneMat[3][1], boneMat[3][2], boneMat[3][3]
                    local bM4X, bM4Y, bM4Z = boneMat[4][1], boneMat[4][2], boneMat[4][3]

                    local rotMat = data.rotMat
                    local rM1X, rM1Y, rM1Z = rotMat[1][1], rotMat[1][2], rotMat[1][3]
                    local rM2X, rM2Y, rM2Z = rotMat[2][1], rotMat[2][2], rotMat[2][3]
                    local rM3X, rM3Y, rM3Z = rotMat[3][1], rotMat[3][2], rotMat[3][3]

                    setMatrix(element, {
                        {
                            bM2X * rM1Y + bM1X * rM1X + rM1Z * bM3X,
                            bM3Y * rM1Z + bM1Y * rM1X + bM2Y * rM1Y,
                            bM2Z * rM1Y + bM3Z * rM1Z + rM1X * bM1Z,
                            0
                        },
                        {
                            rM2Z * bM3X + bM2X * rM2Y + rM2X * bM1X,
                            bM3Y * rM2Z + bM2Y * rM2Y + bM1Y * rM2X,
                            rM2X * bM1Z + bM3Z * rM2Z + bM2Z * rM2Y,
                            0
                        },
                        {
                            bM2X * rM3Y + rM3Z * bM3X + rM3X * bM1X,
                            bM3Y * rM3Z + bM2Y * rM3Y + rM3X * bM1Y,
                            rM3X * bM1Z + bM3Z * rM3Z + bM2Z * rM3Y,
                            0
                        },
                        {
                            oz * bM1X + oy * bM2X - ox * bM3X + bM4X,
                            oz * bM1Y + oy * bM2Y - ox * bM3Y + bM4Y,
                            oz * bM1Z + oy * bM2Z - ox * bM3Z + bM4Z,
                            1
                        }
                    })
                    data.prevOutOfScreen = false
                end

            else
                if not data.prevOutOfScreen then
                    setPosition(element, 0, 0, 10000)
                    data.prevOutOfScreen = true
                end
            end
        end
    end
}

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

boneIDNames = {
    ["pelvis"]            = 1,
    ["pelvis2"]           = 2,
    ["spine"]             = 3,
    ["neck"]              = 4,
    ["neck2"]             = 5,
    ["head2"]             = 6,
    ["head3"]             = 7,
    ["head"]              = 8,
    ["right-upper-torso"] = 21,
    ["right-shoulder"]    = 22,
    ["right-elbow"]       = 23,
    ["right-wrist"]       = 24,
    ["right-hand"]        = 25,
    ["right-thumb"]       = 26,
    ["left-upper-torso"]  = 31,
    ["left-shoulder"]     = 32,
    ["left-elbow"]        = 33,
    ["left-wrist"]        = 34,
    ["left-hand"]         = 35,
    ["left-thumb"]        = 36,
    ["left-hip"]          = 41,
    ["left-knee"]         = 42,
    ["left-tankle"]       = 43,
    ["left-foot"]         = 44,
    ["right-hip"]         = 51,
    ["right-knee"]        = 52,
    ["right-tankle"]      = 53,
    ["right-foot"]        = 54,
    -- extra
    ["backpack"]          = 3,
    ["weapon"]            = 24,
}

addEventHandler("onClientResourceStart", resourceRoot, function()
    triggerServerEvent("PUNKPosto:requestCache", resourceRoot)
end)

addEvent("PUNKPosto:receiveCache", true)
addEventHandler("PUNKPosto:receiveCache", resourceRoot, function(cache)
    for _, data in pairs(cache) do
        pAttach:attach(unpack(data))
    end
end)

end
addEvent ("PUNKPostoRecebeu", true)
addEventHandler ("PUNKPostoRecebeu", getRootElement(), clienteRecebeu)

end


--Server
if isElement(localPlayer) == false then

local sim = true
local nao = false

jogadoresProntos = {}
temporizador = {}

function adicionarJogador (mod)
	if mod == getThisResource() then
	table.insert (jogadoresProntos, source)
	end
end
addEventHandler ("onPlayerResourceStart", getRootElement(), adicionarJogador)

function removerJogador ()
local jogador = source
	for i=1, #jogadoresProntos do
		if jogadoresProntos[i] == jogador then
		table.remove (jogadoresProntos, i)
		break
		end
	end
end
addEventHandler ("onPlayerQuit", getRootElement(), removerJogador)

function notificacao (a,b,c,d,e,f,g,h,i,j,l,m,n,o,p)
	if informativo == true then
	exports.PUNKInformativo:notificacao (a,b,c,d,e,f,g,h,i,j,l,m,n,o,p)
	else
	local r,g,b = 255,255,255	
		if p == "sucesso" then
		r,g,b = 0,255,0
		elseif p == "falha" then
		r,b,g = 255, 0, 0
		elseif p == "coletavel" then
		r,g,b = 255,255,0
		end
	outputChatBox (c, a, r,g,b)
	end
end

somInfo = {}
function infoSom (grupo, id1, id2, x,y,z, loop, volume, elementos)
local tempTab = {}
	if not elementos then
		for i=1, #jogadoresProntos do
		local px,py,pz = getElementPosition (jogadoresProntos[i])
		local dist = getDistanceBetweenPoints3D (x,y,z,px,py,pz)
			if dist <= 5 then
			table.insert (tempTab, jogadoresProntos[i])
			end
		end
	else
		for i=1, #elementos do
			if table.contain (jogadoresProntos, elementos[i]) then
			table.insert (tempTab, elementos[i])
			end
		end
	end
triggerClientEvent (tempTab, "PUNKPostoSom", root, grupo, id1, id2, x,y,z, loop, volume)
end

function iniciando ()

--Funções úteis
local nomes = {
		--["base"] = "base",
		--["modelo"] = "modelo",
		--["substituir"] = nao,
		["aquatico"] = "aquatico",
		["aereo"] = "aereo",
		["massa"] = "mass",
		["curvas"] = "turnMass",
		["aderência"] = "dragCoeff",
		["centro"] = "centerOfMass",
		["submerssão"] = "percentSubmerged",
		["tração"] = "tractionMultiplier",
		["perda de tração"] =  "tractionLoss",
		["relação de tração"] = "tractionBias",
		["marchas"] = "numberOfGears",
		["velocidade"] = "maxVelocity",
		["aceleração"] = "engineAcceleration",
		["inercia"] = "engineInertia",
		["direção"] = "driveType",
		["alimentacao"] = "engineType",
		["desaceleração"] = "brakeDeceleration",
		["relação dos freios"] = "brakeBias",
		["ABS"] = "ABS",
		["limite direcional"] = "steeringLock",
		["suspensão"] = "suspensionForceLevel",
		["lubrificação"] = "suspensionDamping",
		["lubrificação alta"] = "suspensionHighSpeedDamping",
		["suspensão superior"] = "suspensionUpperLimit",
		["suspensão inferior"] = "suspensionLowerLimit",
		["relação da suspensão"] = "suspensionFrontRearBias",
		["embicagem"] = "suspensionAntiDiveMultiplier",
		["assentos"] = "seatOffsetDistance",
		["colisão"] = "collisionDamageMultiplier",
		["valor"] = "monetary",
		["marcadores do modelo"] = "modelFlags",
		["marcadores do manuseio"] = "handlingFlags",
		["faróis frontais"] = "headLight",
		["faróis traseiros"] = "tailLight",
		["animações"] = "animGroup",
	}

	--Postos
	veiculosAbastecendo = {}
	if postos then
	postoCol = {}
	function criarPostos ()
		for i=1, #postos do
		local posto = postos[i]
		local posicao = Vector3 (posto.posicao)
		local tamanho = posto.tamanho
		postos[i].elemento = createColSphere (Vector3(posicao), tamanho)
		--postoCol[i] = createColSphere (Vector3(posicao), tamanho)
		addEventHandler ("onColShapeHit", postos[i].elemento, postoEntrarSair)
		addEventHandler ("onColShapeLeave", postos[i].elemento, postoEntrarSair)
		end
	local bombas = postos.bombas
		for i=1, #bombas do
		local posicao = Vector3 (bombas[i].posicao)
		local rotacao = bombas[i].rotacao
		local id = bombas[i].id
		createObject (id, Vector3(posicao), 0, 0, rotacao)
		end
	end

	postoCriado = {}
	function postoEntrarSair(elemento, estado)
	if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
		if estado then
			if getElementType (elemento) == "player" then
				if eventName == "onColShapeHit" then
					if not postoCriado[elemento] then
					postoCriado[elemento] = {}
					else
						for i=1, #postoCriado[elemento] do
							if postoCriado[elemento][i] == source then return end
						end
					end
				table.insert (postoCriado[elemento], source)
				triggerClientEvent (elemento, "PUNKPostoPostoEntrarSair", elemento, source)
				local elemento = elemento
				local col = source
					setTimer (function ()
						if isElement(elemento) then
						table.removeValue (postoCriado[elemento], col)
						end
					end, 60000*10, 1)
				else
				--triggerClientEvent ("PUNKPostoPostoEntrarSair", elemento)
				end
			end
		end
	end
	criarPostos()

	mangueira = {}
	timerAbastecer = {}
	function postoAbastecer (estado, veiculo, x,y,z)
	if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
	local jogador = source
		if estado == true then
		local x,y,z = getElementPosition (jogador)
			if table.contain (veiculosAbastecendo, veiculo) == false then
			table.insert (veiculosAbastecendo, veiculo)
			local obj = createObject (2983, x,y,z)
			setElementData (obj, "PUNKPostoTorneira", true)
			setElementCollisionsEnabled (obj, false)
			mangueira[jogador] = obj
			mangueira[mangueira[jogador] ] = jogador
			setObjectScale (obj, 0.15)
			attach (mangueira[jogador], jogador, 25, 0,0,0, 0,120, -30)
			setPedWeaponSlot (jogador, 0)
			local obj = createObject (3042, x,y,z)
			setElementCollisionsEnabled (obj, false)
			setObjectScale (obj, 0.1, 0.1, 0.1)
			attachElements (obj, mangueira[jogador], 0, 0.2, 0.05, -90, 0, 180)
			setPedAnimation (jogador, "chainsaw", "idle_csaw", -1, true, true)
			local vx,vy,vz = getElementPosition(veiculo) 
			local px,py,pz = getElementPosition (jogador)
			local a,b,rot = getElementRotation (veiculo)
			setPedRotation(jogador, findRotation(px,py,vx,vy) ) 
			--setPedRotation(jogador, findRotation(x,y,rx,ry) ) 
			infoSom ("script", 7, 0, x,y,z, true)
			end
		elseif estado == false then
		table.removeValue (veiculosAbastecendo, veiculo)
			if isElement (mangueira[jogador]) then
			detach(mangueira[jogador])
			destroyElement (mangueira[jogador])
			mangueira[jogador] = nil
			end
		setPedAnimation (jogador)
		infoSom ("script", 7, 0, x,y,z, nil)
		end
	end
	addEvent ("PUNKPostoAbastecer", true)
	addEventHandler ("PUNKPostoAbastecer", getRootElement(), postoAbastecer)

	function destruirMangueira ()
	local objeto = source
		if mangueira[objeto] then
		local elementos = getAttachedElements (objeto)
			for i=1, #elementos do
			destroyElement (elementos[i])
			end
		local a = mangueira[objeto]
		mangueira[a] = nil
		mangueira[objeto] = nil
		end
	end
	addEventHandler ("onElementDestroy", getRootElement(), destruirMangueira)

	function buscarPosto (jogador)
	local distancia = 9999
	local minimaDistancia = distancia-0.0001
	local px,py,pz = getElementPosition(jogador)
	posto = nil
	preco = nil
	gasolina = nil
	alcool = nil
	diesel = nil
	eletrico = nil
	nome = nil
		for i=1, #postos do
		local posicao = postos[i].posicao
		local dist = getDistanceBetweenPoints3D (Vector3(posicao),px,py,pz)
			if dist < distancia then
				if dist < minimaDistancia  then
				minimaDistancia = dist
				posto = postoCol[i]
				preco = postos[i].precos
				gasolina = preco.gasolina
				alcool = preco.alcool
				diesel = preco.diesel
				eletrico = preco.eletrico
				nome = postos[i].nome
				end
			end
		end
	return posto, gasolina, alcool, diesel, eletrico, nome
	end

	end
	--
	--Combustivel
	if combustivel then
	veiculoCombustivel = {}
	distanciaPercorrida = {}
	mAlimentacao = {}
	function solicitarCombustivel (veiculo, jogador)
		if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
		if not jogador then jogador = source end
		if isElement(veiculo) and (getVehicleType (veiculo) ~= "BMX") and (getVehicleType (veiculo) ~= "Train") then
			if not veiculoCombustivel[veiculo] then
				if getVehicleType(veiculo) == "Automobile" or getVehicleType(veiculo) == "Monster Truck" then
				c = combustivel.automoveis
				elseif getVehicleType(veiculo) == "Bike" or getVehicleType(veiculo) == "Quad" then
				c = combustivel.motocicletas
				elseif getVehicleType(veiculo) == "Plane"  then
				c = combustivel.avioes
				elseif getVehicleType(veiculo) == "Helicopter" then
				c = combustivel.helicopteros
				elseif getVehicleType(veiculo) == "Boat" then
				c = combustivel.navios
				end
			--veiculoKmPorLitro = c.kmPorLitro
			--veiculoConsumo = c.consumo
			veiculoTanque = c.tanque
			veiculoCombustivel[veiculo] = veiculoTanque*(combustivel.inicial/100)
			end
			if combustivel.elementData and combustivel.elementData then
			setElementData (veiculo, combustivel.elementData, veiculoCombustivel[veiculo])
			end
		triggerClientEvent (jogador, "PUNKPostoSolicitarCombustivelRetorno", jogador, veiculo, veiculoCombustivel[veiculo], distanciaPercorrida[veiculo], mAlimentacao[veiculo])
		end
	end
	addEvent ("PUNKPostoSolicitarCombustivel", true)
	addEventHandler ("PUNKPostoSolicitarCombustivel", getRootElement(), solicitarCombustivel)

	function receberCombustivel (veiculo, combustivel, distancia, cobrar)
		if PUNKSTUDIOSkoasd9jaindsaj ~= true then return end
	veiculoCombustivel[veiculo] = combustivel
	distanciaPercorrida[veiculo] = distancia
		if cobrar == true then
		local posto, gasolina, alcool, diesel, eletrico = buscarPosto(veiculo)
		preco = nil
			if mAlimentacao[veiculo] == "alcool" then
			preco = alcool
			else
			local alimentacao = getVehicleHandling (veiculo).engineType
				if alimentacao == "petrol" then
				preco = gasolina
				elseif alimentacao == "electric" then
				preco = eletrico
				elseif alimentacao == "diesel" then
				preco = diesel
				end
			end
		takePlayerMoney (source, preco)
		preco = nil
		end
	end
	addEvent ("PUNKPostoEnviarCombustivel", true)
	addEventHandler ("PUNKPostoEnviarCombustivel", getRootElement(), receberCombustivel)

	addEventHandler ("onPlayerResourceStart", getRootElement(), function (mod)
		if mod == getThisResource() then
		local jogador = source
			if isPedInVehicle (jogador) and getVehicleController (getPedOccupiedVehicle(jogador)) == jogador	then
			local veiculo = getPedOccupiedVehicle (jogador)
			solicitarCombustivel (veiculo,jogador)
			end
		end
	end)
	
	end
	
	function inicio (jogador)
		if PUNKSTUDIOSkoasd9jaindsaj ~= sim then return end
		if eventName then jogador = source end
		if table.contain (jogadoresProntos, jogador) then
		triggerClientEvent (jogador, "PUNKPostoRecebeu", jogador)
		--inicializacoes (jogador)
		else
		local conta = getPlayerAccount (jogador)
		local j = jogador
			local str = conta
			temporizador[str] = setTimer (function ()
				if isElement (j) then
					if table.contain (jogadoresProntos, j) then
					triggerClientEvent (j, "PUNKPostoRecebeu", j)
					--inicializacoes (jogador)
					jogador = nil
					killTimer (temporizador[str])
					end
				else
				killTimer (temporizador[str])
				end
			end, 1000 , 0)
		end
	end
	addEventHandler ("onPlayerJoin", getRootElement (), inicio)

	local jogadores = getElementsByType ("player")
	for i=1, #jogadores do
	inicio(jogadores[i])
	end
	
	
--bone
  local cache = {}

    function attach(element, ped, boneid, ox, oy, oz, rx, ry, rz)
        assert(isElement(element), "Expected element at argument 1, got "..type(element))
        cache[element] = { element, ped, boneid, ox or 0, oy or 0, oz or 0, rx or 0, ry or 0, rz or 0 }
        return triggerClientEvent("PUNKPosto:attach", resourceRoot, element, ped, boneid, ox, oy, oz, rx, ry, rz)
    end
	addEvent ("PUNKPosto:attach", true)
	addEventHandler ("PUNKPosto:attach", getRootElement(), attach)

    function detach(element)
        assert(isElement(element), "Expected element at argument 1, got "..type(element))
        cache[element] = nil
        return triggerClientEvent("PUNKPosto:detach", resourceRoot, element)
    end

    function detachAll(ped)
        assert(isElement(ped), "Expected element at argument 1, got "..type(ped))
        for element, data in pairs(cache) do
            if data[2] == ped then
                cache[element] = nil
            end
        end
        return triggerClientEvent("PUNKPosto:detachAll", resourceRoot, ped)
    end

    function setPositionOffset(element, x, y, z)
        assert(isElement(element), "Expected element at argument 1, got "..type(element))
        cache[element][4] = x or 0
        cache[element][5] = y or 0
        cache[element][6] = z or 0
        return triggerClientEvent("PUNKPosto:setPositionOffset", resourceRoot, element, x, y, z)
    end

    function setRotationOffset(element, x, y, z)
        assert(isElement(element), "Expected element at argument 1, got "..type(element))
        cache[element][7] = x or 0
        cache[element][8] = y or 0
        cache[element][9] = z or 0
        return triggerClientEvent("PUNKPosto:setRotationOffset", resourceRoot, element, x, y, z)
    end

    function invisibleAll(ped, bool)
        for element, data in pairs(cache) do
            if data[2] == ped then
                setElementAlpha(element, bool and 0 or 255)
            end
        end
        return true
    end

    function isAttached(element)
        assert(isElement(element), "Expected element at argument 1, got "..type(element))
        return cache[element] and true or false
    end

    function getDetails(element)
        assert(isElement(element), "Expected element at argument 1, got "..type(element))
        return cache[element] or false
    end

    function getAttacheds(ped)
        assert(isElement(ped), "Expected element at argument 1, got "..type(element))

        local list = {}
        for element, data in pairs(cache) do
            if data[2] == ped then
                list[ #list + 1 ] = element
            end
        end
        return list
    end


    function requestCache()
        if isElement(client) then
            triggerClientEvent(client, "PUNKPosto:receiveCache", resourceRoot, cache)
        end
    end
	addEvent ("PUNKPosto:requestCache", true)
    addEventHandler("PUNKPosto:requestCache", resourceRoot, requestCache)


    addEventHandler("onPlayerQuit", root, function()
        detachAll(source)
    end)

    addEventHandler("onElementDestroy", root, function()
        if cache[source] then
            detach(source)
        elseif getElementType(source) == "ped" then
            for element, data in pairs(cache) do
                if data[2] == source then
                    cache[element] = nil
                end
            end
        end
    end)

	
end
iniciando ()

end

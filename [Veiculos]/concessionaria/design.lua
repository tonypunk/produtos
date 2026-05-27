
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
if localPlayer then

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

--funçoes uteis
local function doMinimalize( substring )
    -- Upper the first character and leave the rest as they are
    return substring:sub( 1, 1 ):lower( ) .. substring:sub( 2 )
end

function minimalize( text )
    -- Sanity check
    assert( type( text ) == "string", "Bad argument 1 @ minimalize [String expected, got " .. type( text ) .. "]")

    -- We don't care about the number of words, so return only the first result string.gsub provides
    return ( { string.gsub( text, "%a+", doMinimalize ) } )[1]
end

local function doCapitalizing( substring )
    -- Upper the first character and leave the rest as they are
    return substring:sub( 1, 1 ):upper( ) .. substring:sub( 2 )
end

function capitalize( text )
    -- Sanity check
    assert( type( text ) == "string", "Bad argument 1 @ capitalize [String expected, got " .. type( text ) .. "]")

    -- We don't care about the number of words, so return only the first result string.gsub provides
    return ( { string.gsub( text, "%a+", doCapitalizing ) } )[1]
end

function teaDecodeBinary( data, key ) 
	return base64Decode( teaDecode( data, key ) ) 
end 


local tecla = "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"
local chave = "punkstudiosicone"
local tecla = teaDecodeBinary(tecla,chave)
local tecla = dxCreateTexture (tecla)

local tabTemporal = {}
function updateRenderCompra (veh)
	if not veh then veh = getPedOccupiedVehicle (localPlayer) end
	if isElement(veh) == false then return end
dxSetRenderTarget(renderDados, true)
dxSetBlendMode("modulate_add")
	if mostrarPainel ~= true then
	dxDrawRectangle(scX*480*tamanhoX, scY*150*tamanhoX, scX*150*tamanhoX, scY*25*tamanhoX, tocolor(0, 0, 0, 150), false) 
	dxDrawImage ( scX*605*tamanhoX, scY*(100+(25*(selecao or 2)))*tamanhoX, scX*25*tamanhoX, scY*25*tamanhoX, tecla, 0, 0, 0, tocolor ( 255, 255, 255, 255 ))
	dxDrawBorderedText(tamanhoX,controles.comprar, scX*1200*tamanhoX, scY*(255+(50*((selecao or 2 )-1 or 1)))*tamanhoX, scX*35*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
	dxDrawBorderedText(tamanhoX,"Comprar", scX*900*tamanhoX, scY*312.5*tamanhoX, scX*175*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)


	dxDrawRectangle(scX*480*tamanhoX, scY*175*tamanhoX, scX*150*tamanhoX, scY*25*tamanhoX, tocolor(0, 0, 0, 125), false) 
	dxDrawBorderedText(tamanhoX,"Preço", scX*850*tamanhoX, scY*362.5*tamanhoX, scX*175*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)
		
		if preco[carro] then
		p = preco[carro]
		else
		p = getVehicleHandling(carro).monetary
		end
		dxDrawBorderedText(tamanhoX,"$"..p, scX*1000*tamanhoX, scY*362.5*tamanhoX, scX*175*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)
	
	else
	dxDrawBorderedText(tamanhoX,"▲", scX*1200*tamanhoX, scY*(255+(50*(selecao -2 or 1)))*tamanhoX, scX*35*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
				
	dxDrawBorderedText(tamanhoX,"◄►", scX*1145*tamanhoX, scY*(210+(50*(selecao or 1)))*tamanhoX, scX*35*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
		
	dxDrawBorderedText(tamanhoX,"Escolher", scX*900*tamanhoX, scY*312.5*tamanhoX, scX*175*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)	
		
	dxDrawBorderedText(tamanhoX,"Veiculos", scX*900*tamanhoX, scY*262.5*tamanhoX, scX*175*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)	
	dxDrawRectangle(scX*480*tamanhoX, scY*175*tamanhoX, scX*150*tamanhoX, scY*25*tamanhoX, tocolor(0, 0, 0, 125), false) 
	dxDrawBorderedText(tamanhoX,"Preço", scX*850*tamanhoX, scY*362.5*tamanhoX, scX*175*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)	
		
		if preco[carro] then
		p = preco[carro]
		else
		p = getVehicleHandling(carro).monetary
		end
	dxDrawBorderedText(tamanhoX,"$"..p, scX*1000*tamanhoX, scY*362.5*tamanhoX, scX*175*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)	
		
	end

dxDrawRectangle(scX*1*tamanhoX, scY*1*tamanhoX, scX*112.5*tamanhoX, scY*1000*tamanhoX, tocolor(0, 0, 0, 125), false) 

	--if tabTemporal and tabTemporal[getVehicleType(carro)] then
	if carro then
	i = 0
	local tab = tabTemporal[getVehicleType(carro)]
		for aba, vala in pairs (tab) do
		local nome = vala[1]
		local v1 = vala.valor[1]
		local v2 =  vala.valor[2]
		local hand = carro:getHandling()[nome]
			if hand and nome ~= "monetary" then
			counter = 0
				for aga=v1, v2 do
				counter = counter + 1
				end
			local porcentagem = hand/counter
				for a, v in pairs (nomes) do
					if nome == v then
					nome = doCapitalizing(a)
					if nome == "Massa" then nome = "Peso" end
					end
				end
			i = i + 1
			dxDrawBorderedText(tamanhoX*0.5, nome, scX*50*tamanhoX, scY*30+(i*55)*tamanhoY, scX*62*tamanhoX, scY*12.5*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*0.75*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)

			dxDrawRectangle(scX*25*tamanhoX, scY*37+(i*27.5)*tamanhoY, scX*62*tamanhoX, scY*12.5*tamanhoY, tocolor(0, 0, 0, 255), false) 
			dxDrawRectangle(scX*27*tamanhoX, scY*40.5+(i*27.5)*tamanhoY, scX*58*tamanhoX, scY*8*tamanhoY,tocolor(100, 100, 100, 255), false) 
				if porcentagem > 0 then
				dxDrawRectangle(scX*27*tamanhoX, scY*40.5+(i*27.5)*tamanhoY, scX*58*tamanhoX*porcentagem, scY*8*tamanhoY, tocolor(255,255,255, 255), false, false) 
				end
			hand = round(hand, 2)
			v2 = math.ceil(v2, 2)
			dxDrawBorderedText(tamanhoX*0.75, hand, scX*50*tamanhoX, scY*72.5+(i*55)*tamanhoY, scX*62*tamanhoX, scY*12.5*tamanhoY, 0xFFBBD6FF, scX*0.6*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)

			else
			end
		end
		dxDrawBorderedText(tamanhoX,getElementData (carro, "Nome") or getVehicleNameFromModel (getElementModel(carro)), scX*-62.5*tamanhoX, scY*15*tamanhoX, scX*175*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "diploma", "center", "center", false,false, false, false, false)
		
	end
dxSetBlendMode("blend")
dxSetRenderTarget()
end

local ax, ay = guiGetScreenSize ()
renderDados = dxCreateRenderTarget(ax, ay, true)
	if renderDados then
	updateRenderCompra()
	end
	
	function renderizarDados ()
		if mostrarVenda == true then
		dxDrawImage (0,0, ax,ay, renderDados)
		end
	end

	function renderCompra ()
		if chegou == true then
			if mostrarPainel ~= true then
			dxDrawRectangle(scX*480*tamanhoX, scY*125*tamanhoX, scX*150*tamanhoX, scY*25*tamanhoX, tocolor(0, 0, 0, 150), false) 
			dxDrawImage ( scX*605*tamanhoX, scY*125*tamanhoX, scX*25*tamanhoX, scY*25*tamanhoX, tecla, 0, 0, 0, tocolor ( 255, 255, 255, 255 ))
			dxDrawBorderedText(tamanhoX,controles.comprar, scX*1200*tamanhoX, scY*255*tamanhoX, scX*35*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
			dxDrawBorderedText(tamanhoX, conce, scX*900*tamanhoX, scY*262.5*tamanhoX, scX*175*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)	
			elseif mostrarPainel == true then
			dxDrawRectangle(scX*480*tamanhoX, scY*125*tamanhoX, scX*150*tamanhoX, scY*25*tamanhoX, tocolor(0, 0, 0, 125), false) 
			dxDrawRectangle(scX*480*tamanhoX, scY*150*tamanhoX, scX*150*tamanhoX, scY*(opcoes-1)*25*tamanhoX, tocolor(0, 0, 0, 125), false) 
			--mostruario
			dxDrawImage ( scX*605*tamanhoX, scY*(100+(25*(selecao or 2)))*tamanhoX, scX*25*tamanhoX, scY*25*tamanhoX, tecla, 0, 0, 0, tocolor ( 255, 255, 255, 255 ))
			dxDrawBorderedText(tamanhoX,controles.comprar, scX*1200*tamanhoX, scY*(255+(50*((selecao or 2 )-1 or 1)))*tamanhoX, scX*35*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
				if selecao == 1 then
				dxDrawBorderedText(tamanhoX,"▼", scX*1200*tamanhoX, scY*(255+(50*(selecao or 1)))*tamanhoX, scX*35*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
				dxDrawBorderedText(tamanhoX,"Retornar", scX*900*tamanhoX, scY*262.5*tamanhoX, scX*175*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)	
				dxDrawBorderedText(tamanhoX,"Escolher", scX*900*tamanhoX, scY*312.5*tamanhoX, scX*175*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)	
				elseif selecao == opcoes then
				dxDrawImage (0,0, ax,ay, renderDados)
				else
				dxDrawBorderedText(tamanhoX,"▲", scX*1200*tamanhoX, scY*(255+(50*(selecao-2 or 1)))*tamanhoX, scX*35*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
				dxDrawBorderedText(tamanhoX,"▼", scX*1200*tamanhoX, scY*(255+(50*(selecao or 1)))*tamanhoX, scX*35*tamanhoX, scY*15*tamanhoX, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
				end
			end
		return
		end
	end

barrinhas = {
{"mass", valor = {	1.0,	100000.0	}},
{"turnMass", valor = {0.0,	1000000.0}},
{"dragCoeff	", valor = {	-200.0,	200.0	}},
{"tractionMultiplier", valor = {	-100000.0,	100000.0	}},
{"tractionLoss", valor = {	0.0,	100.0	}},
{"tractionBias", valor = {	0.0,	1.0	}},
{"numberOfGears",	valor = {1,	5}},	
{"maxVelocity", valor = {	0.1,	240.0	}},
{"engineAcceleration", valor = {	0.0,	100000.0	}},
{"engineInertia", valor = {	-1000.0,	1000.0	}},
{"brakeDeceleration	", valor = {	0.1,	100000.0	}},
{"brakeBias", valor = {	0.0,	1.0	}},
{"steeringLock", valor = {	0.0,	360.0	}},
{"suspensionForceLevel", valor = {	0.0,	100.0	}},
{"suspensionDamping	", valor = {	0.0,	100.0	}},
{"suspensionHighSpeedDamping", valor = {	0.0,	600.0	}},
{"suspensionUpperLimit", valor = {	-50.0,	50.0 }},
{"suspensionLowerLimit", valor = {	-50.0,	50.0 }},
{"suspensionFrontRearBias", valor = {	0.0,	1.0	}},
{"suspensionAntiDiveMultiplier	", valor = {	0.0,	30.0	}},
{"seatOffsetDistance	", valor = {	-20.0,	20.0	}},
{"collisionDamageMultiplier	", valor = {	0.0,	10.0	}},
{"monetary", valor = {0,	230195200}},
}

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

							
	for i=1, #vehicleIds do
	tab = nil
		if not tabTemporal[getVehicleType (vehicleIds[i])] then
		tabTemporal[getVehicleType (vehicleIds[i])] = {}
			for aba, vala in pairs (barrinhas) do
			local nome = vala[1]
			table.insert (tabTemporal[getVehicleType (vehicleIds[i])], {nome, valor = {vala.valor[1], 0}})
			end
		end
	local tab = tabTemporal[getVehicleType (vehicleIds[i])]
		if tab then
			for aba, vala in pairs (barrinhas) do
			local nome = vala[1]
			local v1, v2 = vala.valor[1], vala.valor[2]
			local hand = getOriginalHandling (vehicleIds[i])[nome]
				if hand then
					for baga, vaga in pairs (tab) do
						if nome == vaga[1] then
							if hand > vaga.valor[2] then
								if nome == "engineInertia" then
								vaga.valor[1] = -150
									if hand > 150 then hand = 150 end
								end
								--if nome == "mass" then
								--vaga.valor[1] = -150
									--if hand > 150 then hand = 150 end
								--end
							vaga.valor[2] = hand
							end
						end
					end
				end
			end
		end
	end


end
--visual
local scX,scY = guiGetScreenSize()
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
addEventHandler('onClientResourceStart', resourceRoot, getScale)

local sx,sy = guiGetScreenSize() 
local px,py = sx,sy
local scX,scY =  (sx/px), (sy/py) 

local ax, ay = guiGetScreenSize ()
renderMensagem = dxCreateRenderTarget(ax, ay, true)
function updateMensagem ()
	if (renderMensagem) then 
	dxSetRenderTarget(renderMensagem, true)
	dxSetBlendMode("modulate_add")
		if isPedDead (localPlayer) then return end
		
		--Roubar
		if (roubar == true or saquear == true)  and isElement (ultimoAlvo) and table.contain (roubavel, ultimoAlvo) then
			if tempo == nil then
			dxDrawRectangle(scX*480*tamanhoX, scY*200*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 200), false) 
			dxDrawImage ( scX*605*tamanhoX, scY*200*tamanhoY, scX*25*tamanhoX, scY*25*tamanhoY, tecla, 0, 0, 0, tocolor ( 255, 255, 255, 255 ))	
			local keys = getBoundKeys("assaltar")
				for key, estado in pairs(keys) do
				acao = key
				end
			dxDrawBorderedText(tamanhoX,acao, scX*1200*tamanhoX, scY*405*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
			dxDrawBorderedText(tamanhoX,"Assaltar", scX*900*tamanhoX, scY*410*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)
			end
		end
		
		--Temporizador
		if tempo ~= nil then
		dxDrawRectangle(scX*480*tamanhoX, scY*200*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 175), false) 
			if assaltado == true then
				if assaltante ~= localPlayer then
				local keys = getBoundKeys("assaltar")
					for key, estado in pairs(keys) do
					acao = key
					end
				dxDrawImage ( scX*605*tamanhoX, scY*200*tamanhoY, scX*25*tamanhoX, scY*25*tamanhoY, tecla, 0, 0, 0, tocolor ( 255, 255, 255, 255 ))
				dxDrawBorderedText(tamanhoX, acao, scX*1200*tamanhoX, scY*405*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
				dxDrawBorderedText(tamanhoX,"Cooperar", scX*900*tamanhoX, scY*410*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)				
				dxDrawBorderedText(tamanhoX,tempo, scX*1000*tamanhoX, scY*411*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)
			
				return
				else
				end
			end
			dxDrawBorderedText(tamanhoX,"Assalto:", scX*900*tamanhoX, scY*410*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)	
			dxDrawBorderedText(tamanhoX,tempo, scX*1000*tamanhoX, scY*411*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)
			
		end
		
		--Coletar
		if objetoColetavel and isElement (objetoColetavel) then
		local keys = getBoundKeys("assaltar")
			for key, estado in pairs(keys) do
			acao = key
			end
		dxDrawRectangle(scX*480*tamanhoX, scY*200*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 200), false) 
		dxDrawImage ( scX*605*tamanhoX, scY*200*tamanhoY, scX*25*tamanhoX, scY*25*tamanhoY, tecla, 0, 0, 0, tocolor ( 255, 255, 255, 255 ))
		dxDrawBorderedText(tamanhoX, acao, scX*1200*tamanhoX, scY*405*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
		dxDrawBorderedText(tamanhoX,"Coletar", scX*900*tamanhoX, scY*410*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)				
		end
		
		--Lavagem
		if mostrarLavagem == true then
		local keys = getBoundKeys("assaltar")
			for key, estado in pairs(keys) do
			acao = key
			end
		dxDrawRectangle(scX*480*tamanhoX, scY*200*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 200), false) 
		dxDrawImage ( scX*605*tamanhoX, scY*200*tamanhoY, scX*25*tamanhoX, scY*25*tamanhoY, tecla, 0, 0, 0, tocolor ( 255, 255, 255, 255 ))
		dxDrawBorderedText(tamanhoX,acao, scX*1200*tamanhoX, scY*405*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
		dxDrawBorderedText(tamanhoX,"Entregar", scX*900*tamanhoX, scY*410*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)				
		end
		
		--cofre
		if chegouCofre == true then
		dxDrawRectangle(scX*480*tamanhoX, scY*200*tamanhoY, scX*150*tamanhoX, scY*25*tamanhoY, tocolor(0, 0, 0, 200), false) 
		dxDrawImage ( scX*605*tamanhoX, scY*200*tamanhoY, scX*25*tamanhoX, scY*25*tamanhoY, tecla, 0, 0, 0, tocolor ( 255, 255, 255, 255 ))
		dxDrawBorderedText(tamanhoX,teclaAcao, scX*1200*tamanhoX, scY*405*tamanhoY, scX*35*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold-small", "center", "center", false,false, false, false, false)
			if cofreAberto == true then
			dxDrawBorderedText(tamanhoX,"Coletar", scX*900*tamanhoX, scY*410*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)			
			else
			dxDrawBorderedText(tamanhoX,"Arrombar", scX*900*tamanhoX, scY*410*tamanhoY, scX*175*tamanhoX, scY*15*tamanhoY, tocolor ( 255, 255, 255, 255 ), scX*1*tamanhoX, "default-bold", "center", "center", false,false, false, false, false)			
			end
		end
	dxSetBlendMode("blend")
	dxSetRenderTarget()
	end
end

function mensagem()
dxDrawImage (0,0, ax,ay, renderMensagem)
end
addEventHandler( "onClientRender", root, mensagem)
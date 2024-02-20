if localPlayer then



local sW, sH = guiGetScreenSize()
local resW, resH = 1920,1080
local x, y = (sW/resW), (sH/resH)

imagens = {

	[1] = "files/ui/tutorial/opening",
	[2] = "files/ui/tutorial/blood_pool",
	[3] = "files/ui/tutorial/health_bar",
	[4] = "files/ui/tutorial/biting",
	[5] = "files/ui/tutorial/hunger_bar",
	[6] = "files/ui/tutorial/blood_bar",
	[7] = "files/ui/tutorial/senses",
	[8] = "files/ui/tutorial/transform",
	[9] = "files/ui/tutorial/weapons",
	
	[10] = "files/ui/tutorial/conclusion",
	

}

tuto = {}
for i=1, #imagens do
tuto[i] = { dxCreateTexture (imagens[i]..".png", "dxt3"), dxCreateTexture (imagens[i].."_text.png", dxt3) }
end

tutoCounter = 1
function tutoRender ()
	if tutoCounter == 5 then
	
	--Frame
	local px,py, sx,sy = unpack (posicoes.hungerFrame)	
	dxDrawImage(x*px, y*py, x*sx, y*sy, hungerFrame, 0, 0, 0, tocolor(255,255, 255), false)
	
	local px,py, sx,sy = unpack (posicoes.hungerFill)
	local h = 40
	local m = 100
	local sx = sx * (h/m)
	dxDrawImage(x*px, y*py, x*sx, y*sy, hungerFill, 0, 0, 0, tocolor(255,255, 255), false)
	
	end

	if tutoCounter == 6 then
	
	--Frame
	local px,py, sx,sy = unpack (posicoes.topFrame)	
	dxDrawImage(x*px, y*py, x*sx, y*sy, topFrame, 0, 0, 0, tocolor(255,255, 255), false)
	
	local px,py, sx,sy = unpack (posicoes.topFill)
	local h = 70
	local m = 100
	local sx = sx * (h/m)
	dxDrawImage(x*px, y*py, x*sx, y*sy, topFill, 0, 0, 0, tocolor(255,255, 255), false)
	
	end
	dxDrawImage(0, 0, sW, sH, tuto[tutoCounter][1] , 0, 0, 0, tocolor(255,255, 255), false)
		if tuto[tutoCounter][2] then
		dxDrawImage(0, 0, sW, sH, tuto[tutoCounter][2], 0, 0, 0, tocolor(255,255, 255), false)
		end
		
		
	
end

local validKeys = {

'mouse_1', 'mouse_2', 'enter', 'backspace'

}

local function digitou (botao, estado)
	if isCursorShowing () or isChatBoxInputActive () then return end
	if estado == true then
		for i=1, #validKeys do
			if botao == validKeys[i] then
				if botao == "backspace" then
				tutoCounter = 1
				tutoOn = false
				removeEventHandler ("onClientRender", root, tutoRender)
				removeEventHandler ("onClientKey", root, digitou)
				return
				end
			tutoCounter = tutoCounter + 1
				if tutoCounter > #tuto then
				tutoCounter = 1
				tutoOn = false
				removeEventHandler ("onClientRender", root, tutoRender)
				removeEventHandler ("onClientKey", root, digitou)
				end
			break
			end
		end
	end
end

tutoOn = false
function tutoS ()
	if tutoOn ~= true then
	tutoCounter = 1
	tutoOn = true
	removeEventHandler ("onClientRender", root, tutoRender)
	addEventHandler ("onClientRender", root, tutoRender)
	addEventHandler ("onClientKey", root, digitou)
	else
	tutoOn = false
	removeEventHandler ("onClientRender", root, tutoRender)
	removeEventHandler ("onClientKey", root, digitou)
	end
end


addEventHandler ("onClientVampireTurning", getRootElement (), function (vampiro, estado)

	if estado == true then
	outputChatBox ("Digite /"..commands.help.." se precisar de ajuda", 255,255,255)
	addCommandHandler (commands.help, tutoS)
	else
	removeCommandHandler (commands.help, tutoS)
	end

end)

end

crosshair = {}
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

--Crosshair
function crosshairIni ()
	if not localPlayer then return end
--Textura espelhada
shaderCrosshair = dxCreateShader(dadosShader, 1, 0, false)
scope = {}
function dxCreateMirrowedTexture (texture)
local a,b = dxGetMaterialSize (texture)
local pixel = dxGetTexturePixels(texture)
local sx,sy = dxGetPixelsSize(pixel)
local tab = {}
	for i=0,sx-1 do      
		tab[i+1] = {}
		for j=0,sy-1 do
		local r,g,b,a = dxGetPixelColor(pixel,(sx-1)-i,j)
		tab[i+1][j+1] = {r,g,b,a}
		end
	end
	--
	for i=1, #tab do
		for j=1, #tab[i] do
		local r,b,g,a = tab[i][j][1], tab[i][j][2], tab[i][j][3], tab[i][j][4]
		dxSetPixelColor (pixel, (sx) - i, (sy) -j, r,g,b,a)
		end
	end
local material = dxCreateTexture (a, b, "dxt3")
dxSetTexturePixels (material, pixel)
return material
end

local ax,ay = guiGetScreenSize()

local textura = "QYre89uWSBEIgaegaqp+phEKvE5IGfoLDZgBsSKs+DHahNJVjlVQ1CLZ6wrMli8X1CcHcWffNAq2Y148RASYbV6LuI+dGKDFk/aTPnGFr1dXsSui47bLhdKnc5We7ihvtnwcFecJ7xe1ckZcnSnRFw1O751D76O5RSBcAhdB6CyFzihKVInb9owrZ7h1mgNV6gU/pqp4WXDzfGq7lEnKUDIkuc0V5n2BD5pmVBJo0iX8+YWOai+PLScHWmQhB621RxcMhVfpMwf57XVerC4d6F8xmiiBxgy/64DAISaxkVPv6LUJcBAof3oXBU5cqY2iiHaqGBp5QlwEkGWeJz0A52BUK+e2YlWLhOtAtOXo+YHdUuAKacjw2A298KT+oCJnwuKme1BiAHO+oHyVf3hLxXPzeYHr1pEdOyvCNfQbZy4L6gEpT/VIbWlFkSWZtyZNPzIfsRe9I4k+/F+NEglO7f6gA8FRUSrhTkJrQY83Jep+2qJdIwW3/ZW+1fqm3ti1A/ZHEL2b5voBjnfRganm1Czgm8iAgyjrG5DPjaZBJYEWzUqyZEvZaeWTnjpN003CYLNEBYKABjHeLVy3ENV/FFTnCKblWQ69RHKhQornzYzm8Ah1LB1r56nG89iw0IbBzl1v5oa4wxnQE7X6yE7jUHw+xDxx0zB8VcqhV/21y36wXFOFEyY/f6KxiTmfs5qNs2Tx+kJAvxwkvHbe+SvhsR5zM4kGyOv/tymh8AtFaZAXgCPQYvtAz7RqeVAQNx+CyXhDrsK8xQUZRxcUZyuG5jqrFNCe5O5/ODTHuqh3+Fk6MvUVHuT8bqD6c8/LfduGp8VzE7TZ4zrXCNH4cxPP/u6X6+N2xx3D3SQ/ejW5u9ToMnRiTi1MoDNANfIBQ7+gRZmLb0xq71NfnUFPBOGV3JtPUZfNBVuzf3qv/kr8y8TYMHnbS4jhmd+MJeA7EqiSrwFNZXMXWjHFxmgH15icxagfYH3KPERWNfVQRxSUiuwjVTAkbb9f+AsEUGXTqq5c7YVo5PVtTuUsH2SU4qBuT79Pdf4e1G2OCfTiGXfWRJjiJmkOVrCZkkkyiW580sHgpzE5uyUa0uvq5xQh4Ci+AP4NGVYbDyisHX9UiM1THquZt9K8hwjx7eYi084qAF3bwXvbLkab1MJHwz5cVhrT+0WTD5ngS+RZZMlbZHueGX304b+aiPs83G15FhcS0X11FmNkXLxxXlnpsPURNS7DsA/7ftsFy9mXxuWEaQL84heDVs4arYAlE/HuboqPBKodq0bgjjvAAoQ8OILKjEIIcHuarvrfS06u6h3PaX0q5D4BIKqR50bys37iLDabdy15xBzKDw=="
local chaveRegistroTXD = "iconemira" 
local txd = teaDecodeBinary(textura,chaveRegistroTXD)
local miraParte1 = dxCreateTexture (txd, "dxt3")
local miraParte2 = dxCreateMirrowedTexture (miraParte1)
miraBasica = dxCreateRenderTarget(ax, ay, true)

	if (miraBasica) then 
	dxSetRenderTarget(miraBasica, true)
	dxSetBlendMode("modulate_add")
	dxDrawImage(0, 0, ax*0.5,ay*0.5, miraParte1)
	dxDrawImage(ax*0.5,ay*0.5, ax*0.5,ay*0.5, miraParte1, 180)
	dxDrawImage(0,ay*0.5, ax*0.5,ay*0.5, miraParte2, 0, 180, -180)
	dxDrawImage(ax*0.5,0, ax*0.5,ay*0.5, miraParte2, 180)
	dxSetBlendMode("blend")
	dxSetRenderTarget()
	end

	for nome, v in pairs (getData()) do
		for k, valor in pairs (v) do
			if k == 'crosshair' then
				if valor and valor ~= nil and valor ~= false then
					if fileExists (valor) then
						local miraParte1 = dxCreateTexture (valor, "dxt3")
						local miraParte2 = dxCreateMirrowedTexture (miraParte1)
						local tex = dxCreateTexture (valor, "dxt3")
						crosshair[nome] = dxCreateRenderTarget(ax, ay, true)
							if (crosshair[nome]) then 
							dxSetRenderTarget(crosshair[nome], true)
							dxSetBlendMode("modulate_add")
							dxDrawImage(0, 0, ax*0.5,ay*0.5, miraParte1)
							dxDrawImage(ax*0.5,ay*0.5, ax*0.5,ay*0.5, miraParte1, 180)
							dxDrawImage(0,ay*0.5, ax*0.5,ay*0.5, miraParte2, 0, 180, -180)
							dxDrawImage(ax*0.5,0, ax*0.5,ay*0.5, miraParte2, 180)
							dxSetBlendMode("blend")
							dxSetRenderTarget()
							end
					else
					crosshair[nome] = miraBasica
					end
				end
			end
			if k == 'scope' then
				if valor and valor ~= nil and valor ~= false then
					if fileExists (valor) then
					scope[nome] = dxCreateTexture(valor)
					end
				end
			end
		end
	end
	
	local valor = 'files/model/crosshair/default/global.png'
	local miraParte1 = dxCreateTexture (valor, "dxt3")
	local miraParte2 = dxCreateMirrowedTexture (miraParte1)
	local tex = dxCreateTexture (valor, "dxt3")
	local nome = 'global'
	crosshair[nome] = dxCreateRenderTarget(ax, ay, true)
		if (crosshair[nome]) then 
		dxSetRenderTarget(crosshair[nome], true)
		dxSetBlendMode("modulate_add")
		dxDrawImage(0, 0, ax*0.5,ay*0.5, miraParte1)
		dxDrawImage(ax*0.5,ay*0.5, ax*0.5,ay*0.5, miraParte1, 180)
		dxDrawImage(0,ay*0.5, ax*0.5,ay*0.5, miraParte2, 0, 180, -180)
		dxDrawImage(ax*0.5,0, ax*0.5,ay*0.5, miraParte2, 180)
		dxSetBlendMode("blend")
		dxSetRenderTarget()
		end



function renderSight ()
	if isPedAiming (localPlayer) then
	local jogador = localPlayer
	local arma, objeto = getPedWeapon (jogador)
		if crosshair[arma] then
		local precisao = getWeaponProperty (objeto, 'accuracy')
		tamanho = 0.125 - (precisao*0.1)
		local tempTimer = getPedWeaponReadyTimer (jogador)
			if isTimer (tempTimer) then
			local tempo = getTimerDetails(tempTimer)
			local rate = getWeaponFiringRate (objeto)
			local v = (1000 - (1000-rate))
			local prog = tempo / v
			tamanho = interpolateBetween (tamanho,0,0, tamanho + ( tamanho - (tamanho * precisao)),0,0, prog,'Linear')
			end
		local x,y,z = getPedTargetStart (jogador)
		local sx,sy = getScreenFromWorldPosition (x,y,z)
			if sx and sy then
				dxDrawImage(sx-(((ax*0.512)*tamanho)*0.5),sy-(((ay*0.37275)*tamanho)*0.5), (ax*0.512)*tamanho, (ay*0.37275)*tamanho, crosshair[arma] or crosshair['global'])
				dxDrawImage(sx-(((ax*0.512)*tamanho)*0.5),sy-(((ay*0.37275)*tamanho)*0.5), (ax*0.512)*tamanho, (ay*0.37275)*tamanho, crosshair['global'])
			end
		end
	end
end
addEventHandler ('onClientPreRender', root, renderSight)

end
crosshairIni()
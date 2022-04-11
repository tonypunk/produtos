if isElement(localPlayer) == false then
local function checarAtt (dados)
	if fileExists (":"..getResourceName (getThisResource()).."/"..codigoProduto..".luac") then
	arquivo = fileOpen(":"..getResourceName (getThisResource()).."/"..codigoProduto..".luac")
	else
	arquivo = fileCreate (":"..getResourceName (getThisResource()).."/"..codigoProduto..".luac")
	end
	if arquivo then
	local d = fileRead (arquivo, fileGetSize (arquivo))
		if d ~= dados then
		fileClose(arquivo)
		fileDelete (":"..getResourceName (getThisResource()).."/"..codigoProduto..".luac")
		arquivo = fileCreate (":"..getResourceName (getThisResource()).."/"..codigoProduto..".luac")
		fileWrite(arquivo, dados)
		restartResource (getThisResource())
		end
	fileFlush(arquivo)
	fileClose(arquivo)
	end
	
	--Proteção
	

		function uas8ya7shsji ()
		PUNKSTUDIOSkoasd9jaindsaj = false
		dbhandler = dbConnect("mysql", "dbname="..sqlDatas["db"]..";host=".. sqlDatas["host"], sqlDatas["user"], sqlDatas["pw"])
		busca = dbPoll( dbQuery(dbhandler, "SELECT * FROM `produtos` WHERE `produto` = '"..codigoProduto.."' ", 1) , -1) 
			if busca then
				for i=1, #busca do
					if busca[i].cliente == Usuario then
					responseData = busca[i].codigo
					estado = true
					break
					end
				end
				if estado == true then
					if not ahsd82hdsnestado then
					ahsd82hdsn ()
					ahsd82hdsnestado = true
					outputDebugString (getResourceName (getThisResource())..": SERVIDOR AUTORIZADO", 4, 0,255,0)
					end
				return
				end
			ahsd82hdsnestado = nil
			PUNKSTUDIOSkoasd9jaindsaj = false
			outputDebugString (getResourceName (getThisResource())..": SERVIDOR NÃO AUTORIZADO",  4, 255,255,0)
			outputDebugString ("Para mais informações acesse: "..(dc or "discord.gg/5z8PKtc27Z"),  4, 255,255,0)
			stopResource(getThisResource())
			else
			ahsd82hdsnestado = nil
			PUNKSTUDIOSkoasd9jaindsaj = false
			outputDebugString (getResourceName (getThisResource())..": SERVIDOR NÃO AUTORIZADO",  4, 255,255,0)
			outputDebugString ("Para mais informações acesse: "..(dc or "discord.gg/5z8PKtc27Z"),  4, 255,255,0)
			stopResource(getThisResource())
			end
		end
		uas8ya7shsji ()
		local timer = setTimer (function ()
		uas8ya7shsji ()
		end, 5000, 0)
end
fetchRemote ( atualizacoes, checarAtt, "", false )
end

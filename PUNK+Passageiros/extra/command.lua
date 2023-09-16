--Setup
comando = "entrar" --nome do comando +passageiros
controle = "h" --tecla associada ao comando +passageiros

--Server
if not localPlayer then

	function exec (jogador, comando)
		if isPedInVehicle (jogador) then
		setPedExitVehicle (jogador)
		else
		findAccess (jogador)
		end
	end
	addCommandHandler (comando, exec)
	
local j = getElementsByType ("player")
	for i=1, #j do
	bindKey (j[i], controle, "down", comando)
	end
	
	function adicionarJogador (mod)
		if mod ~= getThisResource () then return end
	local jogador = source
	bindKey (jogador, controle, "down", comando)
	end
	addEventHandler ("onPlayerResourceStart", getRootElement(), adicionarJogador)

end
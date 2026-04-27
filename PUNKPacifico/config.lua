--Modo pacífico PUNK MTA Studios
-----------------------Inicialização-------------------------
--Descrição: Variaveis de inicialização, não modifique
sim = true --não tocar
nao = false	--não tocar
-------------------------CONFIGURAÇÕES --------------
configuracoes = {
	--
	distancia = 50, --distancia de detecção de atos violentos para previnir alteração do pacífico durante combate
	violencia = 30, -- tempo após alguem causar/sofrer dano proximo ao jogador que poderá ativar o modo pacifico
	transparencia = 175, --valor da transparencia ao entrar no modo pacifico: 0 transparente, 255 opaco
	comando = "pacifico", --comando para entrar/sair no modo pacifico
	tecla = "e", --tecla para ativar/desativar o modo pacifico
	tempo = 3, -- tempo em que a tecla pacifico deve ser pressionada para ser ativada
	ACLs = { --ACLs que podem utilizar o modo pacifico
		"Everyone",
	}
	--
}
-----------------------------------------------------
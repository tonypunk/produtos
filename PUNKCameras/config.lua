-------------INICIALIZAÇÃO------------
sim = true
nao = false
-------------------------------------
-----------Configurações-------------

configuracoes = {
id = "ID",
}

cameras = {
	--
	["Mercadinho"] = { -- ISSO É UM HUB
		acesso = {
		--
			posicao = {1328.927, -1642.255, 22.862}, --posição do marker de acesso
			ACL = {"Admin"}, --ACLs que podem acessar
			comando = "central", --comando para acessar
		},
		--
		cameras = {
			--
			["Camera 1"] = {
				modelo = 1622, --1886, 1616, 2921, 1622
				posicao = {1337.5, -1741.925, 30.5}, --posição do objeto da camera
				rotacao = {0,0,180}, --rotação do objeto da camera
				origem = {1337.462, -1741.451, 29.647}, --origem da visão
				destino = {1388.1, -1732.2, 13.38}, --destino da visão
				audio = 100, --alcance do audio (0 = não tem)
				voz = 100, --alcance da voz (0 = não tem)
				video = sim, --a camera possui video
				frame = sim, --a camera mostra um quadro no meio da tela
				movimento = sim, --a camera pode se mover
				bussola = sim, --a camera possui uma bussola
				zoom = sim, --a camera pode usar zoom
				colorida = sim, --a camera é colorida (sim) ou preto e branca (nao)
				noturna = sim, --a camera possui visão noturna
				infravermelho = sim, --a camera possui infravermelho
				reconhecimento = sim, --a camera possui reconhecimento facial
				raiox = sim, -- a camera possui raio x
			},
			--
			["Camera 2"] = {
				modelo = 1622, --1886, 1616, 2921, 1622
				posicao = {1346.214, -1722.701, 31.84},  --posição do objeto da camera
				rotacao = {0,0,180}, --rotação do objeto da camera
				origem = {1346.214, -1722.701, 31.84}, --origem da visão
				destino = {1356.414, -1726.26, 13.560}, --destino da visão
				audio = 100, --alcance do audio (0 = não tem)
				voz = 100, --alcance da voz (0 = não tem)
				video = nao, --a camera possui video
				frame = nao, --a camera mostra um quadro no meio da tela
				movimento = nao, --a camera pode se mover
				bussola = nao, --a camera possui uma bussola
				zoom = nao, --a camera pode usar zoom
				colorida = nao, --a camera é colorida (sim) ou preto e branca (nao)
				noturna = nao, --a camera possui visão noturna
				infravermelho = nao, --a camera possui infravermelho
				reconhecimento = nao, --a camera possui reconhecimento facial
				raiox = sim, -- a camera possui raio x
			},
			--
		},
		--
	},
	--
}
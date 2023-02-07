--PRÉ-CONFIGURAÇÕES, NÃO MODIFICAR --
sim = true
nao = false
--------------------------------------------------
-------------------------CONFIGURAÇÕES --------------

--Garagens
garagens = {
	configuracoes = {
	dono = sim, --apenas o dono do veiculo pode entrar com ele na garagem
	},
	--
	[1] = {
		--
		icone = {
			id = 35,
			posicao = {901.42126464844, -1203.3391113281, 16.983215332031},
		},
		--
		entrada = {
		
			--
			jogador = {
			posicao = {897.1083984375,-1203.5548095703,16.9765625}, --posição tridimensional (x,y,z) 
			tamanho = 1,
			interior = 0,
			dimensao = 0,
				destino = {
				posicao = {1414.8701171875, 4.1155781745911, 1000.9264526367}, --posição tridimensional (x,y,z) 
				rotacao = 90,
				interior = 1,
				},
			
			},
			--
			veiculo = {
			posicao = {901.42126464844, -1203.3391113281, 16}, --posição tridimensional (x,y,z) 
			tamanho = {2,2},
			interior = 0,
			dimensao = 0,
				destino = {
					posicao = {1402.7320556641, -1.0426858663559, 1000.9106445312}, --posição tridimensional (x,y,z) 
					rotacao = 180,
					interior = 1,
				},
			},
			--
		},
		--
		saida = {
			--
			jogador = {
			posicao = {1418.7347412109, 4.0948181152344, 1001.6666870117}, --posição tridimensional (x,y,z) 
			tamanho = 1,
			interior = 1,
				destino = {
				posicao = {900.72589111328, -1207.0202636719, 16.983215332031}, --posição tridimensional (x,y,z) 
				rotacao = 180,
				interior = 0,
				dimensao = 0,
				},
			
			},
			--
			veiculo = {
			posicao = {1403.1903076172, 3.2535183429718, 1000}, --posição tridimensional (x,y,z) 
			tamanho = {2,2},
			interior = 1,
				destino = {
				posicao = {900.72589111328, -1207.0202636719, 16.983215332031}, --posição tridimensional (x,y,z) 
				rotacao = 180,
				interior = 0,
				dimensao = 0,
				},
			},
			--
		},
		--
	},
	--
	
	--
	[2] = {
		--
		icone = {
			id = 35,
			posicao = {866.385, -1203.74, 16.97},
		},
		--
		entrada = {
		
			--
			jogador = {
			posicao = {862.1083984375,-1203.5548095703,16.9765625}, --posição tridimensional (x,y,z) 
			tamanho = 1,
			interior = 0,
			dimensao = 0,
				destino = {
				posicao = {1414.8701171875, 4.1155781745911, 1000.9264526367}, --posição tridimensional (x,y,z) 
				rotacao = 90,
				interior = 1,
				},
			
			},
			--
			veiculo = {
			posicao = {866.42126464844, -1203.3391113281, 16}, --posição tridimensional (x,y,z) 
			tamanho = {2,2},
			interior = 0,
			dimensao = 0,
				destino = {
					posicao = {1402.7320556641, -1.0426858663559, 1000.9106445312}, --posição tridimensional (x,y,z) 
					rotacao = 180,
					interior = 1,
				},
			},
			--
		},
		--
		saida = {
			--
			jogador = {
			posicao = {1418.7347412109, 4.0948181152344, 1001.6666870117}, --posição tridimensional (x,y,z) 
			tamanho = 1,
			interior = 1,
				destino = {
				posicao = {866.72589111328, -1207.0202636719, 16.983215332031}, --posição tridimensional (x,y,z) 
				rotacao = 180,
				interior = 0,
				dimensao = 0,
				},
			
			},
			--
			veiculo = {
			posicao = {1403.1903076172, 3.2535183429718, 1000}, --posição tridimensional (x,y,z) 
			tamanho = {2,2},
			interior = 1,
				destino = {
				posicao = {866.245, -1207.418, 16.977}, --posição tridimensional (x,y,z) 
				rotacao = 180,
				interior = 0,
				dimensao = 0,
				},
			},
			--
		},
		--
	},
	--
}

--Spray
sprays = {
consertar = sim, --ativar/desativar consertar veiculos no spray (se desativar irá apenas pintá-los)
preco = 100, -- preço para utilizar o pay'n'spray
	nativos = { -- pay 'n' spray nativos do jogo ativar/desativar
	["Idlewood"] = sim,
	["Temple"] = sim,
	["Santa Maria"] = sim,
	["Downtown 1"] = sim,
	["Downtown 2"] = sim,
	["Junipher Hollow"] = sim,
	["Redsands East"] = sim,
	["El Quebrados"] = sim,
	["Fort Carson"] = sim,
	["Dillimore"] = sim,
	},
	custom = { -- pay 'n' spray novos
		--
		{2050.1052246094, -1694.7578125, 13}, --casa do Big Smoke
		--
	}
}

--8 Ball (Carros bomba)
bombas = {
comando = "explodir", --comando para acionar a bomba
tecla = "b", --tecla para acionar a bomba
tempo = 10, -- tempo até que a bomba exploda (segundos)
preco = 500, --preco para instalar a bomba
	nativos = {
	["Unity Station"] = sim,
	["Redsands East"] = sim,
	},
	custom = {--Localizacoes novas
		--
		{2443.1953125, -1965.6999511719, 13.254109382629}, --Beco do Emmet
		--
	},
}

--Blindagem
blindagem = {
	--
	localizacoes = {--posição das oficinas de blindagem
		--
		{
		posicao = {564.744140625, -1275.8173828125, 16.2421875}, --Grotti Importados
		preco = 500, --preço da blindagem
		colisoes = nao, --blindar contra colisões
		lataria = sim, --blindar lataria
		janelas = nao, --blindar janelas
		pneus = nao, --blindar pneus
		perfurantes = {24,25,26,27,30,31,33,34}, --armas que perfuram a blindagem fornecida nesta oficina
		},
		--
		{
		posicao = {1585.3385009766, -1677.9874267578, 4.8969912528992}, --delegacia de Los Santos
		preco = 1000, --preço da blindagem
		colisoes = sim, --blindar contra colisões
		lataria = sim, --blindar lataria
		janelas = sim, --blindar janelas
		pneus = sim, --blindar pneus
		perfurantes = {30,31,33,34}, --armas que perfuram a blindagem fornecida nesta oficina
		},
		--
	},
	--
	nativos = { -- veiculos blindados naturalmente
		--
		[427] = {
		lataria = sim, --blindar lataria
		janelas = sim, --blindar janelas
		pneus = nao, --blindar pneus
		colisoes = nao, --blindar contra colisões
		perfurantes = {30,31}, --armas que perfuram a blindagem deste veiculo
		},
		--
		[490] = {
		lataria = sim, --blindar lataria
		janelas = sim, --blindar janelas
		pneus = sim, --blindar pneus
		colisoes = nao, --blindar contra colisões
		perfurantes = {30,31}, --armas que perfuram a blindagem deste veiculo
		},
		--
		[428] = {
		lataria = sim, --blindar lataria
		janelas = sim, --blindar janelas
		pneus = nao, --blindar pneus
		colisoes = nao, --blindar contra colisões
		perfurantes = {30,31}, --armas que perfuram a blindagem deste veiculo
		},
		--
		[470] = {
		lataria = sim, --blindar lataria
		janelas = sim, --blindar janelas
		pneus = sim, --blindar pneus
		colisoes = nao, --blindar contra colisões
		perfurantes = {30,31}, --armas que perfuram a blindagem deste veiculo
		},
		--
		[432] = {
		lataria = sim, --blindar lataria
		janelas = nao, --blindar janelas
		pneus = sim, --blindar pneus
		colisoes = sim, --blindar contra colisões
		perfurantes = {-1}, --armas que perfuram a blindagem deste veiculo
		},
		--
		[601] = {
		lataria = sim, --blindar lataria
		janelas = sim, --blindar janelas
		pneus = sim, --blindar pneus
		colisoes = sim, --blindar contra colisões
		perfurantes = {35,36}, --armas que perfuram a blindagem deste veiculo
		},
		--
		["Banshee Classic"] = {
		lataria = sim, --blindar lataria
		janelas = sim, --blindar janelas
		pneus = sim, --blindar pneus
		colisoes = sim, --blindar contra colisões
		perfurantes = {30,31,35,36}, --armas que perfuram a blindagem deste veiculo
		},
		--
	},
}

--Dados
elementData = { --tabela de dados para serem salvos através de elementData, gerando compatibilidade com outros mods (exclua se não quiser usar)
dono = "veiculoDono",  --elementData do dono do veiculo
}

--Mensagens -- aqui você pode configurar em qual parte da tela as notificações devem aparecer
posicaoHorizontal = "esquerda" --posições horizontais: "esquerda" "centro" "direita"
posicaoVertial = "topo" --posicoes verticais:"fundo" "centro" "topo"
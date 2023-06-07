-------------INICIALIZAÇÃO------------
sim = true
nao = false
-------------------------------------
-----------Configurações-------------
--
--Fisica
fisica = {
ativado = sim,--ativar/desativar fisica de impactos
forca = 500,-- sensibilidade da batida para o jogador ser arremessado pelo para-brisas
dano = 1 -- fator de dano por queda, o dano é baseado na força da batida e na queda no chão (o dano pode ser suavizado/anulado pelo uso de capacete)
}

--Comandos
comandos = {
cinto = "cinto", -- tecla padrão para afivelar/desafivelar cinto de segurança
}

--Controles
controles = {
cinto = "c", -- tecla padrão para afivelar/desafivelar cinto de segurança
}

--
cintos = {
	--Gray
	["Default"] = {
		--
		aparencia = "arquivos/modelos/default.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/default/left.txd", --Motorista
			[2] = "arquivos/texturas/default/right.txd", --Carona
			[3] = "arquivos/texturas/default/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/default/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/default/belt.txd", --Meio
		},
	},
	--
	["Circular"] = {
		--
		aparencia = "arquivos/modelos/circular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/default/left.txd", --Motorista
			[2] = "arquivos/texturas/default/right.txd", --Carona
			[3] = "arquivos/texturas/default/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/default/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/default/belt.txd", --Meio
		},
	},
	--
	["Losangular"] = {
		--
		aparencia = "arquivos/modelos/losangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/default/left.txd", --Motorista
			[2] = "arquivos/texturas/default/right.txd", --Carona
			[3] = "arquivos/texturas/default/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/default/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/default/belt.txd", --Meio
		},
	},
	--
	["Triangular"] = {
		--
		aparencia = "arquivos/modelos/triangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/default/left.txd", --Motorista
			[2] = "arquivos/texturas/default/right.txd", --Carona
			[3] = "arquivos/texturas/default/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/default/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/default/belt.txd", --Meio
		},
	},
	--
	--Camo
	["Default camo"] = {
		--
		aparencia = "arquivos/modelos/default.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/camo/left.txd", --Motorista
			[2] = "arquivos/texturas/camo/right.txd", --Carona
			[3] = "arquivos/texturas/camo/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/camo/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/camo/belt.txd", --Meio
		},
	},
	--
	["Circular camo"] = {
		--
		aparencia = "arquivos/modelos/circular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/camo/left.txd", --Motorista
			[2] = "arquivos/texturas/camo/right.txd", --Carona
			[3] = "arquivos/texturas/camo/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/camo/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/camo/belt.txd", --Meio
		},
	},
	--
	["Losangular camo"] = {
		--
		aparencia = "arquivos/modelos/losangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/camo/left.txd", --Motorista
			[2] = "arquivos/texturas/camo/right.txd", --Carona
			[3] = "arquivos/texturas/camo/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/camo/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/camo/belt.txd", --Meio
		},
	},
	--
	["Triangular camo"] = {
		--
		aparencia = "arquivos/modelos/triangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/camo/left.txd", --Motorista
			[2] = "arquivos/texturas/camo/right.txd", --Carona
			[3] = "arquivos/texturas/camo/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/camo/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/camo/belt.txd", --Meio
		},
	},
	--
	--Desert
	["Default desert"] = {
		--
		aparencia = "arquivos/modelos/default.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/desert/left.txd", --Motorista
			[2] = "arquivos/texturas/desert/right.txd", --Carona
			[3] = "arquivos/texturas/desert/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/desert/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/desert/belt.txd", --Meio
		},
	},
	--
	["Circular desert"] = {
		--
		aparencia = "arquivos/modelos/circular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/desert/left.txd", --Motorista
			[2] = "arquivos/texturas/desert/right.txd", --Carona
			[3] = "arquivos/texturas/desert/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/desert/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/desert/belt.txd", --Meio
		},
	},
	--
	["Losangular desert"] = {
		--
		aparencia = "arquivos/modelos/losangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/desert/left.txd", --Motorista
			[2] = "arquivos/texturas/desert/right.txd", --Carona
			[3] = "arquivos/texturas/desert/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/desert/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/desert/belt.txd", --Meio
		},
	},
	--
	["Triangular desert"] = {
		--
		aparencia = "arquivos/modelos/triangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/desert/left.txd", --Motorista
			[2] = "arquivos/texturas/desert/right.txd", --Carona
			[3] = "arquivos/texturas/desert/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/desert/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/desert/belt.txd", --Meio
		},
	},
	--
	--Snow
	["Default snow"] = {
		--
		aparencia = "arquivos/modelos/default.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/snow/left.txd", --Motorista
			[2] = "arquivos/texturas/snow/right.txd", --Carona
			[3] = "arquivos/texturas/snow/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/snow/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/snow/belt.txd", --Meio
		},
	},
	--
	["Circular snow"] = {
		--
		aparencia = "arquivos/modelos/circular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/snow/left.txd", --Motorista
			[2] = "arquivos/texturas/snow/right.txd", --Carona
			[3] = "arquivos/texturas/snow/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/snow/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/snow/belt.txd", --Meio
		},
	},
	--
	["Losangular snow"] = {
		--
		aparencia = "arquivos/modelos/losangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/snow/left.txd", --Motorista
			[2] = "arquivos/texturas/snow/right.txd", --Carona
			[3] = "arquivos/texturas/snow/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/snow/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/snow/belt.txd", --Meio
		},
	},
	--
	["Triangular snow"] = {
		--
		aparencia = "arquivos/modelos/triangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/snow/left.txd", --Motorista
			[2] = "arquivos/texturas/snow/right.txd", --Carona
			[3] = "arquivos/texturas/snow/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/snow/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/snow/belt.txd", --Meio
		},
	},
	--
	--Pink
	["Default pink"] = {
		--
		aparencia = "arquivos/modelos/default.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/pink/left.txd", --Motorista
			[2] = "arquivos/texturas/pink/right.txd", --Carona
			[3] = "arquivos/texturas/pink/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/pink/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/pink/belt.txd", --Meio
		},
	},
	--
	["Circular pink"] = {
		--
		aparencia = "arquivos/modelos/circular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/pink/left.txd", --Motorista
			[2] = "arquivos/texturas/pink/right.txd", --Carona
			[3] = "arquivos/texturas/pink/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/pink/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/pink/belt.txd", --Meio
		},
	},
	--
	["Losangular pink"] = {
		--
		aparencia = "arquivos/modelos/losangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/pink/left.txd", --Motorista
			[2] = "arquivos/texturas/pink/right.txd", --Carona
			[3] = "arquivos/texturas/pink/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/pink/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/pink/belt.txd", --Meio
		},
	},
	--
	["Triangular pink"] = {
		--
		aparencia = "arquivos/modelos/triangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/pink/left.txd", --Motorista
			[2] = "arquivos/texturas/pink/right.txd", --Carona
			[3] = "arquivos/texturas/pink/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/pink/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/pink/belt.txd", --Meio
		},
	},
	--
	--Lava
	["Default lava"] = {
		--
		aparencia = "arquivos/modelos/default.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/lava/left.txd", --Motorista
			[2] = "arquivos/texturas/lava/right.txd", --Carona
			[3] = "arquivos/texturas/lava/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/lava/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/lava/belt.txd", --Meio
		},
	},
	--
	["Circular lava"] = {
		--
		aparencia = "arquivos/modelos/circular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/lava/left.txd", --Motorista
			[2] = "arquivos/texturas/lava/right.txd", --Carona
			[3] = "arquivos/texturas/lava/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/lava/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/lava/belt.txd", --Meio
		},
	},
	--
	["Losangular lava"] = {
		--
		aparencia = "arquivos/modelos/losangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/lava/left.txd", --Motorista
			[2] = "arquivos/texturas/lava/right.txd", --Carona
			[3] = "arquivos/texturas/lava/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/lava/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/lava/belt.txd", --Meio
		},
	},
	--
	["Triangular lava"] = {
		--
		aparencia = "arquivos/modelos/triangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/lava/left.txd", --Motorista
			[2] = "arquivos/texturas/lava/right.txd", --Carona
			[3] = "arquivos/texturas/lava/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/lava/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/lava/belt.txd", --Meio
		},
	},
	--
	--Ice
	["Default ice"] = {
		--
		aparencia = "arquivos/modelos/default.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/ice/left.txd", --Motorista
			[2] = "arquivos/texturas/ice/right.txd", --Carona
			[3] = "arquivos/texturas/ice/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/ice/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/ice/belt.txd", --Meio
		},
	},
	--
	["Circular ice"] = {
		--
		aparencia = "arquivos/modelos/circular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/ice/left.txd", --Motorista
			[2] = "arquivos/texturas/ice/right.txd", --Carona
			[3] = "arquivos/texturas/ice/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/ice/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/ice/belt.txd", --Meio
		},
	},
	--
	["Losangular ice"] = {
		--
		aparencia = "arquivos/modelos/losangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/ice/left.txd", --Motorista
			[2] = "arquivos/texturas/ice/right.txd", --Carona
			[3] = "arquivos/texturas/ice/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/ice/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/ice/belt.txd", --Meio
		},
	},
	--
	["Triangular ice"] = {
		--
		aparencia = "arquivos/modelos/triangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/ice/left.txd", --Motorista
			[2] = "arquivos/texturas/ice/right.txd", --Carona
			[3] = "arquivos/texturas/ice/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/ice/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/ice/belt.txd", --Meio
		},
	},
	--
	--Leopard
	["Default leopard"] = {
		--
		aparencia = "arquivos/modelos/default.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/leopard/left.txd", --Motorista
			[2] = "arquivos/texturas/leopard/right.txd", --Carona
			[3] = "arquivos/texturas/leopard/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/leopard/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/leopard/belt.txd", --Meio
		},
	},
	--
	["Circular leopard"] = {
		--
		aparencia = "arquivos/modelos/circular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/leopard/left.txd", --Motorista
			[2] = "arquivos/texturas/leopard/right.txd", --Carona
			[3] = "arquivos/texturas/leopard/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/leopard/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/leopard/belt.txd", --Meio
		},
	},
	--
	["Losangular leopard"] = {
		--
		aparencia = "arquivos/modelos/losangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/leopard/left.txd", --Motorista
			[2] = "arquivos/texturas/leopard/right.txd", --Carona
			[3] = "arquivos/texturas/leopard/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/leopard/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/leopard/belt.txd", --Meio
		},
	},
	--
	["Triangular leopard"] = {
		--
		aparencia = "arquivos/modelos/triangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/leopard/left.txd", --Motorista
			[2] = "arquivos/texturas/leopard/right.txd", --Carona
			[3] = "arquivos/texturas/leopard/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/leopard/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/leopard/belt.txd", --Meio
		},
	},
	--
	--Zebra
	["Default zebra"] = {
		--
		aparencia = "arquivos/modelos/default.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/zebra/left.txd", --Motorista
			[2] = "arquivos/texturas/zebra/right.txd", --Carona
			[3] = "arquivos/texturas/zebra/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/zebra/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/zebra/belt.txd", --Meio
		},
	},
	--
	["Circular zebra"] = {
		--
		aparencia = "arquivos/modelos/circular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/zebra/left.txd", --Motorista
			[2] = "arquivos/texturas/zebra/right.txd", --Carona
			[3] = "arquivos/texturas/zebra/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/zebra/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/zebra/belt.txd", --Meio
		},
	},
	--
	["Losangular zebra"] = {
		--
		aparencia = "arquivos/modelos/losangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/zebra/left.txd", --Motorista
			[2] = "arquivos/texturas/zebra/right.txd", --Carona
			[3] = "arquivos/texturas/zebra/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/zebra/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/zebra/belt.txd", --Meio
		},
	},
	--
	["Triangular zebra"] = {
		--
		aparencia = "arquivos/modelos/triangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/zebra/left.txd", --Motorista
			[2] = "arquivos/texturas/zebra/right.txd", --Carona
			[3] = "arquivos/texturas/zebra/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/zebra/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/zebra/belt.txd", --Meio
		},
	},
	--
	--Gold
	["Default gold"] = {
		--
		aparencia = "arquivos/modelos/default.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/gold/left.txd", --Motorista
			[2] = "arquivos/texturas/gold/right.txd", --Carona
			[3] = "arquivos/texturas/gold/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/gold/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/gold/belt.txd", --Meio
		},
	},
	--
	["Circular gold"] = {
		--
		aparencia = "arquivos/modelos/circular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/gold/left.txd", --Motorista
			[2] = "arquivos/texturas/gold/right.txd", --Carona
			[3] = "arquivos/texturas/gold/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/gold/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/gold/belt.txd", --Meio
		},
	},
	--
	["Losangular gold"] = {
		--
		aparencia = "arquivos/modelos/losangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/gold/left.txd", --Motorista
			[2] = "arquivos/texturas/gold/right.txd", --Carona
			[3] = "arquivos/texturas/gold/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/gold/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/gold/belt.txd", --Meio
		},
	},
	--
	["Triangular gold"] = {
		--
		aparencia = "arquivos/modelos/triangular.dff", --modelo do cinto
		--
		lugares = {
			[1] = "arquivos/texturas/gold/left.txd", --Motorista
			[2] = "arquivos/texturas/gold/right.txd", --Carona
			[3] = "arquivos/texturas/gold/left.txd", --Passageiro esquerda
			[4] = "arquivos/texturas/gold/right.txd", --Passageiro direita
			[5] = "arquivos/texturas/gold/belt.txd", --Meio
		},
	},
	--
}
--

--
acoplagem = {
bone = 3,
posicao = {-0.15,-0.01,0}, --cima/baixo, frente/costas, direita/esquerda
rotacao = {-90,90,0},
}
--

veiculos = {
	--
	[533] = "Default",
	--
	[415] = "Default leopard",
	--
	[411] = "Losangular lava",
	--
	[470] = "Triangular desert",
	--
	[494] = "Circular",
	--
	[467] = "Losangular",
	--
	[573] = "Default pink",
	--
	[425] = "Default camo",
	--
	[480] = "Default pink",
	--
	[452] = "Losangular snow",
	--
}
-------------INICIALIZAÇÃO------------
sim = true
nao = false
-------------------------------------
-----------Configurações-------------
alternarLiberado = sim --liberar alternar pegada da arma independente do skill
--
controles = {
acao = "e", -- tecla de ação (interagir, coletar objetos e armas etc)
alternar = "h", -- tecla para alternar modo da arma
recarregar = "r", --recarregar arma
	jogar = {
		arma = "j",
		municao = "k",
	},	
}
--
armas = { --Localização das armas no mapa
	--
	[22] = { -- Pistola
		interior = 0, --interior global
		dimensao = 0, --dimensao global
		--
		{--Pistola no Emmet
		quantidade = 34, -- quantidade de balas
		posicao = {2444.5280761719, -1970.0482177734, 14}, --posicao
		--interior = 0, --interior (caso queira que apenas essa arma do grupo esteja em um interior diferente)
		--dimensao = 0, --dimensao (caso queira que apenas essa arma do grupo esteja em uma dimensao diferente)
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
		{--Pistola escondida na Grove
		quantidade = 34, -- quantidade de balas
		posicao = {2528.4479980469, -1639.5927734375, 13.915431976318}, --posicao
		--interior = 0, --interior (caso queira que apenas essa arma do grupo esteja em um interior diferente)
		--dimensao = 0, --dimensao (caso queira que apenas essa arma do grupo esteja em uma dimensao diferente)
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
		{--Pistola escondida na favela em Las Colinas
		quantidade = 34, -- quantidade de balas
		posicao = {2423.5290527344, -1113.7592773438, 41.493957519531}, --posicao
		--interior = 0, --interior (caso queira que apenas essa arma do grupo esteja em um interior diferente)
		--dimensao = 0, --dimensao (caso queira que apenas essa arma do grupo esteja em uma dimensao diferente)
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
		--
		{--Pistola da delegacia
		quantidade = 34, -- quantidade de balas
		posicao = {1580.626, -1636.484, 13.5}, --posicao
		--interior = 0, --interior (caso queira que apenas essa arma do grupo esteja em um interior diferente)
		--dimensao = 0, --dimensao (caso queira que apenas essa arma do grupo esteja em uma dimensao diferente)
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
	},
	--
	[25] = { -- Escopeta
		--interior = 0, --interior global
		--dimensao = 0, --dimensao global
		--
		{--Shotgun da delegacia
		quantidade = 12, -- quantidade de balas
		posicao = {1580.626, -1636.484, 13.5}, --posicao
		--interior = 0, --interior (caso queira que apenas essa arma do grupo esteja em um interior diferente)
		--dimensao = 0, --dimensao (caso queira que apenas essa arma do grupo esteja em uma dimensao diferente)
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
	},
	--
	[26] = { -- Cano serrado
		--interior = 0, --interior
		--dimensao = 0, --dimensao
		--
		{--Cano serrado nas docas
		quantidade = 14, -- quantidade de balas
		posicao = {2268.28515625, -2264.935546875, 14.764669418335}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
		{--Cano serrado em cima do club Pig Pen
		quantidade = 14, -- quantidade de balas
		posicao = {2431.3054199219, -1212.7644042969, 36.031314849854}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
	},
	--
	[28] = { -- Uzi
		
		--interior = 0, --interior
		--dimensao = 0, --dimensao
		--
		{--Uzi em baixo da ponte atras da casa do CJ
		quantidade = 60, -- quantidade de balas
		posicao = {2552.2385253906, -1731.4779052734, 6.2421875}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
		{--Uzi em baixo da ponte atras da casa do CJ
		quantidade = 60, -- quantidade de balas
		posicao = {2791.7153320312, -1465.6849365234, 40.0625}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
	},
	--
	[29] = { -- MP5
		--
		--interior = 0, --interior global
		--dimensao = 0, --dimensao global
		--
		{--MP5 em Las Colinas
		quantidade = 60, -- quantidade de balas
		posicao = {2266.7421875, -1028.986328125, 59.287986755371}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
	},
	--
	[32] = { -- Tec-9
		--
		{--Tec-9 na passarela da favela em Las Colinas
		quantidade = 60, -- quantidade de balas
		posicao = {2582.3955078125, -1141.9390869141, 55.59375}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
	},
	--
	--
	[16] = { -- Granada
		--
		{--Las colinas
		quantidade = 5, -- quantidade de balas
		posicao = {2434.1674804688, -1005.5791625977, 54.34375}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
	},
	--
	[41] = { -- Spray
		--
		{--Spray na Grove
		quantidade = 1000, -- quantidade de balas
		posicao = {2530.6520996094, -1715.5196533203, 13.49089717865}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
		{--Spray em Las Colinas
		quantidade = 1000, -- quantidade de balas
		posicao = {2459.3173828125, -1060.4123535156, 59.7421875}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
	},
	--
	[1] = { -- Soqueira
		--
		{--Soqueira na Grove
		quantidade = 1, -- quantidade de balas
		posicao = {2432.7426757812, -1674.8740234375, 13.667181968689}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
	},
	--
	[6] = { -- Pá
		--
		{-- Pá atras da casa do Ryder
		quantidade = 1, -- quantidade de balas
		posicao = {2460.982421875, -1715.0054931641, 13.532577514648}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
	},
	--
	[14] = { -- Flores
		--
		{--Flores em Las Colinas
		quantidade = 1, -- quantidade de balas
		posicao =  {2151.5480957031, -1013.8654785156, 62.765228271484}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
		{--Flores no Parque Glenn
		quantidade = 1, -- quantidade de balas
		posicao = {1991.384765625, -1157.3140869141, 20.999900817871}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
	},
	--
	["Colete"] = {
		--
		{
		quantidade = 1, -- quantidade de balas
		colete = 100,
		posicao =  {2557.5771484375, -1107.5838623047, 63.998783111572}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
		{
		quantidade = 1, -- quantidade de balas
		colete = 100,
		posicao =  {2748.8674316406, -1209.7506103516, 66.71875}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
		{
		quantidade = 1, -- quantidade de balas
		colete = 100,
		posicao = {2547.4758300781, -1607.5119628906, 9.7661952972412}, --posicao
		tempo = 2, --tempo ate que o equipamento resurja (minutos), coloque nao ou exclua esta linha para desativar resurgimento
		},
		--
	},
	--
}
--
handling = { --Handling das armas para preencher as informações insira os valores para as três categorias de habilidade {iniciante, experiente, profissional}
	--
	[22] = { -- Pistola
		--visual
		["modelo"] = nao,
		--utilizacao
		["arremessavel"] = {nao, nao, nao}, --granada, molotov, etc "flag_type_throw" 
		["pulverizavel"] = {nao, nao, nao}, -- spray, extintor, lança chamas etc
		["recarregavel"] = {sim, sim, sim}, -- animação recarregando
		["segurar"] = {nao, nao, nao}, -- segurar a arma com uma ou duas mãos quando não estiver mirando
		["dupla"] = {nao, nao, nao}, -- usar duas armas ao mesmo tempo
		["pente"] = {17, 17, 17}, -- tamanho do pente da arma
		--movimentacao
		["mirar"] = {sim, sim, sim}, -- consegue mirar enquanto se move
		["atirar"] = {nao, sim, sim}, -- consegue atirar enquanto se move
		["pesada"] = {nao, nao, nao}, -- impossível pular
		["agachar"] = {sim, sim, sim}, -- impossível agachar
		["velocidade"] = {1, 1, 1}, -- velocidade de locomoção
		--pontaria
		["manuseio"] = {nao, nao, sim}, -- manusear a arma livremente (uma mão)
		["automatica"] = {sim, sim, sim}, --ativar/desativar mira no meio da tela
		["camera"] = {nao, nao, nao}, -- camera aproximada durante a pontaria
		["distancia"] = {30, 35, 35}, -- alcance da pontaria
		["precisao"] = {1.25, 0.75, 1.0}, -- precisão da mira
		--disparo
		["atordoar"] = {nao, nao, nao}, -- disparos causam lentidão ao alvo
		["inconsistente"] = {nao, sim, sim}, -- velocidade de disparos aleatoria
		["alcance"] = {25, 30, 35}, -- distancia máxima dos disparos
		["dano"] = {25, 25, 25}, -- dano causado pelos disparos
		["espalhar"] = {nao, nao, nao},
		--
	},
	--
	[23] = { -- Pistola silenciada
		--visual
		["modelo"] = nao,
		--utilizacao
		["arremessavel"] = {nao, nao, nao}, --granada, molotov, etc "flag_type_throw" 
		["pulverizavel"] = {nao, nao, nao}, -- spray, extintor, lança chamas etc
		["recarregavel"] = {sim, sim, sim}, -- animação recarregando
		["segurar"] = {nao, nao, nao}, -- segurar a arma com uma ou duas mãos quando não estiver mirando
		["dupla"] = {nao, nao, nao}, -- usar duas armas ao mesmo tempo
		["pente"] = {17, 17, 17}, -- tamanho do pente da arma
		--movimentacao
		["mirar"] = {nao, sim, sim}, -- consegue mirar enquanto se move
		["atirar"] = {nao, nao, sim}, -- consegue atirar enquanto se move
		["pesada"] = {nao, nao, nao},
		["agachar"] = {sim, sim, sim}, -- impossível agachar
		["velocidade"] = {1, 1.2000000476837, 1.5}, -- velocidade de locomoção
		--pontaria
		["manuseio"] = {nao, nao, sim},  -- manusear a arma livremente (uma mão)
		["automatica"] = {sim, sim, sim}, --ativar/desativar mira no meio da tela
		["camera"] = {nao, nao, nao}, -- camera aproximada durante a pontaria
		["distancia"] = {25, 30, 35}, -- alcance da pontaria
		["precisao"] = {1, 1.25, 1.5}, -- precisão da mira
		--disparo
		["atordoar"] = {nao, nao, nao}, -- disparos causam lentidão ao alvo
		["inconsistente"] = {nao, nao, nao}, -- velocidade de disparos aleatoria
		["alcance"] = {30, 35, 35}, -- distancia máxima dos disparos
		["dano"] = {40, 40, 40}, -- dano causado pelos disparos
		["espalhar"] = {nao, nao, nao},
		--
	},
	--
	[24] = { -- Desert Eagle
		--visual
		["modelo"] = nao,
		--utilizacao
		["arremessavel"] = {nao, nao, nao}, --granada, molotov, etc "flag_type_throw" 
		["pulverizavel"] = {nao, nao, nao}, --spray, extintor, lança chamas etc "flag_type_constant"
		["recarregavel"] = {sim, sim, sim}, -- animação recarregando "flag_anim_reload"
		["segurar"] = {nao, nao, nao}, --segurar a arma com uma ou duas mãos quando não estiver mirando "segurar"
		["dupla"] = {nao, nao, nao}, --usar duas armas ao mesmo tempo "flag_type_dual"
		["pente"] = {7, 7, 7}, --  tamanho do pente da arma "maximum_clip_ammo"
		
		--movimentacao
		["mirar"] = {nao, sim, sim}, --consegue mirar enquanto se move "flag_move_and_aim"
		["atirar"] = {nao, nao, sim}, --consegue atirar enquanto se move "flag_move_and_shoot"
		["pesada"] = {nao, nao, nao}, -- impossível pular "flag_type_heavy"
		["agachar"] = {sim, sim, sim}, -- impossível agachar "flag_anim_crouch"
		["velocidade"] = {1, 1.2000000476837, 1.5}, --velocidade de locomoção "move_speed"
		--pontaria
		["manuseio"] = {nao, nao, sim}, --manusear a arma livremente (uma mão)"flag_aim_arm"
		["automatica"] = {sim, sim, sim}, --ativar/desativar mira no meio da tela "flag_aim_no_auto"
		["camera"] = {nao, nao, nao}, --camera aproximada durante a pontaria "flag_aim_1st_person"
		["distancia"] = {25, 30, 35}, --alcance da pontaria "target_range"
		["precisao"] = {0.75, 1, 1.25}, --precisão da mira "accuracy"
		--disparo
		["atordoar"] = {nao, nao, nao}, --disparos causam lentidão ao alvo "flag_shot_slows"
		["inconsistente"] = {nao, nao, nao}, --velocidade de disparos aleatoria "flag_shot_rand_speed"
		["espalhar"] = {nao, nao, nao}, --determina se a pontaria expande-se conforme os tiros "flag_shot_expands"
		["alcance"] = {30, 35, 35}, --distancia máxima dos disparos "weapon_range"
		["dano"] = {70, 140, 140}, --dano causado pelos disparos 'damage'
		--
	},
	--
	[25] = { -- Escopeta
		--utilizacao
		["arremessavel"] = {nao, nao, nao}, --granada, molotov, etc "flag_type_throw" 
		["pulverizavel"] = {nao, nao, nao}, -- spray, extintor, lança chamas etc
		["recarregavel"] = {sim, sim, sim}, -- animação recarregando
		["segurar"] = {nao, nao, nao}, -- segurar a arma com uma ou duas mãos quando não estiver mirando
		["dupla"] = {nao, nao, nao}, -- usar duas armas ao mesmo tempo
		["pente"] = {1, 1, 1}, -- tamanho do pente da arma
		--movimentacao
		["mirar"] = {sim, sim, sim}, -- consegue mirar enquanto se move
		["atirar"] = {nao, sim, sim}, -- consegue atirar enquanto se move
		["pesada"] = {nao, nao, nao}, -- impossível pular
		["agachar"] = {sim, sim, sim}, -- impossível agachar
		["velocidade"] = {1.1, 1.2, 1.3}, -- velocidade de locomoção
		--pontaria
		["manuseio"] = {nao, nao, nao}, -- manusear a arma livremente (uma mão)
		["automatica"] = {sim, sim, sim}, --ativar/desativar mira no meio da tela
		["camera"] = {nao, nao, nao}, -- camera aproximada durante a pontaria
		["distancia"] = {25, 30, 35}, -- alcance da pontaria
		["precisao"] = {0.85, 1.0, 0.975}, -- precisão da mira
		--disparo
		["atordoar"] = {sim, sim, sim}, -- disparos causam lentidão ao alvo
		["inconsistente"] = {nao, nao, sim}, -- velocidade de disparos aleatoria
		["alcance"] = {30, 35, 35}, -- distancia máxima dos disparos
		["dano"] = {10, 10, 10}, -- dano causado pelos disparos
		--
	},
	--
	[26] = { -- Cano serrado
		--utilizacao
		["arremessavel"] = {nao, nao, nao}, --granada, molotov, etc "flag_type_throw" 
		["pulverizavel"] = {nao, nao, nao}, -- spray, extintor, lança chamas etc
		["recarregavel"] = {sim, sim, sim}, -- animação recarregando
		["segurar"] = {sim, sim, sim}, -- segurar a arma com uma ou duas mãos quando não estiver mirando
		["dupla"] = {nao, nao, nao}, -- usar duas armas ao mesmo tempo
		["pente"] = {2, 2, 2}, -- tamanho do pente da arma
		--movimentacao
		["mirar"] = {sim, sim, sim}, -- consegue mirar enquanto se move
		["atirar"] = {nao, sim, sim}, -- consegue atirar enquanto se move
		["pesada"] = {nao, nao, nao}, -- impossível pular
		["agachar"] = {sim, sim, sim}, -- impossível agachar
		["velocidade"] = {1.1, 1.2, 1.3}, -- velocidade de locomoção
		--pontaria
		["manuseio"] = {nao, nao, sim}, -- manusear a arma livremente (uma mão)
		["automatica"] = {sim, sim, sim}, --ativar/desativar mira no meio da tela
		["camera"] = {nao, nao, nao}, -- camera aproximada durante a pontaria
		["distancia"] = {25, 30, 35}, -- alcance da pontaria
		["precisao"] = {1.5, 1, 0.5}, -- precisão da mira
		--disparo
		["atordoar"] = {sim, sim, sim}, -- disparos causam lentidão ao alvo
		["inconsistente"] = {nao, nao, sim}, -- velocidade de disparos aleatoria
		["alcance"] = {30, 35, 35}, -- distancia máxima dos disparos
		["dano"] = {10, 10, 10}, -- dano causado pelos disparos
		--
	},
	--
	[28] = { -- Uzi
		--utilizacao
		["arremessavel"] = {nao, nao, nao}, --granada, molotov, etc "flag_type_throw" 
		["pulverizavel"] = {nao, nao, nao}, -- spray, extintor, lança chamas etc
		["recarregavel"] = {sim, sim, sim}, -- animação recarregando
		["segurar"] = {nao, nao, nao}, -- segurar a arma com uma ou duas mãos quando não estiver mirando
		["dupla"] = {nao, nao, nao}, -- usar duas armas ao mesmo tempo
		["pente"] = {30, 30, 30}, -- tamanho do pente da arma
		--movimentacao
		["mirar"] = {sim, sim, sim}, -- consegue mirar enquanto se move
		["atirar"] = {nao, sim, sim}, -- consegue atirar enquanto se move
		["pesada"] = {nao, nao, nao}, -- impossível pular
		["agachar"] = {sim, sim, sim}, -- impossível agachar
		["velocidade"] = {1.0, 1.0, 1.0}, -- velocidade de locomoção
		--pontaria
		["manuseio"] = {nao, nao, sim}, -- manusear a arma livremente (uma mão)
		["automatica"] = {sim, sim, sim}, --ativar/desativar mira no meio da tela
		["camera"] = {nao, nao, nao}, -- camera aproximada durante a pontaria
		["distancia"] = {30, 35, 35}, -- alcance da pontaria
		["precisao"] = {1.0, 0.75, 1.25}, -- precisão da mira
		--disparo
		["atordoar"] = {sim, sim, sim}, -- disparos causam lentidão ao alvo
		["inconsistente"] = {nao, nao, sim}, -- velocidade de disparos aleatoria
		["alcance"] = {30, 35, 35}, -- distancia máxima dos disparos
		["dano"] = {20, 20, 20}, -- dano causado pelos disparos
		--
	},
	--
	[32] = { -- Tec-9
		--utilizacao
		["arremessavel"] = {nao, nao, nao}, --granada, molotov, etc "flag_type_throw" 
		["pulverizavel"] = {nao, nao, nao}, -- spray, extintor, lança chamas etc
		["recarregavel"] = {sim, sim, sim}, -- animação recarregando
		["segurar"] = {nao, nao, nao}, -- segurar a arma com uma ou duas mãos quando não estiver mirando
		["dupla"] = {nao, nao, nao}, -- usar duas armas ao mesmo tempo
		["pente"] = {30, 30, 30}, -- tamanho do pente da arma
		--movimentacao
		["mirar"] = {sim, sim, sim}, -- consegue mirar enquanto se move
		["atirar"] = {nao, sim, sim}, -- consegue atirar enquanto se move
		["pesada"] = {nao, nao, nao}, -- impossível pular
		["agachar"] = {sim, sim, sim}, -- impossível agachar
		["velocidade"] = {1.0, 1.0, 1.0}, -- velocidade de locomoção
		--pontaria
		["manuseio"] = {nao, nao, sim}, -- manusear a arma livremente (uma mão)
		["automatica"] = {sim, sim, sim}, --ativar/desativar mira no meio da tela
		["camera"] = {nao, nao, nao}, -- camera aproximada durante a pontaria
		["distancia"] = {30, 35, 35}, -- alcance da pontaria
		["precisao"] = {1.0, 0.75, 1.25}, -- precisão da mira
		--disparo
		["atordoar"] = {sim, sim, sim}, -- disparos causam lentidão ao alvo
		["inconsistente"] = {nao, nao, sim}, -- velocidade de disparos aleatoria
		["alcance"] = {30, 35, 35}, -- distancia máxima dos disparos
		["dano"] = {20, 20, 20}, -- dano causado pelos disparos
		--
	},
	--
	[31] = { -- M4
		--utilizacao
		["arremessavel"] = {nao, nao, nao}, --granada, molotov, etc "flag_type_throw" 
		["pulverizavel"] = {nao, nao, nao}, -- spray, extintor, lança chamas etc
		["recarregavel"] = {sim, sim, sim}, -- animação recarregando
		["dupla"] = {nao, nao, nao}, -- usar duas armas ao mesmo tempo
		["manuseio"] = {nao, nao, sim}, -- manusear a arma livremente (uma mão)
		["pente"] = {30, 30, 30}, -- tamanho do pente da arma
		--movimentacao
		["mirar"] = {sim, sim, sim}, -- consegue mirar enquanto se move
		["atirar"] = {nao, sim, sim}, -- consegue atirar enquanto se move
		["pesada"] = {sim, sim, sim}, -- impossível pular
		["agachar"] = {sim, sim, sim}, -- impossível agachar
		["velocidade"] = {0.9, 1, 1.1}, -- velocidade de locomoção
		--pontaria
		["automatica"] = {sim, sim, sim}, --ativar/desativar mira no meio da tela
		["camera"] = {nao, nao, nao}, -- camera aproximada durante a pontaria
		["distancia"] = {90, 90, 90}, -- alcance da pontaria
		["precisao"] = {0.45, 0.65, 1.0}, -- precisão da mira
		--disparo
		["atordoar"] = {nao, nao, nao}, -- disparos causam lentidão ao alvo
		["inconsistente"] = {sim, sim, nao}, -- velocidade de disparos aleatoria
		["alcance"] = {40, 45, 50}, -- distancia máxima dos disparos
		["dano"] = {30, 30, 30}, -- dano causado pelos disparos
		--
	},
	--
}
--
estampas = { --Estampas para armas
blip = 63, -- blip do local de compra das estampas
preco = 0, --irá cobrar o preco x o ID da estampa (exemplo: estampa 3 irá custar 3.000) coloque 0 ou nao se quiser desativar
	--Descrição: Nesta tabela você poderá adicionar ou remover marcadores de acesso, basta preencher como está indicado abaixo
	marcadores = {
		-- Exemplo:
		--		x,			y,		z,		   int,dim,			 ACL (se ativado),	preço1,preço2,preço3,preço4,preço5				
		{ 1365.9, -1283.58, 12.75, 0, 0, "Everyone"},
		{ 2397.85, -1981.26, 12.75, 0, 0, "Grove"},
	},
	--
}
--
headshot = { -- Sistema de headshot
dano = 100, -- quantidade de dano que o headshot tira, 100 causa morte instantanea
tremer = sim, -- se habilitado esta opção faz a camera do alvo tremer ao levar um headshot (true = ativado, false = desativado)
duracao = 2, -- tempo de duração do efeito de tela tremendo (segundos)
armas = {8,24,25,26,27,30,31,33}, -- armas que farão perder a cabeça
}
--
reload = { --Recarregar arma
automatico = sim, --recarregar automaticamente quando o cartucho estiver vazio
manual = sim, --recarregar manualmente
perder = sim, --perder pente da arma descartado
permanente = sim, --não perder as armas quando ficarem sem balas
}
--
hud = {
arma = sim,
municao = sim,
	posicao = {
	x = 0.7915,
	y = 0.191,
	orientacaoX = "left",
	orientacaoY = "top",
	tamanho = 1.8,
	borda = 2.2,
	fonte = "default-bold",
	cor = 0xFFBBD6FF,
	},
}
--
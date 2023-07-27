--PRÉ-CONFIGURAÇÕES, NÃO MODIFICAR --
sim = true
nao = false
--------------------------------------------------
-------------------------CONFIGURAÇÕES --------------
--Capacetes
--


capacetes = {
	--
	["Sportive"] = {
		--
		aparencia = {
			aberto = "arquivos/sportive/sportive_open.dff", --modelo do capacete aberto
			fechado = "arquivos/sportive/sportive_closed.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Branco"] = "arquivos/sportive/textures/white.txd", --textura do capacete
			["Incendiario"] = "arquivos/sportive/textures/flames.txd", --textura do capacete
			["As de espadas"] = "arquivos/sportive/textures/ace.txd", --textura do capacete
			["Caveira"] = "arquivos/sportive/textures/skull.txd", --textura do capacete
			["Carmesim"] = "arquivos/sportive/textures/crimson.txd", --textura do capacete
			["Azul"] = "arquivos/sportive/textures/blue.txd", --textura do capacete
			["Quadriculado"] = "arquivos/sportive/textures/square.txd", --textura do capacete
			["Com estrelas"] = "arquivos/sportive/textures/ace.txd", --textura do capacete
			["Estampado"] = "arquivos/sportive/textures/shatter.txd", --textura do capacete
			["Motoqueiro esp. fosco"] = "arquivos/sportive/textures/mirror_matte.txd", --textura do capacete
			["Motoqueiro preto fosco"] = "arquivos/sportive/textures/matte.txd", --textura do capacete
			["Espelhado brilhoso"] = "arquivos/sportive/textures/mirror.txd", --textura do capacete
			["Moto preto brilhoso"] = "arquivos/sportive/textures/matte_mirror.txd", --textura do capacete
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Off-road"] = {
		--
		aparencia = {
			aberto = "arquivos/off-road/off-road_open.dff", --modelo do capacete aberto
			fechado = "arquivos/off-road/off-road_closed.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Off-road preto fosco"] = "arquivos/off-road/textures/matte.txd",
			["Off-road preto brilhoso"] = "arquivos/off-road/textures/mirror.txd",
			["Western MC amarelo"] = "arquivos/off-road/textures/yellow.txd",
			["Preto"] = "arquivos/off-road/textures/black.txd",
			["Steel Horse laranja"] = "arquivos/off-road/textures/orange.txd",
			["Steel Horse azul"] = "arquivos/off-road/textures/blue.txd",
			["Western MC verde"] = "arquivos/off-road/textures/green.txd",
			["Western MC vermelho"] = "arquivos/off-road/textures/red.txd",
			["Steel Horse preto"] = "arquivos/off-road/textures/gold.txd",
			["Western MC Lilás"] = "arquivos/off-road/textures/pink.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Open-face"] = {
		--
		aparencia = {
			fechado = "arquivos/open-face/open-face.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Aberto azul"] = "arquivos/open-face/textures/blue.txd",
			["Aberto cinza"] = "arquivos/open-face/textures/gray.txd",
			["Aberto preto"] = "arquivos/open-face/textures/black.txd",
			["Aberto branco"] = "arquivos/open-face/textures/white.txd",
			["Aberto laranja"] = "arquivos/open-face/textures/orange.txd",
			["Aberto vermelho"] = "arquivos/open-face/textures/red.txd",
			["Aberto rosa"] = "arquivos/open-face/textures/pink.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Patrol"] = {
		--
		aparencia = {
			fechado = "arquivos/patrol/patrol.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Patrulha azul"] = "arquivos/patrol/textures/blue.txd",
			["Patrulha preto"] = "arquivos/patrol/textures/black.txd",
			["Patrulha branco"] = "arquivos/patrol/textures/white.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Mod"] = {
		--
		aparencia = {
			fechado = "arquivos/mod/mod.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Simbolo mod"] = "arquivos/mod/textures/mod.txd",
			["Faggio mod"] = "arquivos/mod/textures/faggio.txd",
			["Simbolo mod verde"] = "arquivos/mod/textures/mod_green.txd",
			["Faggio mod verde"] = "arquivos/mod/textures/faggio_green.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Short"] = {
		--
		aparencia = {
			fechado = "arquivos/short/short.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Curto"] = "arquivos/short/textures/short.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Short w/ brim"] = {
		--
		aparencia = {
			fechado = "arquivos/short/brim.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Curto com aba"] = "arquivos/short/textures/short.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Short w/ saw"] = {
		--
		aparencia = {
			fechado = "arquivos/short/saw.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Curto com serra"] = "arquivos/short/textures/short.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Short w/ spikes"] = {
		--
		aparencia = {
			fechado = "arquivos/short/spikes.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Curto com spikes"] = "arquivos/short/textures/short.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Dome"] = {
		--
		aparencia = {
			fechado = "arquivos/dome/dome.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Coquinho cromado"] = "arquivos/dome/textures/chrome.txd",
			["Coquinho caveira e cobra"] = "arquivos/dome/textures/snake.txd",
			["Coquinho ás de espadas"] = "arquivos/dome/textures/ace.txd",
			["Coquinho caveira ianque"] = "arquivos/dome/textures/skull.txd",
			["Coquinho crânio de boi"] = "arquivos/dome/textures/bull.txd",
			["Coquinho penas"] = "arquivos/dome/textures/feather.txd",
			["Coquinho verde"] =  "arquivos/dome/textures/green.txd",
			["Coquinho ianque"] = "arquivos/dome/textures/patriot.txd",
			["Coquinho carbono"] = "arquivos/dome/textures/carbon.txd",
			["Coquinho carbono laranja"] = "arquivos/dome/textures/orange.txd",
			["Coquinho preto"] ="arquivos/dome/textures/black.txd",
			["Coquinho zebra"] ="arquivos/dome/textures/zebra.txd",
			["Coquinho dourado"] ="arquivos/dome/textures/purple.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes"] = {
		--
		aparencia = {
			fechado = "arquivos/dome/spikes.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Spikes cromado"] = "arquivos/dome/textures/chrome.txd",
			["Spikes caveira e cobra"] = "arquivos/dome/textures/snake.txd",
			["Spikes ás de espadas"] = "arquivos/dome/textures/ace.txd",
			["Spikes caveira ianque"] = "arquivos/dome/textures/skull.txd",
			["Spikes crânio de boi"] = "arquivos/dome/textures/bull.txd",
			["Spikes penas"] = "arquivos/dome/textures/feather.txd",
			["Spikes verde"] =  "arquivos/dome/textures/green.txd",
			["Spikes ianque"] = "arquivos/dome/textures/patriot.txd",
			["Spikes carbono"] = "arquivos/dome/textures/carbon.txd",
			["Spikes carbono laranja"] = "arquivos/dome/textures/orange.txd",
			["Spikes preto"] ="arquivos/dome/textures/black.txd",
			["Spikes zebra"] ="arquivos/dome/textures/zebra.txd",
			["Spikes dourado"] ="arquivos/dome/textures/purple.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Stunt"] = {
		--
		aparencia = {
			aberto = "arquivos/stunt/stunt_open.dff", --modelo do capacete aberto
			fechado = "arquivos/stunt/stunt_closed.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Retro creme"] = "arquivos/stunt/textures/cream.txd", --textura do capacete
			["Retro cinza"] = "arquivos/stunt/textures/gray.txd", --textura do capacete
			["Retro laranja"] = "arquivos/stunt/textures/orange.txd", --textura do capacete
			["Retro azul claro"] = "arquivos/stunt/textures/teal.txd", --textura do capacete
			["Retro branco"] = "arquivos/stunt/textures/white.txd", --textura do capacete
			["Retro azul"] = "arquivos/stunt/textures/blue.txd", --textura do capacete
			["Retro vermelho"] = "arquivos/stunt/textures/red.txd", --textura do capacete
			["Retro preto"] = "arquivos/stunt/textures/black.txd", --textura do capacete
			["Retro rosa"] = "arquivos/stunt/textures/pink.txd", --textura do capacete
			["Retro dourado"] = "arquivos/stunt/textures/gold.txd", --textura do capacete
			["Retro prateado"] = "arquivos/stunt/textures/silver.txd", --textura do capacete
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Aviator"] = {
		--
		aparencia = {
			aberto = "arquivos/aviator/aviator_open.dff", --modelo do capacete aberto
			fechado = "arquivos/aviator/aviator_closed.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Aviador"] = "arquivos/aviator/textures/default.txd", --textura do capacete
			["Aviador cinza"] = "arquivos/aviator/textures/gray.txd", --textura do capacete
			["Aviador preto"] = "arquivos/aviator/textures/black.txd", --textura do capacete
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Pilot"] = {
		--
		aparencia = {
			aberto = "arquivos/pilot/pilot_open.dff", --modelo do capacete aberto
			fechado = "arquivos/pilot/pilot_closed.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Piloto"] = "arquivos/pilot/textures/default.txd", --textura do capacete
			["Tubarão"] = "arquivos/pilot/textures/shark.txd", --textura do capacete
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Construction"] = {
		--
		aparencia = {
			fechado = "arquivos/construction/construction.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Capacete obra azul"] = "arquivos/construction/textures/blue.txd",
			["Capacete obra branco"] = "arquivos/construction/textures/white.txd",
			["Capacete obra laranja"] = "arquivos/construction/textures/orange.txd",
			["Capacete obra amarelo"] = "arquivos/construction/textures/yellow.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Firefighter"] = {
		--
		aparencia = {
			aberto = "arquivos/firefighter/firefighter_open.dff", --modelo do capacete aberto
			fechado = "arquivos/firefighter/firefighter_closed.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Bombeiro branco e óculos"] = "arquivos/firefighter/textures/white.txd", --textura do capacete
			["Bombeiro laranja e óculos"] = "arquivos/firefighter/textures/orange.txd", --textura do capacete
			["Bombeiro amarelo e óculos"] = "arquivos/firefighter/textures/yellow.txd", --textura do capacete
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Skate"] = {
		--
		aparencia = {
			fechado = "arquivos/skate/skate.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Skate laranjado"] = "arquivos/skate/textures/orange.txd",
			["Skate preto"] = "arquivos/skate/textures/black.txd",
			["Skate branco"] = "arquivos/skate/textures/white.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Roller"] = {
		--
		aparencia = {
			fechado = "arquivos/roller/roller.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Roller branco"] = "arquivos/roller/textures/white.txd",
			["Roller amarelo"] = "arquivos/roller/textures/yellow.txd",
			["Roller azul"] = "arquivos/roller/textures/blue.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["BMX"] = {
		--
		aparencia = {
			fechado = "arquivos/bmx/bmx.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["BMX preto"] = "arquivos/bmx/textures/black.txd",
			["BMX azul"] = "arquivos/bmx/textures/teal.txd",
			["BMX rosa"] = "arquivos/bmx/textures/pink.txd",
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Downhill"] = {
		--
		aparencia = {
			aberto = "arquivos/downhill/downhill_open.dff", --modelo do capacete aberto
			fechado = "arquivos/downhill/downhill_closed.dff", --modelo do capacete fechado
		},
		--
		tipos = {
			["Downhill verde"] = "arquivos/downhill/textures/green.txd", --textura do capacete
			["Downhill branco"] = "arquivos/downhill/textures/white.txd", --textura do capacete
			["Downhill vermelho"] = "arquivos/downhill/textures/red.txd", --textura do capacete
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.075,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
				rotacao = {0,0,-15}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
}
--

veiculos = { --posição dos capacetes no veículo adicione quantos capacetes quiser, inclusive para carros, aviões etc
	--
	[581] = {
		--
		[1] = { --Passageiro que pode usar este capacete
		posicao = {0,0.15,0.525}, --posição do capacete no veiculo
		rotacao = {15,-90,0}, --rotação do capacete no veiculo
		capacete = "Caveira", --tipo de capacete neste passageiro
		rede = sim, --este capacete é armazenado em uma redezinha
		automatico = sim, -- este passageiro veste o capacete automaticamente ao entrar neste banco
		pre = sim, -- se a opção automatica estiver ativa, este capacete é vestido antes de subir ao veiculo
		},
		--
		[2] = { --Passageiro que pode usar este capacete
		posicao = {0,-0.8,0.525}, --posição do capacete no veiculo
		rotacao = {15,-90,0}, --rotação do capacete no veiculo
		capacete = "Incendiario", --tipo de capacete neste passageiro
		rede = sim, --este capacete é armazenado em uma redezinha
		automatico = sim, -- este passageiro veste o capacete automaticamente ao entrar neste banco
		pre = sim, -- se a opção automatica estiver ativa, este capacete é vestido antes de subir ao veiculo
		},
		--
	},
	--
	[462] = {
		--
		[1] = { --Passageiro que pode usar este capacete
		posicao = {0,0.15,-0.1}, --posição do capacete no veiculo
		rotacao = {0,-90,0}, --rotação do capacete no veiculo
		capacete = "Faggio mod", --tipo de capacete neste passageiro
		rede = sim, --este capacete é armazenado em uma redezinha
		automatico = sim, -- este passageiro veste o capacete automaticamente ao entrar neste banco
		pre = sim, -- se a opção automatica estiver ativa, este capacete é vestido antes de subir ao veiculo
		},
		--
		[2] = { --Passageiro que pode usar este capacete
		posicao = {0,-0.5,0.3}, --posição do capacete no veiculo
		rotacao = {0,-90,0}, --rotação do capacete no veiculo
		capacete = "Símbolo mod", --tipo de capacete neste passageiro
		rede = sim, --este capacete é armazenado em uma redezinha
		automatico = sim, -- este passageiro veste o capacete automaticamente ao entrar neste banco
		pre = sim, -- se a opção automatica estiver ativa, este capacete é vestido antes de subir ao veiculo
		},
		--
	},
	--
	[463] = {
		--
		[1] = { --Passageiro que pode usar este capacete
		posicao = {0,0.15,0.3}, --posição do capacete no veiculo
		rotacao = {15,-90,0}, --rotação do capacete no veiculo
		capacete = "Spikes preto", --tipo de capacete neste passageiro
		rede = sim, --este capacete é armazenado em uma redezinha
		automatico = sim, -- este passageiro veste o capacete automaticamente ao entrar neste banco
		pre = sim, -- se a opção automatica estiver ativa, este capacete é vestido antes de subir ao veiculo
		},
		--
		[2] = { --Passageiro que pode usar este capacete
		posicao = {0,-0.8,0.25}, --posição do capacete no veiculo
		rotacao = {0,-90,0}, --rotação do capacete no veiculo
		capacete = "Spikes preto", --tipo de capacete neste passageiro
		rede = sim, --este capacete é armazenado em uma redezinha
		automatico = sim, -- este passageiro veste o capacete automaticamente ao entrar neste banco
		pre = sim, -- se a opção automatica estiver ativa, este capacete é vestido antes de subir ao veiculo
		},
		--
	},
	--
	[586] = {
		--
		[1] = { --Passageiro que pode usar este capacete
		posicao = {0,0.15,0.4}, --posição do capacete no veiculo
		rotacao = {15,-90,0}, --rotação do capacete no veiculo
		capacete = "Retro creme", --tipo de capacete neste passageiro
		rede = sim, --este capacete é armazenado em uma redezinha
		automatico = sim, -- este passageiro veste o capacete automaticamente ao entrar neste banco
		pre = sim, -- se a opção automatica estiver ativa, este capacete é vestido antes de subir ao veiculo
		},
		--
		[2] = { --Passageiro que pode usar este capacete
		posicao = {0,-0.75,0.3}, --posição do capacete no veiculo
		rotacao = {15,-90,0}, --rotação do capacete no veiculo
		capacete = "Retro creme", --tipo de capacete neste passageiro
		rede = sim, --este capacete é armazenado em uma redezinha
		automatico = sim, -- este passageiro veste o capacete automaticamente ao entrar neste banco
		pre = sim, -- se a opção automatica estiver ativa, este capacete é vestido antes de subir ao veiculo
		},
		--
	},
	--
}
--

--Comandos
comandos = {
capacete = "capacete", -- comando padrão para colocar/remover capacete
viseira = "viseira", -- comando padrão para subir/descer a viseira
soltar = "soltar", -- comando padrão para soltar o capacete
armazenar = "guardar", --comando padrão para armazenar o capacete
}

--Controles
controles = {
capacete = "h", -- tecla padrão para colocar/remover capacete
viseira = "x", -- tecla padrão para subir/descer a viseira
}

configuracoes = {

	perder = sim, --perder capacete ao morrer

	attach = function (...)
	return exports.attach:attach (...)
	end,
	
	detach = function (...)
	return exports.attach:detach (...)
	end,
	
	getDetails = function (...)
	return exports.attach:getDetails (...)
	end,
	
}
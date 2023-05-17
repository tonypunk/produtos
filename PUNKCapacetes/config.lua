--PRÉ-CONFIGURAÇÕES, NÃO MODIFICAR --
sim = true
nao = false
--------------------------------------------------
-------------------------CONFIGURAÇÕES --------------
--Capacetes
--
capacetes = {
	--
	--Sportive
	["Branco"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/sportive/sportive.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/sportive/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/details.png",
				cor = {150,0,0,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/paint.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/sportive/sportive_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/sportive/textures/paint.png",
					cor = {0,0,0,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/frame.png",
					cor = {255,0,0,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
					{
					textura = "arquivos/sportive/textures/lock.png",
					cor = {150,0,0,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { -0.022,0,0.075}, --posição da viseira
				rotacao = {-45, 0, 0}, --rotação da viseira
				tamanho = {1, 1.0225, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Incendiario"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/sportive/sportive.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/sportive/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/details.png",
				cor = {50,50,50,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/paint.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/sticker_6.png",
				cor = {255,255,0,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/sticker_7.png",
				cor = {255,0,0,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/sportive/sportive_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/sportive/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
					{
					textura = "arquivos/sportive/textures/lock.png",
					cor = {25,25,25,255},
					},
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { -0.022,0,0.075}, --posição da viseira
				rotacao = {-45, 0, 0}, --rotação da viseira
				tamanho = {1, 1.0225, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["As de espadas"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/sportive/sportive.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/sportive/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/details.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/paint.png",
				cor = {50,50,50,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/sticker_8.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/sportive/sportive_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/sportive/textures/frame.png",
					cor = {175,175,175,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
					{
					textura = "arquivos/sportive/textures/lock.png",
					cor = {175,175,175,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { -0.022,0,0.075}, --posição da viseira
				rotacao = {-45, 0, 0}, --rotação da viseira
				tamanho = {1, 1.0225, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Caveira"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/sportive/sportive.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/sportive/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/details.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/paint.png",
				cor = {50,50,50,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/sticker_9.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/sportive/sportive_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/sportive/textures/frame.png",
					cor = {50,50,50,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
					{
					textura = "arquivos/sportive/textures/lock.png",
					cor = {50,50,50,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { -0.022,0,0.075}, --posição da viseira
				rotacao = {-45, 0, 0}, --rotação da viseira
				tamanho = {1, 1.0225, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Carmesim"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/sportive/sportive.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/sportive/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/details.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/paint.png",
				cor = {50,10,10,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/sticker_2.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/sportive/sportive_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/sportive/textures/frame.png",
					cor = {50,10,10,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
					{
					textura = "arquivos/sportive/textures/lock.png",
					cor = {50,10,10,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { -0.022,0,0.075}, --posição da viseira
				rotacao = {-45, 0, 0}, --rotação da viseira
				tamanho = {1, 1.0225, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Quadriculado"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/sportive/sportive.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/sportive/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/details.png",
				cor = {50,50,50,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/paint.png",
				cor = {10,10,10,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/sticker_3.png",
				cor = {75,90,115,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/sportive/sportive_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/sportive/textures/frame.png",
					cor = {10,10,10,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
					{
					textura = "arquivos/sportive/textures/lock.png",
					cor = {10,10,10,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { -0.022,0,0.075}, --posição da viseira
				rotacao = {-45, 0, 0}, --rotação da viseira
				tamanho = {1, 1.0225, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Com estrelas"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/sportive/sportive.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/sportive/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/details.png",
				cor = {50,50,50,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/paint.png",
				cor = {0,25,60,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/sticker_4.png",
				cor = {0,0,0,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/sticker_5.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/sportive/sportive_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/sportive/textures/frame.png",
					cor = {0,25,60,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
					{
					textura = "arquivos/sportive/textures/lock.png",
					cor = {0,25,60,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { -0.022,0,0.075}, --posição da viseira
				rotacao = {-45, 0, 0}, --rotação da viseira
				tamanho = {1, 1.0225, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Estampado"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/sportive/sportive.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/sportive/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/details.png",
				cor = {0,0,0,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/paint.png",
				cor = {30,30,30,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/sticker_1.png",
				cor = {150,150,150,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/sportive/sportive_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/sportive/textures/frame.png",
					cor = {30,30,30,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
					{
					textura = "arquivos/sportive/textures/lock.png",
					cor = {30,30,30,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { -0.022,0,0.075}, --posição da viseira
				rotacao = {-45, 0, 0}, --rotação da viseira
				tamanho = {1, 1.0225, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Motoqueiro esp. fosco"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/sportive/sportive.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/sportive/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/details.png",
				cor = {0,0,0,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/paint.png",
				cor = {30,30,30,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/sportive/sportive_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/sportive/textures/frame.png",
					cor = {30,30,30,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/visor.png",
					cor = {0,0,0,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/lock.png",
					cor = {30,30,30,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { -0.022,0,0.075}, --posição da viseira
				rotacao = {-45, 0, 0}, --rotação da viseira
				tamanho = {1, 1.0225, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Motoqueiro preto fosco"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/sportive/sportive.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/sportive/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/details.png",
				cor = {0,0,0,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/paint.png",
				cor = {30,30,30,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/sportive/sportive_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/sportive/textures/frame.png",
					cor = {30,30,30,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/visor.png",
					cor = {0,0,0,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/lock.png",
					cor = {30,30,30,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { -0.022,0,0.075}, --posição da viseira
				rotacao = {-45, 0, 0}, --rotação da viseira
				tamanho = {1, 1.0225, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Espelhado brilhoso"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/sportive/sportive.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/sportive/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/details.png",
				cor = {0,0,0,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/paint.png",
				cor = {30,30,30,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/sportive/sportive_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/sportive/textures/frame.png",
					cor = {30,30,30,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/visor.png",
					cor = {0,0,0,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/lock.png",
					cor = {30,30,30,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { -0.022,0,0.075}, --posição da viseira
				rotacao = {-45, 0, 0}, --rotação da viseira
				tamanho = {1, 1.0225, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Moto preto brilhoso"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/sportive/sportive.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/sportive/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/details.png",
				cor = {0,0,0,255},
				},
				--
				{
				textura = "arquivos/sportive/textures/paint.png",
				cor = {30,30,30,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/sportive/sportive_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/sportive/textures/frame.png",
					cor = {30,30,30,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/visor.png",
					cor = {0,0,0,255},
					},
					--
					{
					textura = "arquivos/sportive/textures/lock.png",
					cor = {30,30,30,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { -0.022,0,0.075}, --posição da viseira
				rotacao = {-45, 0, 0}, --rotação da viseira
				tamanho = {1, 1.0225, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	--Off-road
	["Off-road preto fosco"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/off-road/off-road.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/off-road/textures/body.png",
				cor = {75,75,75,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/paint.png",
				cor = {10,10,10,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/brim.png",
				cor = {25,25,25,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/off-road/off-road_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/off-road/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/stripe.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0}, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.065,0.001,0.045}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1.1, 1.1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Off-road preto brilhoso"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/off-road/off-road.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/off-road/textures/body.png",
				cor = {75,75,75,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/paint.png",
				cor = {10,10,10,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/brim.png",
				cor = {25,25,25,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/off-road/off-road_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/off-road/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/stripe.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0}, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.065,0.001,0.045}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1.1, 1.1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Western MC amarelo"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/off-road/off-road.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/off-road/textures/body_2.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/paint_2.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/brim_2.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/off-road/off-road_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/off-road/textures/frame.png",
					cor = {25,25,25,255},
					
					},
					--
					{
					textura = "arquivos/off-road/textures/stripe.png",
					cor = {255,0,0,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0}, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.065,0.001,0.045}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1.1, 1.1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Preto"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/off-road/off-road.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/off-road/textures/body.png",
				cor = {75,75,75,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/paint.png",
				cor = {10,10,10,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/brim.png",
				cor = {25,25,25,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/off-road/off-road_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/off-road/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/stripe.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0}, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.065,0.001,0.045}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1.1, 1.1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Preto luminoso"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/off-road/off-road.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/off-road/textures/body.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/paint.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/brim.png",
				cor = {25,25,25,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/off-road/off-road_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/off-road/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/stripe.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0}, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.065,0.001,0.045}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1.1, 1.1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Steel Horse laranja"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/off-road/off-road.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/off-road/textures/body_3.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/paint_3.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/brim_3.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/off-road/off-road_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/off-road/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/stripe.png",
					cor = {255,0,0,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0}, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.065,0.001,0.045}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1.1, 1.1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Steel Horse azul"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/off-road/off-road.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/off-road/textures/body_1.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/paint_1.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/brim_1.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/off-road/off-road_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/off-road/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/stripe.png",
					cor = {0,0,255,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0}, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.065,0.001,0.045}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1.1, 1.1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Western MC verde"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/off-road/off-road.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/off-road/textures/body_5.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/paint_5.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/brim_5.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/off-road/off-road_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/off-road/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/stripe.png",
					cor = {0,255,0,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0}, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.065,0.001,0.045}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1.1, 1.1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Western MC vermelho"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/off-road/off-road.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/off-road/textures/body_4.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/paint_4.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/brim_4.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/off-road/off-road_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/off-road/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/stripe.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0}, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.065,0.001,0.045}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1.1, 1.1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Steel Horse preto"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/off-road/off-road.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/off-road/textures/body_6.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/paint_6.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/brim_6.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/off-road/off-road_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/off-road/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/stripe.png",
					cor = {255,255,0,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0}, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.065,0.001,0.045}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1.1, 1.1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Western MC Lilás"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/off-road/off-road.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/off-road/textures/body_7.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/paint_7.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/off-road/textures/brim_7.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/off-road/off-road_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/off-road/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/stripe.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/off-road/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0}, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.065,0.001,0.045}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1.1, 1.1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	--Open-face
	["Aberto azul"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/open-face/open-face.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/open-face/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/open-face/textures/paint.png",
				cor = {52,129,140,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/open-face/open-face_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/open-face/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/open-face/textures/visor.png",
					cor = {52,129,140,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {-0.065,0.0025,0.0375}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
	["Aberto cinza"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/open-face/open-face.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/open-face/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/open-face/textures/paint.png",
				cor = {100,100,100,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/open-face/open-face_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/open-face/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/open-face/textures/visor.png",
					cor = {100,100,100,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {-0.065,0.0025,0.0375}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
	["Aberto preto"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/open-face/open-face.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/open-face/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/open-face/textures/paint.png",
				cor = {25,25,25,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/open-face/open-face_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/open-face/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/open-face/textures/visor.png",
					cor = {25,25,25,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {-0.065,0.0025,0.0375}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
	["Aberto branco"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/open-face/open-face.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/open-face/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/open-face/textures/paint.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/open-face/open-face_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/open-face/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/open-face/textures/visor.png",
					cor = {255,255,255,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {-0.065,0.0025,0.0375}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
	["Aberto laranja"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/open-face/open-face.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/open-face/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/open-face/textures/paint.png",
				cor = {255,125,0,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/open-face/open-face_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/open-face/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/open-face/textures/visor.png",
					cor = {255,125,0,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {-0.065,0.0025,0.0375}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
	["Aberto vermelho"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/open-face/open-face.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/open-face/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/open-face/textures/paint.png",
				cor = {150,0,0,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/open-face/open-face_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/open-face/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/open-face/textures/visor.png",
					cor = {150,0,0,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {-0.065,0.0025,0.0375}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
	["Aberto rosa"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/open-face/open-face.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/open-face/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/open-face/textures/paint.png",
				cor = {150,100,150,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/open-face/open-face_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/open-face/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/open-face/textures/visor.png",
					cor = {150,100,150,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {-0.065,0.0025,0.0375}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
	--Patrol
	["Patrulha branco"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/patrol/patrol.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/patrol/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/patrol/textures/paint_1.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/patrol/textures/paint_2.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/open-face/open-face_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/open-face/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/open-face/textures/visor.png",
					cor = {0,0,0,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {-0.065,0.0025,0.0375}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
	["Patrulha preto"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/patrol/patrol.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/patrol/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/patrol/textures/paint_1.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/patrol/textures/paint_2.png",
				cor = {25,25,25,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/open-face/open-face_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/open-face/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/open-face/textures/visor.png",
					cor = {0,0,0,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {-0.065,0.0025,0.0375}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
	["Patrulha azul"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/patrol/patrol.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/patrol/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/patrol/textures/paint_1.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/patrol/textures/paint_2.png",
				cor = {0,45,100,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0.08,0.0}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/open-face/open-face_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/open-face/textures/frame.png",
					cor = {25,25,25,255},
					},
					--
					{
					textura = "arquivos/open-face/textures/visor.png",
					cor = {0,0,0,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {-0.065,0.0025,0.0375}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
	--Mod
	["Símbolo mod"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/mod/mod.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/mod/textures/paint_1.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Faggio mod"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/mod/mod.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/mod/textures/paint_2.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Símbolo mod verde"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/mod/mod.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/mod/textures/paint_3.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Faggio mod verde"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/mod/mod.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/mod/textures/paint_4.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	--Short
	["Curto"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/short/short.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/short/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/short/textures/paint.png",
				cor = {25,25,25,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Curto com aba"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/short/short.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/short/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/short/textures/paint.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/short/textures/brim.png",
				cor = {25,25,25,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Curto com serra"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/short/short.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/short/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/short/textures/paint.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/short/textures/brim.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/short/textures/saw.png",
				cor = {25,25,25,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Curto com spikes"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/short/short.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/short/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/short/textures/paint.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/short/textures/brim.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/short/textures/spikes.png",
				cor = {25,25,25,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	--Dome
	["Coquinho cromado"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/paint.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/dome/textures/body.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Coquinho caveira e cobra"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_1.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Coquinho ás de espadas"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_2.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Coquinho caveira ianque"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_3.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Coquinho crânio de boi"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_4.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Coquinho penas"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_5.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Coquinho verde"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/paint.png",
				cor = {0,30,0,255},
				},
				--
				{
				textura = "arquivos/dome/textures/body.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Coquinho ianque"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_6.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Coquinho carbono laranja"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_7.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Coquinho carbono"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_8.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Coquinho preto"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/paint.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/dome/textures/body.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Coquinho zebra"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_9.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Coquinho dourado"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/dome.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_10.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes cromado"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/paint.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/dome/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/dome/textures/spikes.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	
	["Spikes caveira e cobra"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_1.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes ás de espadas"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_2.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes caveira ianque"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_3.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes crânio de boi"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_4.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes penas"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_5.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes verde"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/paint.png",
				cor = {0,30,0,255},
				},
				--
				{
				textura = "arquivos/dome/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/dome/textures/spikes.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes ianque"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_6.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes carbono laranja"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_7.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes carbono"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_8.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes preto"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/paint.png",
				cor = {25,25,25,255},
				},
				--
				{
				textura = "arquivos/dome/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/dome/textures/spikes.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes zebra"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_9.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Spikes dourado"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/dome/spiked.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/dome/textures/sticker_10.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	--Stunt
	["Retro creme"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/stunt/stunt.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/stunt/textures/paint_1.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/stunt/stunt_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/stunt/textures/paint_1.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0.05,0.01}, --posição da viseira
				rotacao = {0, 0, -30}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Retro cinza"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/stunt/stunt.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/stunt/textures/paint_2.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/stunt/stunt_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/stunt/textures/paint_2.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0.05,0.01}, --posição da viseira
				rotacao = {0, 0, -30}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Retro laranja"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/stunt/stunt.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/stunt/textures/paint_3.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/stunt/stunt_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/stunt/textures/paint_3.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0.05,0.01}, --posição da viseira
				rotacao = {0, 0, -30}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Retro azul claro"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/stunt/stunt.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/stunt/textures/paint_4.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/stunt/stunt_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/stunt/textures/paint_4.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0.05,0.01}, --posição da viseira
				rotacao = {0, 0, -30}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Retro branco"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/stunt/stunt.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/stunt/textures/paint_5.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/stunt/stunt_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/stunt/textures/paint_5.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0.05,0.01}, --posição da viseira
				rotacao = {0, 0, -30}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Retro azul"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/stunt/stunt.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/stunt/textures/paint_6.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/stunt/stunt_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/stunt/textures/paint_6.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0.05,0.01}, --posição da viseira
				rotacao = {0, 0, -30}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Retro vermelho"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/stunt/stunt.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/stunt/textures/paint_7.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/stunt/stunt_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/stunt/textures/paint_7.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0.05,0.01}, --posição da viseira
				rotacao = {0, 0, -30}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Retro preto"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/stunt/stunt.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/stunt/textures/paint_8.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/stunt/stunt_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/stunt/textures/paint_8.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0.05,0.01}, --posição da viseira
				rotacao = {0, 0, -30}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Retro rosa"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/stunt/stunt.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/stunt/textures/paint_9.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/stunt/stunt_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/stunt/textures/paint_9.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0.05,0.01}, --posição da viseira
				rotacao = {0, 0, -30}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Retro dourado"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/stunt/stunt.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/stunt/textures/paint_11.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/stunt/stunt_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/stunt/textures/paint_10.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0.05,0.01}, --posição da viseira
				rotacao = {0, 0, -30}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Retro prateado"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/stunt/stunt.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/stunt/textures/paint_10.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/stunt/stunt_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/stunt/textures/paint_11.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0.05,0.01}, --posição da viseira
				rotacao = {0, 0, -30}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	--Construction
	["Capacete obra azul"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/construction/construction.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/construction/textures/paint.png",
				cor = {0, 150, 255, 255},
				},
				--
				{
				textura = "arquivos/construction/textures/stripe.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0325,-0.02,0.05 }, --posição do capacete na cabeça
				rotacao = {10,-5,-75}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Capacete obra branco"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/construction/construction.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/construction/textures/paint.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/construction/textures/stripe.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0325,-0.02,0.05 }, --posição do capacete na cabeça
				rotacao = {10,-5,-75}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Capacete obra laranja"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/construction/construction.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/construction/textures/paint.png",
				cor = {255,100,0,255},
				},
				--
				{
				textura = "arquivos/construction/textures/stripe.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0325,-0.02,0.05 }, --posição do capacete na cabeça
				rotacao = {10,-5,-75}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Capacete obra amarelo"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/construction/construction.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/construction/textures/paint.png",
				cor = {255,255,0,255},
				},
				--
				{
				textura = "arquivos/construction/textures/stripe.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0325,-0.02,0.05 }, --posição do capacete na cabeça
				rotacao = {10,-5,-75}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	--Fireman
	["Bombeiro branco e óculos"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/firefighter/firefighter.dff", --modelo do capacete
			colisao = "arquivos/firefighter/firefighter.col", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/firefighter/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/firefighter/textures/paint.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.02,-0.02,0 }, --posição do capacete na cabeça
				rotacao = {10,-5,-75}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/firefighter/firefighter_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/firefighter/textures/body.png",
					cor = {255,255,255,255},
					},
					--
					{
					textura = "arquivos/firefighter/textures/visor.png",
					cor = {255,255,255,50},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0 }, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0.7, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0.004,0,-0.06}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0.7, 0.7, 0.7}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
		estatisticas = { --Sistema: a resistência representa quanto dano de uma vez o capacete consegue suportar sem ser danificado; a durabilidade corresponde a vida do capcete que é subtraida quando este falha em previnir dano com a resistencia
		resistencia = 4, --quanto dano o capacete consegue prevenir (Exemplo: você leva um tiro na cabeça que tira 100 de dano, você só irá levar 50 de dano
		durabilidade = 300, --quanto dano o capacete consegue sofrer antes de quebrar. Quando não houver mais vida o capacete não previne mais dano
		},
		--
	},
	--
	["Bombeiro laranja e óculos"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/firefighter/firefighter.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/firefighter/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/firefighter/textures/paint.png",
				cor = {255,100,0,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.02,-0.02,0 }, --posição do capacete na cabeça
				rotacao = {10,-5,-75}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/firefighter/firefighter_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/firefighter/textures/body.png",
					cor = {255,255,255,255},
					},
					--
					{
					textura = "arquivos/firefighter/textures/visor.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0 }, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0.004,0,-0.06}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0.7, 0.7, 0.7}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Bombeiro amarelo e óculos"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/firefighter/firefighter.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/firefighter/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/firefighter/textures/paint.png",
				cor = {255,255,0,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.02,-0.02,0 }, --posição do capacete na cabeça
				rotacao = {10,-5,-75}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/firefighter/firefighter_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/firefighter/textures/body.png",
					cor = {255,255,255,255},
					},
					--
					{
					textura = "arquivos/firefighter/textures/visor.png",
					cor = {255,255,255,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0 }, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0.004,0,-0.06}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0.7, 0.7, 0.7}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	--Pilot
	["Aviador"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/aviator/aviator.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/aviator/textures/paint.png",
				cor = {130,120,115,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.020,0.09,-0.025}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/aviator/aviator_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/aviator/textures/visor.png",
					cor = {255,255,255,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0 }, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.035,0.001,-0.0675}, --posição da viseira
				rotacao = {45,0,0}, --rotação da viseira
				tamanho = {1, 1.01, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Aviador cinza"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/aviator/aviator.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/aviator/textures/paint.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.020,0.09,-0.025}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/aviator/aviator_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/aviator/textures/visor.png",
					cor = {255,255,255,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0 }, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.035,0.001,-0.0675}, --posição da viseira
				rotacao = {45,0,0}, --rotação da viseira
				tamanho = {1, 1.01, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Aviador preto"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/aviator/aviator.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/aviator/textures/paint.png",
				cor = {50,50,50,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.020,0.09,-0.025}, --posição do capacete na cabeça
				rotacao = {0,90,-10}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/aviator/aviator_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/aviator/textures/visor.png",
					cor = {255,255,255,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0 }, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.035,0.001,-0.0675}, --posição da viseira
				rotacao = {45,0,0}, --rotação da viseira
				tamanho = {1, 1.01, 1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Piloto"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/pilot/pilot.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/pilot/textures/body.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.05,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/pilot/pilot_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/pilot/textures/body.png",
					cor = {255,255,255,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = { 0,0,0 }, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {0, 0, 0}, --tamanho da viseira quando está aberta
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = { 0,0,0 }, --posição da viseira
				rotacao = {0, 0, 0}, --rotação da viseira
				tamanho = {1, 1, 1}, --tamanho da viseira quando está aberta
				}
				--
			},
			--
		},
		--
	},
	--
	--Sports
	["Skate laranjado"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/skate/skate.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/skate/textures/paint_1.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.06,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Skate preto"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/skate/skate.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/skate/textures/paint_2.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.06,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Skate branco"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/skate/skate.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/skate/textures/paint_3.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.06,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["BMX preto"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/bmx/bmx.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/bmx/textures/paint_1.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.06,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["BMX azul"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/bmx/bmx.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/bmx/textures/paint_2.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.06,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["BMX rosa"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/bmx/bmx.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/bmx/textures/paint_3.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.06,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Roller branco"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/roller/roller.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/roller/textures/paint_1.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.06,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Roller amarelo"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/roller/roller.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/roller/textures/paint_2.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.06,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Roller azul"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/roller/roller.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/roller/textures/paint_3.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.06,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
	},
	--
	["Downhill verde"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/downhill/downhill.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/downhill/textures/paint_1.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.06,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/downhill/downhill_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/downhill/textures/paint_1.png",
					cor = {0,0,0,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
	["Downhill branco"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/downhill/downhill.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/downhill/textures/paint_2.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.06,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/downhill/downhill_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/downhill/textures/paint_2.png",
					cor = {0,0,0,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
	["Downhill vermelho"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/downhill/downhill.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/downhill/textures/paint_3.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.0225,0.06,0}, --posição do capacete na cabeça
				rotacao = {12.5,0,-90}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/downhill/downhill_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/downhill/textures/paint_3.png",
					cor = {0,0,0,255},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está aberta
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está aberta
				},
				--
			},
			--
		},
		--
	},
	--
}
--

--Sportive 481, 521, 522, 461, 571
-- veiculo : 481, boneco : 20 cenario: club

--Off-road 468, 471, 568, 424
-- veiculo : 471, boneco : 97 cenario: praia

--Open-face 448
--veiculo: 462, boneco cenario: barzinho

--Patrol 523
--Mod 462
--Short 509
--Dome 463
--Stunt 586, 494, 502, 503
--Construction 524, 486, 406, 485, 552
--Fireman 407, 544
--Pilot 520, 425, 513
--Sports 509, 481, 510

veiculos = { --posição dos capacetes no veículo adicione quantos capacetes quiser, inclusive para carros, aviões etc
	--
	[581] = {
		--
		[1] = { --Passageiro que pode usar este capacete
		posicao = {0,0.15,0.5}, --posição do capacete no veiculo
		rotacao = {0,0,90}, --rotação do capacete no veiculo
		capacete = "Caveira", --tipo de capacete neste passageiro
		rede = sim, --este capacete é armazenado em uma redezinha
		automatico = sim, -- este passageiro veste o capacete automaticamente ao entrar neste banco
		pre = sim, -- se a opção automatica estiver ativa, este capacete é vestido antes de subir ao veiculo
		},
		--
		[2] = { --Passageiro que pode usar este capacete
		posicao = {-0.3,0.45,0.45}, --posição do capacete no veiculo
		rotacao = {180,90,-180}, --rotação do capacete no veiculo
		capacete = "Incendiario", --tipo de capacete neste passageiro
		rede = nao, --este capacete é armazenado em uma redezinha
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

--[[
["SWAT"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/swat/swat.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/swat/textures/body.png",
				cor = {255,255,255,255},
				},
				--
				{
				textura = "arquivos/swat/textures/paint.png",
				cor = {25,25,25,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0,0.0275}, --posição do capacete na cabeça
				rotacao = {0,90,-12.5}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/swat/swat_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/swat/textures/body.png",
					cor = {255,255,255,255},
					},
					--
					{
					textura = "arquivos/swat/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {-0.005,0,-0.02}, --posição do capacete na cabeça
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	["Helicoptero"] = {
		--
		aparencia = { --aparencia do capacete
			tamanho = {1,1,1}, --tamanho do capacete
			modelo = "arquivos/chopper/chopper.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 0, --nivel de reflexo (0-255)
			pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
				--
				{
				textura = "arquivos/chopper/textures/paint.png",
				cor = {255,255,255,255},
				},
				--
			},
		},
		--
		acoplagem = { --posições do capacete na cabeça e na mão
			--
			["cabeça"] = { --posicao do capacete na cabeça
				posicao = {0.025,0,0.0275}, --posição do capacete na cabeça
				rotacao = {0,90,-5}, --rotação do capacete na cabeça
			},
			--
			["mão"] = { --posicao do capacete segurando na mão
				posicao = {0.025,0.025,-0.0275}, --posição do capacete na mao
				rotacao = {0,90,0}, --rotação do capacete na mao
			},
			--
		},
		--
		viseira = { --viseira (pode remover se não for usar)
			--
			aparencia = { --aparencia da viseira
			modelo = "arquivos/chopper/chopper_visor.dff", --modelo do capacete
			textura = "arquivos/helmets.txd", --textura do capacete
			reflexo = 150, --nivel de reflexo (0-255)
				--
				pintura = {  --textura do capacete, pode ser .txd .png .jpg etc
					--
					{
					textura = "arquivos/chopper/textures/visor.png",
					cor = {0,0,0,150},
					},
					--
				},
			},
			--
			acoplagem = { --relação de acoplagem da viseira com relação ao capacete
				--
				["aberta"] = { --acoplagem da viseira quando está aberta
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {0,0,0}, --tamanho da viseira quando está fechada
				},
				--
				["fechada"] = { --acoplagem da viseira quando está fechada
				posicao = {0,0,0}, --posição da viseira
				rotacao = {0,0,0}, --rotação da viseira
				tamanho = {1,1,1}, --tamanho da viseira quando está fechada
				}
				--
			},
			--
		},
		--
	},
	--
	]]

configuracoes = {


	perder = sim, --perder capacete ao morrer

	attach = function (...)
	return exports.PUNKAttach:attach (...)
	end,
	
	detach = function (...)
	return exports.PUNKAttach:detach (...)
	end,
	
	getDetails = function (...)
	return exports.PUNKAttach:getDetails (...)
	end,
	
}
--Script de assaltos a lojas criado por Tonyt_Punk
-----------------------Inicialização-------------------------
--Descrição: Variaveis de inicialização, não modifique
sim = true --não tocar
nao = false	--não tocar
Licensa = "" --Insira sua licensa
-------------------------CONFIGURAÇÕES --------------
--Descrição: Configurações gerais do mod, modifique a vontade

assaltos = {
	--
	["Jogadores"] = {
	acesso = {"Everyone"},
	recompensa = { --Parâmtros da recompensa
		tipo = "Porcentagem", --tipo de contagem ("Quantia" ou "Porcentagem")
		valor = {10,20}, --Valor que será roubado ou porcentagem do dinheiro da vítima que será roubado (0 a 100) 
	},
	bolsa = {"Maço"}, --o que a vítima irá entregar: Maço, Pacote, Mochila, Maleta e Malote
	estrelas = {1,2},	--quantidade média de estrelas colocadas sob o jogador
	distancia = 15, -- distancia maxima que o jogador poderá se distanciar do atendente sem cancelar o assalto
	alarme = nao, -- esta vitima tem acesso a um alarme
	restricao = {0,1,2,3,4,5,6,7,8,9,41,42,43,10,11,12,13,14,15,44,45,46,40 }, -- armas que não intimidam essa vitima
	rastreavel = nao, --ativar/desativar dinheiro sujo
		--
		tempo = {
		duracao = {5}, --tempo médio que vai durar o roubo (segundos)
		disponivel = {10,20}, --tempo que o dinheiro ficará disponivel
		fuga = {30,60}, --tempo médio que vai durar a fuga
		cooldown = {60,120}, --tempo para poder roubar o local novamente (segundos)
		},
		--
		icone = {
		normal = 52,	-- o icone que irá aparecer no mapa
		assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
		},
		--
		frases = {
			--
			assaltante = {
			"Isso é um assalto!",
			"Passa a grana ou estouro seus miolos!",
			},
			--
			vitima = {
			"Pode levar o que quiser, só não me machuque!",
			"Não me mate, por favor!",
			},
			--
		--
		},
		--
	},
	--
	["98¢ Store Aeroporto"] = {
		--
		acesso = {"Everyone"},
		--
		vitimas = {
			--
			{
			nome = "Nick", --nome da vitima
			aparencia = 142, --skin da vitima
			posicao = {1937.287, -2116.439, 13.564}, --posição
			rotacao = 205, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			recompensa = {250,500},	-- grana da recompensa
			bolsa = {"Maço"}, --o que a vítima irá entregar: Maço, Pacote, Mochila, Maleta e Malote
			estrelas = {1},	--quantidade média de estrelas colocadas sob o jogador
			distancia = 50, -- distancia maxima que o jogador poderá se distanciar do atendente sem cancelar o assalto
			alarme = nao, -- esta vitima tem acesso a um alarme
			restricao = {0,1,2,3,4,5,6,7,8,9,41,42,43,10,11,12,13,14,15,44,45,46,40}, -- armas que não intimidam essa vitima
			rastreavel = nao, --ativar/desativar dinheiro sujo
			imortal = sim, --ativar/desativar imortalidade para esta vitima
			balcao = sim,
				--
				tempo = {
				duracao = {5,10}, --tempo médio que vai durar o roubo (segundos)
				disponivel = {30,60}, --tempo que o dinheiro ficará disponivel
				fuga = {30,60}, --tempo médio que vai durar a fuga
				cooldown = {60,120}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
				frases = {
					--
					assaltante = {
					"Fica tranquilo e me passa o dinheiro do patrão!",
					"Isso é um assalto!",
					"Não se meche, é um assalto!",
					},
					--
					vitima = {
					"Por mim essa espelunca que se exploda!",
					"Pode levar, quero mais é que o patrão se foda!",
					},
					--
				--
				}
			},
			--
	
		},
	},
	--
	["Hippy Shopper Glen Park"] = {
		--
		acesso = {"Everyone"},
		--
		vitimas = {
			--
			{
			nome = "Chad", --nome da vitima
			aparencia = 1, --skin da vitima
			posicao = {1822.192, -1436.678, 13.655}, --posição
			rotacao = 354, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			recompensa = {500,750},	-- grana da recompensa
			bolsa = {"Pacote"}, --o que a vítima irá entregar: Maço, Pacote, Mochila, Maleta e Malote
			estrelas = {2},	--quantidade média de estrelas colocadas sob o jogador
			distancia = 50, -- distancia maxima que o jogador poderá se distanciar do atendente sem cancelar o assalto
			alarme = nao, -- esta vitima tem acesso a um alarme
			restricao = {0,1,2,3,4,5,6,7,8,9,41,42,43,10,11,12,13,14,15,44,45,46,40}, -- armas que não intimidam essa vitima
			rastreavel = nao, --ativar/desativar dinheiro sujo
			imortal = sim, --ativar/desativar imortalidade para esta vitima
			balcao = sim,
				--
				tempo = {
				duracao = {10,20}, --tempo médio que vai durar o roubo (segundos)
				disponivel = {45,90}, --tempo que o dinheiro ficará disponivel
				fuga = {45,90}, --tempo médio que vai durar a fuga
				cooldown = {120,180}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
				frases = {
					--
					assaltante = {
					"Rápido, o dinheiro todo na minha mão!",
					"Isso é um assalto!",
					"Fica pianinho, isso é um assalto!",
					},
					--
					vitima = {
					"Hey bro, cuidado com essa coisa!",
					"Calma ai, meu chapa, sem violência!",
					},
					--
				--
				}
			},
			--
	
		},
	},
	--
	["Binco Oeste de Los Santos"] = {
		--
		acesso = {"Everyone"},
		--
		vitimas = {
			--
			{
			nome = "Kyle", --nome da vitima
			aparencia = 211, --skin da vitima
			posicao = {392.835, -1527.743, 32.273}, --posição
			rotacao = 220, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			recompensa = {750,1000},	-- grana da recompensa
			bolsa = {"Mochila"}, --o que a vítima irá entregar: Maço, Pacote, Mochila, Maleta e Malote
			estrelas = {3},	--quantidade média de estrelas colocadas sob o jogador
			distancia = 50, -- distancia maxima que o jogador poderá se distanciar do atendente sem cancelar o assalto
			alarme = sim, -- esta vitima tem acesso a um alarme
			restricao = {0,1,2,3,4,5,6,7,8,9,41,42,43,10,11,12,13,14,15,44,45,46,40}, -- armas que não intimidam essa vitima
			rastreavel = nao, --ativar/desativar dinheiro sujo
			imortal = sim, --ativar/desativar imortalidade para esta vitima
			balcao = sim,
				--
				tempo = {
				duracao = {20,40}, --tempo médio que vai durar o roubo (segundos)
				disponivel = {90,120}, --tempo que o dinheiro ficará disponivel
				fuga = {90,120}, --tempo médio que vai durar a fuga
				cooldown = {180,240}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
				frases = {
					--
					assaltante = {
					"É um assalto, passa a grana!",
					"Isso é um assalto!",
					"Se alguém se mecher vai levar um tiro na cara!",
					},
					--
					vitima = {
					"Por favor, moço, eu só trabalho aqui",
					"Cuidado, ele está armado!",
					},
					--
				--
				}
			},
			--
	
		},
	},
	--
	["24/7 Vinewood"] = {
		--
		acesso = {"Everyone"},
		--
		vitimas = {
			--
			{
			nome = "Jay", --nome da vitima
			aparencia = 217, --skin da vitima
			posicao = {1305.058, -888.519, 39.655}, --posição
			rotacao = 271, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			recompensa = {1000,2000},	-- grana da recompensa
			bolsa = {"Maleta"}, --o que a vítima irá entregar: Maço, Pacote, Mochila, Maleta e Malote
			estrelas = {4},	--quantidade média de estrelas colocadas sob o jogador
			distancia = 50, -- distancia maxima que o jogador poderá se distanciar do atendente sem cancelar o assalto
			alarme = sim, -- esta vitima tem acesso a um alarme
			restricao = {0,1,2,3,4,5,6,7,8,9,41,42,43,10,11,12,13,14,15,44,45,46,40}, -- armas que não intimidam essa vitima
			rastreavel = nao, --ativar/desativar dinheiro sujo
			imortal = sim, --ativar/desativar imortalidade para esta vitima
			balcao = sim,
				--
				tempo = {
				duracao = {40,60}, --tempo médio que vai durar o roubo (segundos)
				disponivel = {120,180}, --tempo que o dinheiro ficará disponivel
				fuga = {120,180}, --tempo médio que vai durar a fuga
				cooldown = {240,300}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
				frases = {
					--
					assaltante = {
					"Certo, isso aqui é um assalto!",
					"Isso é um assalto!",
					"Vou estourar seus miolos se não me der o dinheiro!",
					},
					--
					vitima = {
					"Socorro!",
					"Alguém me ajude, eu não quero morrer!",
					},
					--
				--
				}
			},
			--
	
		},
	},
	--
	["Lanchonete em Palamino Creek"] = {
		--
		acesso = {"Everyone"},
		--
		vitimas = {
			--
			{
			nome = "Charlene", --nome da vitima
			aparencia = 131, --skin da vitima
			posicao = {2328.983, 8.206, 26.523}, --posição
			rotacao = 180, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			recompensa = {100,200},	-- grana da recompensa
			bolsa = {"Maço", "Pacote"}, --o que a vítima irá entregar: Maço, Pacote, Mochila, Maleta e Malote
			estrelas = {1},	--quantidade média de estrelas colocadas sob o jogador
			distancia = 50, -- distancia maxima que o jogador poderá se distanciar do atendente sem cancelar o assalto
			alarme = nao, -- esta vitima tem acesso a um alarme
			restricao = {0,1,2,3,4,5,6,7,8,9,41,42,43,10,11,12,13,14,15,44,45,46,40}, -- armas que não intimidam essa vitima
			rastreavel = nao, --ativar/desativar dinheiro sujo
			imortal = sim, --ativar/desativar imortalidade para esta vitima
			balcao = sim,
				--
				tempo = {
				duracao = {10}, --tempo médio que vai durar o roubo (segundos)
				disponivel = {30,60}, --tempo que o dinheiro ficará disponivel
				fuga = {30,60}, --tempo médio que vai durar a fuga
				cooldown = {60,120}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
				frases = {
					--
					assaltante = {
					"Ninguem se move, isso é um assalto!",
					"Isso é um assalto!",
					"Passa a grana ou estouro seus miolos!",
					},
					--
					vitima = {
					"Pode levar o que quiser, só não me machuque!",
					"Não me mate, eu tenho dois filhos para criar!",
					},
					--
				--
				}
			},
			--
			--
			{
			nome = "Joseph", --nome da vitima
			aparencia = 131, --skin da vitima
			posicao = {2329.438, -0.725, 26.75}, --posição
			rotacao = 180, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			recompensa = {100,200},	-- grana da recompensa
			bolsa = {"Maço"}, --o que a vítima irá entregar: Maço, Pacote, Mochila, Maleta e Malote
			estrelas = {1},	--quantidade média de estrelas colocadas sob o jogador
			distancia = 50, -- distancia maxima que o jogador poderá se distanciar do atendente sem cancelar o assalto
			alarme = nao, -- esta vitima tem acesso a um alarme
			restricao = {0,1,2,3,4,5,6,7,8,9,41,42,43,10,11,12,13,14,15,44,45,46,40 }, -- armas que não intimidam essa vitima
			rastreavel = nao, --ativar/desativar dinheiro sujo
			imortal = sim, --ativar/desativar imortalidade para esta vitima
			balcao = sim,
				--[[
				--
				animacoes = {
					{"food", "ff_sit_loop", -1, true, false, false,false},
				},
				--
				]]
				tempo = {
				duracao = {10,20}, --tempo médio que vai durar o roubo (segundos)
				disponivel = {30,60}, --tempo que o dinheiro ficará disponivel
				fuga = {30,60}, --tempo médio que vai durar a fuga
				cooldown = {60,120}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
				frases = {
					--
					assaltante = {
					"Ninguem se move, isso é um assalto!",
					"Isso é um assalto!",
					"Passa a grana ou estouro seus miolos!",
					},
					--
					vitima = {
					"Pode levar o que quiser, só não me machuque!",
					"Não me mate, eu tenho dois filhos para criar!",
					},
					--
				--
				}
			},
			--
		},
		--
		caixas = {
			--
			{
			posicao = {2329.051, 7.507, 26.5}, --posição do caixa
			rotacao = 0, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			vida = {100,200}, --vida do caixa
			recompensa = {100,200}, --dinheiro disponível no caixa
			estrelas = {1},	--quantidade média de estrelas colocadas sob o jogador
			alarme = sim, -- esta vitima tem acesso a um alarme
			restricao = {9,25,26,27, 36, 16, 17, 39, 40}, -- armas que causam dano ao caixa
			rastreavel = sim, --ativar/desativar dinheiro sujo
				--
				aparencia = {
				normal = 1514,
				},
				--
				tempo = {
				disponivel = {30,60}, --tempo que o dinheiro ficará disponivel
				fuga = {30,60}, --tempo médio que vai durar a fuga
				cooldown = {60,120}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
			},
			--
		},
		--
	},
	--
	["Loja de bebidas em Blueberry"] = {
		--
		acesso = {"Everyone"},
		--
		vitimas = {
			{
			nome = "John", --nome da vitima
			aparencia = 44, --skin da vitima
			posicao = {252.264, -54.829, 1.5}, --posição
			rotacao = 180, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			recompensa = {250,500},	-- grana da recompensa
			bolsa = {"Pacote", "Mochila"}, --o que a vítima irá entregar: Maço, Pacote, Mochila, Maleta e Malote
			estrelas = {1,2},	--quantidade média de estrelas colocadas sob o jogador
			distancia = 50, -- distancia maxima que o jogador poderá se distanciar do atendente sem cancelar o assalto
			alarme = sim, -- esta vitima tem acesso a um alarme
			restricao = {0,1,2,3,4,5,6,7,8,9,41,42,43,10,11,12,13,14,15,44,45,46,40 }, -- armas que não intimidam essa vitima
			rastreavel = nao, --ativar/desativar dinheiro sujo
			imortal = sim, --ativar/desativar imortalidade para esta vitima
			balcao = sim,
				--
				tempo = {
				duracao = {5}, --tempo médio que vai durar o roubo (segundos)
				disponivel = {45,90}, --tempo que o dinheiro ficará disponivel
				fuga = {45,90}, --tempo médio que vai durar a fuga
				cooldown = {30}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
				frases = {
					--
					assaltante = {
					"Ninguem se move, isso é um assalto!",
					"Isso é um assalto!",
					"Passa a grana ou estouro seus miolos!",
					},
					--
					vitima = {
					"Pode levar o que quiser, só não me machuque!",
					"Não me mate, eu tenho dois filhos para criar!",
					},
					--
				--
				}
			},
			--
		},
		--
		caixas = {
			--
			{
			posicao = {252.253, -55.527, 1.596}, --posição do caixa
			rotacao = 0, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			vida = {100,200}, --vida do caixa
			recompensa = {100,200}, --dinheiro disponível no caixa
			estrelas = {1},	--quantidade média de estrelas colocadas sob o jogador
			alarme = sim, -- esta vitima tem acesso a um alarme
			restricao = {9,25,26,27, 36, 16, 17, 39, 40}, -- armas que causam dano ao caixa
			rastreavel = nao, --ativar/desativar dinheiro sujo
				--
				aparencia = {
				normal = 1514,
				},
				--
				tempo = {
				disponivel = {30,60}, --tempo que o dinheiro ficará disponivel
				fuga = {30,60}, --tempo médio que vai durar a fuga
				cooldown = {60,120}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
			},
			--
			{
			posicao = {253, -59.30, 1.23}, --posição do caixa
			rotacao = 90, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			vida = {250,500}, --vida do caixa
			recompensa = {500,1000}, --dinheiro disponível no caixa
			estrelas = {2,3},	--quantidade média de estrelas colocadas sob o jogador
			alarme = sim, -- esta vitima tem acesso a um alarme
			restricao = {9,25,26,27, 36, 16, 17, 39, 40}, -- armas que não causam dano ao caixa
			rastreavel = sim, --ativar/desativar dinheiro sujo
				--
				aparencia = {
				normal = 2942,
				quebrado = 2943,
				destruido = 3067,
				},
				--
				tempo = {
				disponivel = {60,120}, --tempo que o dinheiro ficará disponivel
				fuga = {60,120}, --tempo médio que vai durar a fuga
				cooldown = {135,270}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
			},
			--
		},
		--
	},
	--
	["Banco de Palamino Creek"] = {
		--
		acesso = {"Everyone"},
		--
		vitimas = {
			{
			nome = "Jacob", --nome da vitima
			aparencia = 240, --skin da vitima
			posicao = {2311, -11, 26.74}, --posição
			rotacao = 180, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			recompensa = {1000,2000},	-- grana da recompensa
			bolsa = {"Mochila", "Malote"}, --o que a vítima irá entregar: Maço, Pacote, Mochila, Maleta e Malote
			estrelas = {2,3},	--quantidade média de estrelas colocadas sob o jogador
			distancia = 50, -- distancia maxima que o jogador poderá se distanciar do atendente sem cancelar o assalto
			alarme = sim, -- esta vitima tem acesso a um alarme
			restricao = {0,1,2,3,4,5,6,7,8,9,41,42,43,10,11,12,13,14,15,44,45,46,40 }, -- armas que não intimidam essa vitima
			rastreavel = sim, --ativar/desativar dinheiro sujo
			imortal = sim, --ativar/desativar imortalidade para esta vitima
			balcao = sim,
				--
				tempo = {
				duracao = {5,10}, --tempo médio que vai durar o roubo (segundos)
				disponivel = {10,20}, --tempo que o dinheiro ficará disponivel
				fuga = {10,20}, --tempo médio que vai durar a fuga
				cooldown = {20,40}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
				frases = {
					--
					assaltante = {
					"Ninguem se move, isso é um assalto!",
					"Isso é um assalto!",
					"Passa a grana ou estouro seus miolos!",
					},
					--
					vitima = {
					"Pode levar o que quiser, só não me machuque!",
					"Não me mate, eu tenho dois filhos para criar!",
					},
					--
				--
				}
			},
			--
		},
		--
		caixas = {
			--
			{
			posicao = {2310.974, -11.723, 26.95}, --posição do caixa
			rotacao = 0, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			vida = {100,200}, --vida do caixa
			recompensa = {500,1000}, --dinheiro disponível no caixa
			estrelas = {1},	--quantidade média de estrelas colocadas sob o jogador
			alarme = sim, -- esta vitima tem acesso a um alarme
			restricao = {9,25,26,27, 36, 16, 17, 39, 40}, -- armas que causam dano ao caixa
			rastreavel = nao, --ativar/desativar dinheiro sujo
				--
				aparencia = {
				normal = 1514,
				},
				--
				tempo = {
				disponivel = {30,60}, --tempo que o dinheiro ficará disponivel
				fuga = {30,60}, --tempo médio que vai durar a fuga
				cooldown = {60,120}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
			},
			--
			{
			posicao = {2313.5, -17.3, 26.4}, --posição do caixa
			rotacao = 180, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			vida = {500,1000}, --vida do caixa
			recompensa = {1000,2000}, --dinheiro disponível no caixa
			estrelas = {3,4},	--quantidade média de estrelas colocadas sob o jogador
			alarme = sim, -- esta vitima tem acesso a um alarme
			restricao = {9,25,26,27, 36, 16, 17, 39, 40}, -- armas que não causam dano ao caixa
			rastreavel = sim, --ativar/desativar dinheiro sujo
				--
				aparencia = {
				normal = 2942,
				quebrado = 2943,
				destruido = 3067,
				},
				--
				--
				tempo = {
				disponivel = {90,180}, --tempo que o dinheiro ficará disponivel
				fuga = {180,180}, --tempo médio que vai durar a fuga
				cooldown = {300,360}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
			},
			--
			{
			posicao = {2310.5, -17.3, 26.4}, --posição do caixa
			rotacao = 180, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			vida = {500,1000}, --vida do caixa
			recompensa = {1000,2000}, --dinheiro disponível no caixa
			estrelas = {3,4},	--quantidade média de estrelas colocadas sob o jogador
			alarme = sim, -- esta vitima tem acesso a um alarme
			restricao = {9,25,26,27, 36, 16, 17, 39, 40}, -- armas que não causam dano ao caixa
			rastreavel = sim, --ativar/desativar dinheiro sujo
				--
				aparencia = {
				normal = 2942,
				quebrado = 2943,
				destruido = 3067,
				},
				--
				tempo = {
				disponivel = {90,180}, --tempo que o dinheiro ficará disponivel
				fuga = {180,180}, --tempo médio que vai durar a fuga
				cooldown = {300,360}, --tempo para poder roubar o local novamente (segundos)
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
			},
			--
		},
		--
		cofres = {
			--
			{
			posicao = {2305.7, -5, 26.242}, --posição do cofre
			rotacao = 90, -- rotação
			interior = 0, -- interior
			dimensao = 0, -- dimensao
			vida = {1000,2000}, --vida do caixa
			recompensa = {2000,5000}, --dinheiro disponível no caixa
			estrelas = {4,5},	--quantidade média de estrelas colocadas sob o jogador
			alarme = sim, -- este cofre possui acesso a um alarme
			rastreavel = sim, --ativar/desativar dinheiro sujo
			dificuldade = 1,
			bolsa = "Malote", --o que a vítima irá entregar: Maço, Pacote, Mochila, Maleta e Malote
				--
				tempo = {
					arrombar = {10,20}, --tempo que demora para arrombar
					coletar = {10,20}, --tempo que demora para coletar o dinheiro
					disponivel = {120,240}, --tempo que demora para o dinheiro desaparecer
					aberto = {30,60}, --por quanto tempo o cofre fica aberto
					fuga = {30, 60},
					cooldown = {240,360},	--tempo para poder roubar este cofre novamente
				},
				--
				icone = {
				normal = 52,	-- o icone que irá aparecer no mapa
				assalto = 36, -- o icone que irá aparecer no mapa quando o local estiver sendo roubado
				},
				--
			},
			--
		},
		--
	},
	--
}


lavagem = {--Descrição: Nesta tabela você poderá adicionar ou remover agiotas para trocar o dinheiro roubado. Isso só funcionará se a opção "dinheiroSujo" estiver ativada (sim)
	--
	["Emmet"] = {
		--
		acesso = {"Everyone"},
		aparencia = 302, --skin
		taxa = 25, -- taxa cobrada (porcentagem)
		icone = 20,
		imortal = sim,
		tempo = 10, -- tempo que o agiota fica escondido após uma negociação
		--
		frases = {
			"Se a polícia perguntar, eu nunca te vi na vida",
			"Se precisar já sabe onde me encontrar!",
			"Quantas verdinhas, continue trazendo!",
		},
		--
		posicoes = {
			--
			{
			posicao = {1689.305, -1973.653, 8.820}, --posição
			rotacao = 320, -- rotação
			interior = 0,
			dimensao = 0,
			},
			--
			{
			posicao = {2445.090, -1970.188, 13}, --posição do cofre
			rotacao = -90,
			interior = 0,
			dimensao = 0,
			},
			--
		},
		--
	},
	--
	["Catalina"] = {
		--
		acesso = {"Everyone"},
		aparencia = 298, --skin
		taxa = 50, -- taxa cobrada (porcentagem)
		icone = 20,
		imortal = sim,
		tempo = 10, -- tempo que o agiota fica escondido após uma negociação
		--
		frases = {
			"Se a polícia perguntar, eu nunca te vi na vida",
			"Se precisar já sabe onde me encontrar!",
			"Quantas verdinhas, continue trazendo!",
		},
		--
		posicoes = {
			--
			{
			posicao = {870.37, -24.91, 63.98}, --posição
			rotacao = 150, -- rotação
			interior = 0,
			dimensao = 0,
			},
			--
			{
			posicao = {680.4, -473.347, 16.536}, --posição do cofre
			rotacao = 180,
			interior = 0,
			dimensao = 0,
			},
			--
		},
		--
	},
	--
	["Off.Tempenny"] = {
		--
		acesso = {"Everyone"},
		aparencia = 265, --skin
		taxa = 75, -- taxa cobrada (porcentagem)
		icone = 30,
		imortal = sim,
		autoridade = sim,
		--
		frases = {
			"Bom trabalho, oficial!",
			"Merece uma promoção!",
			"Um verdadeiro serviço prestado à comunidade!",
		},
		--
		posicoes = {
			--
			{
			posicao =  {1544.2, -1678.552, 13.557},
			rotacao = 56,
			interior = 0,
			dimensao = 0,
			},
			--
			{
			posicao =  {1544.2, -1678.552, 13.557},
			rotacao = 56,
			interior = 0,
			dimensao = 0,
			},
			--
		},
		--
	},
	--
}

configuracoes = {
	acao = "e",
	largar = "j",
	webhook = "https://discord.com/api/webhooks/906648775467081779/1ap98VJJtBQm6-hY-1Pk3l69NTVNut2wD1xcTrz6O8_bntUmAawDkyqh0dhDpHtZ20Sb",
	--===========================ATENÇÃO========================================--
	--====--As ACL a seguir serão criadas automaticamente caso não existam--====--
	--==========================================================================--
	--Crime
	Crime = {--Aqui são colocados os grupos ACL que poderão realizar ações criminosas
		"Everyone", -- Everyone significa que todos poderão realizar as ações
	},
	--
	--Lei
	Lei = {--Aqui são colocados o grupo da ACL da lei (exemplo: "Policia", "Rota", "Prefeito" etc, adicione ou remova a vontade )
		"Policia LS",
	},
	--
	--Neutros
	Neutros = {--Aqui são colocados o grupo da ACL que não poderão realizar os assaltos , adicione ou remova a vontade 
		"Bombeiros",
		"Samu",
	},
	--Avisar
	Avisar = {--Aqui são colocados o grupo da ACL dos jogadores que serão notificados sobre os assaltos
		"Policia LS",
		"Admin",
	},
	--
}
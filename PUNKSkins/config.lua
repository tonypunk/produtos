------------------INICIALIZAÇÃO------------------
--Não modificar estes valores
sim = true
nao = false
-----------------CONFIGURAÇÕES-----------------
controles = {
acao = "e", --tecla de ação
}

estrelas = 1 --quantas estrelas de procurado são perdidas ao trocar de personagem
salvar = sim --armazenar/carregar personagens no próprio sistema
modloader = nao -- ativar/desativar a função modloader (as skins são inseridas na pasta modelos/nativas)

configuracoes = { --Configurações do spawn (nascer) se quiser desativar apague ou anule esta seção
	--=============ACESSO===========--
	["Binco"] = {
	preco = 0, -- preço geral
	blip = 45,
	objeto = 1275, -- objeto geral
	cor = {255, 255, 255, 150}, --cor do objeto
	interior = 0,
	dimensao = 0,
		localizacoes = {-- Ganton
			{
			--=============POSICIONAMENTO===========---
			posicao = {2244.4, -1664.641, 15.4}, --posicao
			rotacao = 55, --rotacao
				--=============OPCIONAL===========---
				--acesso = nao,
				--preco = 200, --preço dessa loja em especifico
				--objeto = 1275, --objeto dessa loja em especifico
				--interior = 0,
				--dimensao = 0,
				--===============================---
			--=============ICONE===========---
				icone = {
				posicao = {2244.4, -1664.641, 15.4},
					--=============OPCIONAL===========---
					--blip = 45, --blip especifico
					--interior = 0, --interior especifico
					--dimensao = 0, --dimensao especifica
					--===============================---
				},
			--===============================---
			--=============SKINS===========--
				skins = { --skins disponiveis nessa loja
					--
					["Masculinas"] = {
					[18] = 200, -- id e preço da skin
					[19] = 300, -- id e preço da skin
					["Skatista"] = 100, -- id e preço da skin
					["Girl Punk"] = 100, -- id e preço da skin
					},
					--
					["Femininas"] = {
					[12] = 100,
					[40] = 200, -- id e preço da skin
					[56] = 300, -- id e preço da skin
					},
					--
				},
			--===============================---
			},
			--
		},
		--
	},
	--
	["Grove"] = {
	preco = 0, -- preço geral
	blip = 45,
	objeto = 1275, -- objeto geral
	cor = {0, 255, 0, 150}, --cor do objeto
	interior = 0,
	dimensao = 0,
	acesso = {"Grove"},
		localizacoes = {-- Ganton
			{
			--=============POSICIONAMENTO===========---
			posicao = {2510.945, -1673.974, 13}, --posicao
			rotacao = 55, --rotacao
				--=============OPCIONAL===========---
				--acesso = nao,
				--preco = 200, --preço dessa loja em especifico
				--objeto = 1275, --objeto dessa loja em especifico
				--interior = 0,
				--dimensao = 0,
				--===============================---
			--=============ICONE===========---
				icone = {
				posicao = {2519.945, -1673.974, 14.693}
					--=============OPCIONAL===========---
					--blip = 45, --blip especifico
					--interior = 0, --interior especifico
					--dimensao = 0, --dimensao especifica
					--===============================---
				},
			--===============================---
			--=============SKINS===========--
				skins = { --skins disponiveis nessa loja
					--
					["Masculinas"] = {
					[105] = 0, -- id e preço da skin
					[106] = 0, -- id e preço da skin
					[107] = 0, -- id e preço da skin
					["Grove 4"] = 0, -- id e preço da skin
					["Grove 5"] = 0, -- id e preço da skin
					},
					--
					["Femininas"] = {
					[207] = 0, -- id e preço da skin
					},
					--
				},
			--===============================---
			},
			--
		},
		--
	},
	--
	["Ballas"] = {
	preco = 0, -- preço geral
	blip = 45,
	objeto = 1275, -- objeto geral
	cor = {255, 0, 255, 150}, --cor do objeto
	interior = 0,
	dimensao = 0,
	acesso = {"Ballas"},
		localizacoes = {-- Ganton
			{
			--=============POSICIONAMENTO===========---
			posicao = {2002.63, -1118.268, 26.781}, --posicao
			rotacao = 55, --rotacao
				--=============OPCIONAL===========---
				--acesso = nao,
				--preco = 200, --preço dessa loja em especifico
				--objeto = 1275, --objeto dessa loja em especifico
				--interior = 0,
				--dimensao = 0,
				--===============================---
			--=============ICONE===========---
				icone = {
				posicao = {2002.63, -1118.268, 26.781}
					--=============OPCIONAL===========---
					--blip = 45, --blip especifico
					--interior = 0, --interior especifico
					--dimensao = 0, --dimensao especifica
					--===============================---
				},
			--===============================---
			--=============SKINS===========--
				skins = { --skins disponiveis nessa loja
					--
					["Masculinas"] = {
					[102] = 0, -- id e preço da skin
					[103] = 0, -- id e preço da skin
					[104] = 0, -- id e preço da skin
					["Ballas 5"] = 0, -- id e preço da skin
					["Ballas 5"] = 0, -- id e preço da skin
					},
					--
					["Femininas"] = {
					[13] = 0, -- id e preço da skin
					},
					--
				},
			--===============================---
			},
			--
		},
		--
	},
	--
	["Policia LS"] = {
	preco = 0, -- preço geral
	blip = 45,
	objeto = 1275, -- objeto geral
	cor = {0, 0, 0, 150}, --cor do objeto
	interior = 0,
	dimensao = 0,
	acesso = {"Policia LS"},
		localizacoes = {-- Delegacia
			{
			--=============POSICIONAMENTO===========---
			posicao = {1580.626, -1634.356, 13.562}, --posicao
			rotacao = 55, --rotacao
				--=============OPCIONAL===========---
				--acesso = nao,
				--preco = 200, --preço dessa loja em especifico
				--objeto = 1275, --objeto dessa loja em especifico
				--interior = 0,
				--dimensao = 0,
				--===============================---
			--=============ICONE===========---
				icone = {
				posicao = {1580.626, -1634.356, 13.562}
					--=============OPCIONAL===========---
					--blip = 45, --blip especifico
					--interior = 0, --interior especifico
					--dimensao = 0, --dimensao especifica
					--===============================---
				},
			--===============================---
			--=============SKINS===========--
				skins = { --skins disponiveis nessa loja
					--
					["Oficiais"] = {
					[280] = 0, -- id e preço da skin
					[284] = 0, -- id e preço da skin
					},
					--
				},
			--===============================---
			},
			--
		},
		--
	},
	--
}

comandos = {
setar = "setar", --comando para setar skin em um jogador: /setar nome/ID do jogador, nome/ID da skin
}

elementData = {
ID = "ID",
}

janela = { --Configurações da janela, se quiser desativar apague ou anule esta seção
horizontal = "direita", --esquerda, centro, direita
vertical = "centro", --topo, centro, fundo
cor = {0,0,0},
}

--Exports
_spawnPlayer = spawnPlayer --não tocar
function spawnPlayer (...)
	if type (arg[6]) == "string" then
	return exports["PUNK+Skins"]:spawnPlayer (unpack (arg))
	end
return _spawnPlayer (unpack(arg))
end

_createPed = createPed --não tocar
function createPed (...)
    if type (arg[1]) == "number" then
    return _createPed (unpack (arg))
    else
    return exports["PUNK+Skins"]:createPed (unpack (arg))
    end
end

_getElementModel = getElementModel --não tocar
function getElementModel (elemento)
	if getElementType (elemento) == "player" or getElementType (elemento) == "ped" then return exports["PUNK+Skins"]:getElementModel (elemento) end
return _getElementModel (elemento)
end

_setElementModel = setElementModel --não tocar
function setElementModel (...)
	if getElementType (arg[1]) == "ped" or getElementType (arg[1]) == "player" and type (arg[2]) == "string" then
	return exports["PUNK+Skins"]:setElementModel (unpack(arg))
	end
return _setElementModel (unpack(arg))
end
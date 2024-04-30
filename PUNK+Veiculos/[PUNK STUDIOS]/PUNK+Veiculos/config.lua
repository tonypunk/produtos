--PRÉ-CONFIGURAÇÕES, NÃO MODIFICAR --
sim = true
nao = false
--------------------------------------------------
-------------------------CONFIGURAÇÕES --------------

--elementData
elementData = { --tabela de dados para serem salvos através de elementData, gerando compatibilidade com outros mods (exclua se não quiser usar)
nome = "Nome", --elementData do nome do elemento
}
modloader = true
--Configuracoes
configuracoes = {
	------------------------------------
	--Exemplos de veículos
	------------------------------------
	--
	["Stinger"] = { --Exemplo de veículo novo
		--
		arquivo = "stinger", --nome do arquivo na pasta
		handling = 506, -- handling
		--
	},
	--
	["Kuruma"] = {
		--
		arquivo = "kuruma", --nome do arquivo na pasta
		handling = 547, -- handling
		--
	},
	--
	["Deluxo"] = { --exemplo de handling (estas opções irão sobescrever as dos handlings pré-configurados) anule ou delete as que não forem serem usadas
		--
		arquivo = "deluxo", --nome do arquivo na pasta
		handling = 415, -- handling
		--
	},
	--
	["Banshee Legacy"] = { --exemplo de handling (estas opções irão sobescrever as dos handlings pré-configurados) anule ou delete as que não forem serem usadas
		--
		arquivo = "banshee-legacy", --nome do arquivo na pasta
		handling = 429, -- handling
		--
	},
	--
	["Infernus Legacy"] = { --exemplo de handling (estas opções irão sobescrever as dos handlings pré-configurados) anule ou delete as que não forem serem usadas
		--
		arquivo = "infernus-legacy", --nome do arquivo na pasta
		handling = 411, -- handling
		--
	},
	--
	["Splitz-6"] = { --exemplo de handling (estas opções irão sobescrever as dos handlings pré-configurados) anule ou delete as que não forem serem usadas
		--
		arquivo = "splitz6", --nome do arquivo na pasta
		handling = 424--[[500, 574]], -- handling
		--
	},
	--
	["Ventoso"] = { --exemplo de handling (estas opções irão sobescrever as dos handlings pré-configurados) anule ou delete as que não forem serem usadas
		--
		arquivo = "ventoso", --nome do arquivo na pasta
		handling = 462, -- handling
		--
	},
	--
	["Angel"] = {
		--
		arquivo = "angel", --nome do arquivo na pasta
		handling = 463, -- handling
		--
	},
	--
	["Little Willy"] = {
		--
		arquivo = "lilwill", --nome do arquivo na pasta
		handling = 425, -- handling
		--
	},
	--
	------------------------------------
}

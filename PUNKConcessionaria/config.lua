--PRÉ-CONFIGURAÇÕES, NÃO MODIFICAR --
sim = true
nao = false
--------------------------------------------------
-------------------------CONFIGURAÇÕES --------------

--Veículos
veiculos = { -- Exemplo de veículos a serem usados
	--
	["Coutt & Schutz"] = {-- Coutt & Schutz Usados
		configuracoes = {
		icone = {2131.0895996094, -1148.6900634766, 29.649187088013},
		estoque = 0,
			acesso = {
			dono = {"Everyone"},
			posicao = {2131.855, -1150.583, 23.25}, --posicionamento do painel de acesso no cenário
			tipo = "cylinder",
			tamanho = 1,
			cor = {255,0,0,70},
			interior = 0,	--interior do painel de acesso
			dimensao = 0,	--dimensão do painel de acesso
			},
			--
			vitrine = {
			posicao = {2128.9, -1138.5, 26.4}, --posicionamento do veiculo para demonstração
			rotacao = {0,0,90},
			interior = 0,	--interior do do veiculo para demonstração
			dimensao = 0,	--dimensão do do veiculo para demonstração
			},
			--
		},
		--
		localizacoes = { 
			interior = 0, --interior em que o veiculo se encontra
			dimensao = 0, --dimensao em que o veiculo se encontra
			--
			{
			posicao = {2135.62, -1129.23, 25}, --posição tridimensional (x,y,z)
			rotacao = 90, --rotacao (0 a 360)
			--interior = 0, --interior (esta opção sobscreve a anterior, ative se quiser)
			--dimensao = 0, --dimensao (esta opção sobscreve a anterior, ative se quiser)
			},
			--
			{
			posicao = {2136.37, -1135, 25}, --posição tridimensional (x,y,z)
			rotacao = 90, --rotacao (0 a 360)
			},
			--
			{
			posicao = {2120.6618652344, -1128.2607421875, 25}, --posição tridimensional (x,y,z)
			rotacao = -90, --rotacao (0 a 360)
			},
			--
			{
			posicao = {2120.45, -1133.3, 25}, --posição tridimensional (x,y,z)
			rotacao = -90, --rotacao (0 a 360)
			},
			--
			{
			posicao = {2117.4438476562, -1156.8601074219, 24}, --posição tridimensional (x,y,z)
			rotacao = 0, --rotacao (0 a 360)
			},
			--
			{
			posicao = {2121.8781738281, -1156.7103271484, 24}, --posição tridimensional (x,y,z)
			rotacao = 0, --rotacao (0 a 360)
			},
			--
		}, 
		--
		veiculos = {
			--
			[605] = {
				--
				["nome"] = "Sadler",
				["compravel"] = sim,
				["re-estoque"] = sim,
				["valor"] = 13000, -- preço do veiculo --"monetary"
				--
			},
			--
			[543] = {
				--
				["compravel"] = sim,
				["re-estoque"] = sim,
				--
			},
			--
			[604] = {
				--
				["nome"] = "Glendale",
				["compravel"] = sim,
				["re-estoque"] = sim,
				["valor"] = 10000, -- preço do veiculo --"monetary"
				--
			},
			--
		},
		--
	},
	--[[
	["Grotti Importados"] = {-- Coutt & Schutz Usados
		configuracoes = {
		icone = {542.342, -1291.217, 25.867},
		estoque = 15,
			acesso = {
			dono = {"Everyone"},
			posicao = {562.342, -1291.217, 16}, --posicionamento do painel de acesso no cenário
			tipo = "cylinder",
			tamanho = 1,
			cor = {255,0,0,70},
			interior = 0,	--interior do painel de acesso
			dimensao = 0,	--dimensão do painel de acesso
			},
			--
			vitrine = {
			posicao = {2128.280, -1133.176, 25.572}, --posicionamento do veiculo para demonstração
			rotacao = {0,0,90},
			interior = 0,	--interior do do veiculo para demonstração
			dimensao = 0,	--dimensão do do veiculo para demonstração
			},
			--
		},
		--
		localizacoes = { 
			interior = 0, --interior em que o veiculo se encontra
			dimensao = 0, --dimensao em que o veiculo se encontra
			--
			{
			posicao = {556.33, -1289.61, 17.2}, --posição tridimensional (x,y,z) , --posição tridimensional (x,y,z) 
			rotacao = 0,  --rotacao (0 a 360)
			--interior = 0, --interior (esta opção sobscreve a anterior, ative se quiser)
			--dimensao = 0, --dimensao (esta opção sobscreve a anterior, ative se quiser)
			},
			--
			{
			posicao = {549.27, -1289.89, 17.24}, --posição tridimensional (x,y,z) 
			rotacao = 0,  --rotacao (0 a 360)
			},
			--
			{
			posicao = {542.66, -1290.56, 17.24}, --posição tridimensional (x,y,z) 
			rotacao = 0,  --rotacao (0 a 360)
			},
			--
			{
			posicao = {535.66, -1290.56, 17.24}, --posição tridimensional (x,y,z) 
			rotacao = 0,  --rotacao (0 a 360)
			},
			--
			{
			posicao = {527.88177490234, -1291.1029052734, 17.2421875}, --posição tridimensional (x,y,z) 
			rotacao = 0,  --rotacao (0 a 360)
			},
			--
			{
			posicao = {521.5, -1291.3, 17.2}, --posição tridimensional (x,y,z) 
			rotacao = 0,  --rotacao (0 a 360)
			},
			--
		}, 
		--
		veiculos = {
			["Banshee"] = { -- a inserção funciona com números e tambem com o nome do veiculo
				--
				["compravel"] = sim,
				--
			},
			--
			["Bullet"] = {
				--
				["compravel"] = sim,
				--
			},
			--
			--
			["Cheetah"] = {
				--
				["compravel"] = sim,
				--
			},
			--
			--
			["Turismo"] = {
				--
				["compravel"] = sim,
				--
			},
			--
			--
			["Infernus"] = {
				--
				["compravel"] = sim,
				--
			},
			--
			--
			["Banshee Legacy"] = {
				--
				["compravel"] = sim,
				--
			},
			--
		},
		--
	},
	--]]
}

--Handling
handling = { -- configurações nativas de handling (anule ou delete as que não forem serem usadas ou a apague a parte toda se não quiser usar)
	
}

--Comandos
comandos = {
comprar = "comprar", --tecla padrão para comprar veiculos
vender = "vender", --tecla padrão para vender veiculos
criar = "criar", --comando para criar veiculo /criar (nome/id, dono)
resetar = "resetar", --comando para resetar /resetar (nome/id do jogador)
}

--Controles
controles = {
comprar = "e", --tecla padrão para comprar veiculos
vender = "e", --tecla padrão para vender veiculos
}

--
--Configurações
configuracoes = {
restricao = sim, --apenas o dono do veículo pode dirigi-lo
limite = 5, --limite de veiculos adquiridos por jogador
}

--Comandos
comandos = {
	--Concessionaria
	comprar = "comprar", --tecla padrão para comprar veiculos
	vender = "vender", --tecla padrão para vender veiculos
	criar = "criar", --comando para criar veiculo /criar (nome/id do veículo, dono)
	resetar = "resetar", --comando para resetar /resetar (nome/id do jogador)
	--Funções
	motor = "motor", -- tecla padrão para ligar/desligar o motor
	trancar = "trancar", -- tecla padrão para abrir/fechar portas
	farol = "farol", -- tecla padrão para ligar/desligar os faróis
	seta = "seta", -- tecla padrão para usar seta à esquerda
	cinto = "cinto", -- tecla padrão para afivelar/desafivelar cinto de segurança
	assumir = "assumir", --ativar/desativar passageiro no banco do carona assumir o volante se não houver motorista ou se o motorista estiver morto
	--
}

--Controles
controles = {
	--Concessionaria
	comprar = "e", --tecla padrão para comprar veiculos
	vender = "e", --tecla padrão para vender veiculos
	--Funções
	motor = "j", -- tecla padrão para ligar/desligar o motor
	trancar = "k", -- tecla padrão para abrir/fechar portas
	farol = "l", -- tecla padrão para ligar/desligar os faróis
	setaE = "lctrl", -- tecla padrão para usar seta à esquerda
	setaD = "lalt", --tecla padrão para usar seta à direita
	cinto = "c", -- tecla padrão para afivelar/desafivelar cinto de segurança
	assumir = "m", --ativar/desativar passageiro no banco do carona assumir o volante se não houver motorista ou se o motorista estiver morto
	--
}

--Dados
elementData = { --tabela de dados para serem salvos através de elementData, gerando compatibilidade com outros mods (exclua se não quiser usar)
nome = "veiculoNome", --elementData do nome do veiculo
ID = "ID", --id dos jogadores
dono = "veiculoDono",  --elementData do dono do veiculo
}

--Mensagens -- aqui você pode configurar em qual parte da tela as notificações devem aparecer
posicaoHorizontal = "esquerda" --posições horizontais: "esquerda" "centro" "direita"
posicaoVertial = "topo" --posicoes verticais:"fundo" "centro" "topo"

local PC = getResourceFromName("PUNKInformativo")
if PC and getResourceState(PC) == "running" then	
	informativo = true
end

function infoLigar (r)
	if r == getResourceFromName("PUNKInformativo") then
		if eventName == "onResourceStart" or eventName == "onClientResourceStart" then
		informativo = true
		else
		informativo = false
		end
	end
end
addEventHandler ("onClientResourceStart", getRootElement(), infoLigar)
addEventHandler ("onClientResourceStop", getRootElement(), infoLigar)
addEventHandler ("onResourceStart", getRootElement(), infoLigar)
addEventHandler ("onResourceStop", getRootElement(), infoLigar)


--Handling
nomes = {
		["aquatico"] = "aquatico",
		["aereo"] = "aereo",
		["massa"] = "mass",
		["curvas"] = "turnMass",
		["aderência"] = "dragCoeff",
		["centro"] = "centerOfMass",
		["submerssão"] = "percentSubmerged",
		["tração"] = "tractionMultiplier",
		["perda de tração"] =  "tractionLoss",
		["relação de tração"] = "tractionBias",
		["marchas"] = "numberOfGears",
		["velocidade"] = "maxVelocity",
		["aceleração"] = "engineAcceleration",
		["inercia"] = "engineInertia",
		["direção"] = "driveType",
		["alimentacao"] = "engineType",
		["desaceleração"] = "brakeDeceleration",
		["relação dos freios"] = "brakeBias",
		["ABS"] = "ABS",
		["limite direcional"] = "steeringLock",
		["suspensão"] = "suspensionForceLevel",
		["lubrificação"] = "suspensionDamping",
		["lubrificação alta"] = "suspensionHighSpeedDamping",
		["suspensão superior"] = "suspensionUpperLimit",
		["suspensão inferior"] = "suspensionLowerLimit",
		["relação da suspensão"] = "suspensionFrontRearBias",
		["embicagem"] = "suspensionAntiDiveMultiplier",
		["assentos"] = "seatOffsetDistance",
		["colisão"] = "collisionDamageMultiplier",
		["valor"] = "monetary",
		["marcadores do modelo"] = "modelFlags",
		["marcadores do manuseio"] = "handlingFlags",
		["faróis frontais"] = "headLight",
		["faróis traseiros"] = "tailLight",
		["animações"] = "animGroup",
	}

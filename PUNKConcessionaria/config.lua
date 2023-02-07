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
		estoque = 10,
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
			["Tampa"] = { -- a inserção funciona com números e tambem com o nome do veiculo
				--
				["compravel"] = sim,
				["re-estoque"] = sim,
				--
			},
			--
			--
			["Ferrari Enzo 2002"] = {
				--
				["compravel"] = sim,
				["re-estoque"] = sim,
				--
			},
			--
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
			--
			[543] = {
				--
				["compravel"] = sim,
				["re-estoque"] = sim,
				--
			},
			--
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
			--
			["Angel"] = {
				--
				["compravel"] = sim,
				["re-estoque"] = sim,
				--
			},
			--
			["Stinger"] = {
				--
				["compravel"] = sim,
				["re-estoque"] = sim,
				--
			},
			--
			
			["Ventoso"] = {
				--
				["compravel"] = sim,
				["re-estoque"] = sim,
				--
			},
			--
		},
		--
	},
	--
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
	--
}

--Handling
handling = { -- configurações nativas de handling (anule ou delete as que não forem serem usadas ou a apague a parte toda se não quiser usar)
	--
	["Stinger"] = { --exemplo de handling (estas opções irão sobescrever as dos handlings pré-configurados) anule ou delete as que não forem serem usadas
	--
		["aquatico"] = nao,
		["aereo"] = nao,
		["massa"] = 1400.0, --peso do veículo em kilos (1.0 a 100000.0)  --"mass"
		["curvas"] = 2800, --isso é usado para calcular efeitos de movimento (0.0 a 1000000.0)  --"turnMass"
		["centro"] = {0.0, 0.0, -0.30}, -- centro gravitacional do veiculo (-10 a 10)  --"centerOfMass"
		["submerssão"] = 85, --a porcentagem do veiculo que deve estar coberta para o veiculo fluturar (1 a 99999)  --"percentSubmerged"
		["tração"] = 1.2, --multiplicador que envolve curvas e a fricção dos peneus na superficie (asfalto, grama etc) (-100000.0 a 100000.0)  --"tractionMultiplier"
		["perda de tração"] =  0.85, --pegada de aceleração/freiagem do veiculo como multiplicador para fricção dos peneus contra a superficie (asfalto etc) (0.0 a 100.0)  --"tractionLoss"
		["relação de tração"] = 0.52, --relação da força entre o eixo frontal e traseiro (0.0 a 1.0)  --"tractionBias"
		["marchas"] = 5, -- quantas marchas o veiculo possui (1 a 5)  --"numberOfGears"
		["velocidade"] = 200.0, --velocidade máxima que o veiculo pode alcançar (0.1 a 200000.0) --"maxVelocity"
		["aceleração"] = 28.0, --taxa de aceleração do motor (0.0 a 100000.0)  --"engineAcceleration"
		["direção"] = "fwd", -- tipo de direção, valores disponiveis: rwd (road), fwd, awd (off-road) --"driveType"
		["alimentacao"] = "gasolina", --alimentacao do veiculo: "eletronica", "gasolina", "alcool", "diesel"  --"engineType"
		["desaceleração"] = 11.0, -- força desacelerativa dos freios (0.1 a 100000.0)  --"brakeDeceleration"
		["relação dos freios"] = 0.45, --taxa de relação de força entre o freio frontal e traseiro (0.0 a 1.0)  --"brakeBias"
		["ABS"] = nao, --freios ABS   --"ABS"
		["limite direcional"] = 30.0, -- angulo máximo de giro do volante (0.0 a 360.0)  --"steeringLock"
		["suspensão"] = 1.8, -- força exercida pela suspensão (0.0 a 100.0)  --"suspensionForceLevel"
		["lubrificação"] = 0.20, -- lubrificação da suspensão (0.0 a 100.0)  --"suspensionDamping"
		["lubrificação alta"] = 0.0, -- lubrificação da suspensão em alta velocidade (0.0 a 600.0)  --"suspensionHighSpeedDamping"
		["suspensão superior"] = 0.28, -- limita o máximo que a suspensão pode subir (-50.0 a 50.0)  --"suspensionUpperLimit"
		["suspensão inferior"] = -0.15, -- limita o máximo que a suspensão pode descer (-50.0 a 50.0)  --"suspensionLowerLimit"
		["relação da suspensão"] = 0.5, --taxa de força aplicada a suspensão frontal comparada com a suspensão traseira (0.0 a 1.0)  --"suspensionFrontRearBias"
		["embicagem"] = 0.4, -- muda o quanto o carro se inclina para frente no movimento de freagem e para tras no movimento de aceleração (0.0 a 30.0)  --"suspensionAntiDiveMultiplier"
		["assentos"] = 0.25, --distancia entre as portas e seus respectivos assentos (-20.0 a 20.0)  --"seatOffsetDistance"
		["colisão"] = 0.5, -- multiplicador de danos ao motor em colisões (0.0 a 10.0)  --"collisionDamageMultiplier"
		["valor"] = 35000, -- preço do veiculo --"monetary"
		--
	},
	--
 	["Kuruma"] = { --exemplo de handling (estas opções irão sobescrever as dos handlings pré-configurados) anule ou delete as que não forem serem usadas
		--
		["aquatico"] = nao,
		["aereo"] = nao,
		["massa"] = 1600.0, --peso do veículo em kilos (1.0 a 100000.0)  --"mass"
		["curvas"] = 3300.0, --isso é usado para calcular efeitos de movimento (0.0 a 1000000.0)  --"turnMass"
		["centro"] = {0.0, 0.0, 0.0}, -- centro gravitacional do veiculo (-10 a 10)  --"centerOfMass"
		["submerssão"] = 70, --a porcentagem do veiculo que deve estar coberta para o veiculo fluturar (1 a 99999)  --"percentSubmerged"
		["tração"] = 0.70, --multiplicador que envolve curvas e a fricção dos peneus na superficie (asfalto, grama etc) (-100000.0 a 100000.0)  --"tractionMultiplier"
		["perda de tração"] =  0.8, --pegada de aceleração/freiagem do veiculo como multiplicador para fricção dos peneus contra a superficie (asfalto etc) (0.0 a 100.0)  --"tractionLoss"
		["relação de tração"] = 0.54, --relação da força entre o eixo frontal e traseiro (0.0 a 1.0)  --"tractionBias"
		["marchas"] = 4, -- quantas marchas o veiculo possui (1 a 5)  --"numberOfGears"
		["velocidade"] = 160.0, --velocidade máxima que o veiculo pode alcançar (0.1 a 200000.0) --"maxVelocity"
		["aceleração"] = 18.0, --taxa de aceleração do motor (0.0 a 100000.0)  --"engineAcceleration"
		["direção"] = "rwd", -- tipo de direção, valores disponiveis: rwd (road), fwd, awd (off-road) --"driveType"
		["alimentacao"] = "gasolina", --alimentacao do veiculo: "eletronica", "gasolina", "alcool", "diesel"  --"engineType"
		["desaceleração"] = 5.4, -- força desacelerativa dos freios (0.1 a 100000.0)  --"brakeDeceleration"
		["relação dos freios"] = 0.60, --taxa de relação de força entre o freio frontal e traseiro (0.0 a 1.0)  --"brakeBias"
		["ABS"] = nao, --freios ABS   --"ABS"
		["limite direcional"] = 30.0, -- angulo máximo de giro do volante (0.0 a 360.0)  --"steeringLock"
		["suspensão"] = 1.1, -- força exercida pela suspensão (0.0 a 100.0)  --"suspensionForceLevel"
		["lubrificação"] = 0.14, -- lubrificação da suspensão (0.0 a 100.0)  --"suspensionDamping"
		["lubrificação alta"] = 0.0, -- lubrificação da suspensão em alta velocidade (0.0 a 600.0)  --"suspensionHighSpeedDamping"
		["suspensão superior"] = 0.32, -- limita o máximo que a suspensão pode subir (-50.0 a 50.0)  --"suspensionUpperLimit"
		["suspensão inferior"] = -0.14, -- limita o máximo que a suspensão pode descer (-50.0 a 50.0)  --"suspensionLowerLimit"
		["relação da suspensão"] = 0.5, --taxa de força aplicada a suspensão frontal comparada com a suspensão traseira (0.0 a 1.0)  --"suspensionFrontRearBias"
		["embicagem"] = 0.0, -- muda o quanto o carro se inclina para frente no movimento de freagem e para tras no movimento de aceleração (0.0 a 30.0)  --"suspensionAntiDiveMultiplier"
		["assentos"] = 0.26, --distancia entre as portas e seus respectivos assentos (-20.0 a 20.0)  --"seatOffsetDistance"
		["colisão"] = 0.54, -- multiplicador de danos ao motor em colisões (0.0 a 10.0)  --"collisionDamageMultiplier"
		["valor"] = 19000, -- preço do veiculo --"monetary"
		--
	},
	--
	["Deluxo"] = { --exemplo de handling (estas opções irão sobescrever as dos handlings pré-configurados) anule ou delete as que não forem serem usadas
		--
		["aquatico"] = nao,
		["aereo"] = nao,
		["massa"] = 1600.0, --peso do veículo em kilos (1.0 a 100000.0)  --"mass"
		["curvas"] = 3000.0, --isso é usado para calcular efeitos de movimento (0.0 a 1000000.0)  --"turnMass"
		["centro"] = {0.0, -0.2, -0.3}, -- centro gravitacional do veiculo (-10 a 10)  --"centerOfMass"
		["submerssão"] = 70, --a porcentagem do veiculo que deve estar coberta para o veiculo fluturar (1 a 99999)  --"percentSubmerged"
		["tração"] = 0.80, --multiplicador que envolve curvas e a fricção dos peneus na superficie (asfalto, grama etc) (-100000.0 a 100000.0)  --"tractionMultiplier"
		["perda de tração"] =  0.85, --pegada de aceleração/freiagem do veiculo como multiplicador para fricção dos peneus contra a superficie (asfalto etc) (0.0 a 100.0)  --"tractionLoss"
		["relação de tração"] = 0.52, --relação da força entre o eixo frontal e traseiro (0.0 a 1.0)  --"tractionBias"
		["marchas"] = 5, -- quantas marchas o veiculo possui (1 a 5)  --"numberOfGears"
		["velocidade"] = 200.0, --velocidade máxima que o veiculo pode alcançar (0.1 a 200000.0) --"maxVelocity"
		["aceleração"] = 26.0, --taxa de aceleração do motor (0.0 a 100000.0)  --"engineAcceleration"
		["direção"] = "rwd", -- tipo de direção, valores disponiveis: rwd (road), fwd, awd (off-road) --"driveType"
		["alimentacao"] = "gasolina", --alimentacao do veiculo: "eletronica", "gasolina", "alcool", "diesel"  --"engineType"
		["desaceleração"] = 10.0, -- força desacelerativa dos freios (0.1 a 100000.0)  --"brakeDeceleration"
		["relação dos freios"] = 0.53, --taxa de relação de força entre o freio frontal e traseiro (0.0 a 1.0)  --"brakeBias"
		["ABS"] = nao, --freios ABS   --"ABS"
		["limite direcional"] = 30.0, -- angulo máximo de giro do volante (0.0 a 360.0)  --"steeringLock"
		["suspensão"] = 0.8, -- força exercida pela suspensão (0.0 a 100.0)  --"suspensionForceLevel"
		["lubrificação"] = 0.20, -- lubrificação da suspensão (0.0 a 100.0)  --"suspensionDamping"
		["lubrificação alta"] = 0.0, -- lubrificação da suspensão em alta velocidade (0.0 a 600.0)  --"suspensionHighSpeedDamping"
		["suspensão superior"] = 0.10, -- limita o máximo que a suspensão pode subir (-50.0 a 50.0)  --"suspensionUpperLimit"
		["suspensão inferior"] = -0.15, -- limita o máximo que a suspensão pode descer (-50.0 a 50.0)  --"suspensionLowerLimit"
		["relação da suspensão"] = 0.5, --taxa de força aplicada a suspensão frontal comparada com a suspensão traseira (0.0 a 1.0)  --"suspensionFrontRearBias"
		["embicagem"] = 0.6, -- muda o quanto o carro se inclina para frente no movimento de freagem e para tras no movimento de aceleração (0.0 a 30.0)  --"suspensionAntiDiveMultiplier"
		["assentos"] = 0.40, --distancia entre as portas e seus respectivos assentos (-20.0 a 20.0)  --"seatOffsetDistance"
		["colisão"] = 0.54, -- multiplicador de danos ao motor em colisões (0.0 a 10.0)  --"collisionDamageMultiplier"
		["valor"] = 35000, -- preço do veiculo --"monetary"
		--
	},
	--
	["Banshee Legacy"] = { --exemplo de handling (estas opções irão sobescrever as dos handlings pré-configurados) anule ou delete as que não forem serem usadas
		--
		["aquatico"] = nao,
		["aereo"] = nao,
		["massa"] = 1400.0, --peso do veículo em kilos (1.0 a 100000.0)  --"mass"
		["curvas"] = 3000.0, --isso é usado para calcular efeitos de movimento (0.0 a 1000000.0)  --"turnMass"
		["centro"] = {0.0, 0.0, -0.25}, -- centro gravitacional do veiculo (-10 a 10)  --"centerOfMass"
		["submerssão"] = 70, --a porcentagem do veiculo que deve estar coberta para o veiculo fluturar (1 a 99999)  --"percentSubmerged"
		["tração"] = 1.10, --multiplicador que envolve curvas e a fricção dos peneus na superficie (asfalto, grama etc) (-100000.0 a 100000.0)  --"tractionMultiplier"
		["perda de tração"] =  0.84, --pegada de aceleração/freiagem do veiculo como multiplicador para fricção dos peneus contra a superficie (asfalto etc) (0.0 a 100.0)  --"tractionLoss"
		["relação de tração"] = 0.53, --relação da força entre o eixo frontal e traseiro (0.0 a 1.0)  --"tractionBias"
		["marchas"] = 5, -- quantas marchas o veiculo possui (1 a 5)  --"numberOfGears"
		["velocidade"] = 200.0, --velocidade máxima que o veiculo pode alcançar (0.1 a 200000.0) --"maxVelocity"
		["aceleração"] = 33.0, --taxa de aceleração do motor (0.0 a 100000.0)  --"engineAcceleration"
		["direção"] = "rwd", -- tipo de direção, valores disponiveis: rwd (road), fwd, awd (off-road) --"driveType"
		["alimentacao"] = "gasolina", --alimentacao do veiculo: "gasolina", "alcool" ou "diesel"  --"engineType"
		["desaceleração"] = 11.1, -- força desacelerativa dos freios (0.1 a 100000.0)  --"brakeDeceleration"
		["relação dos freios"] = 0.52, --taxa de relação de força entre o freio frontal e traseiro (0.0 a 1.0)  --"brakeBias"
		["ABS"] = nao, --freios ABS sim ou nao  --"ABS"
		["limite direcional"] = 34.0, -- angulo máximo de giro do volante (0.0 a 360.0)  --"steeringLock"
		["suspensão"] = 1.8, -- força exercida pela suspensão (0.0 a 100.0)  --"suspensionForceLevel"
		["lubrificação"] = 0.18, -- lubrificação da suspensão (0.0 a 100.0)  --"suspensionDamping"
		["lubrificação alta"] = 5.0, -- lubrificação da suspensão em alta velocidade (0.0 a 600.0)  --"suspensionHighSpeedDamping"
		["suspensão superior"] = 0.30, -- limita o máximo que a suspensão pode subir (-50.0 a 50.0)  --"suspensionUpperLimit"
		["suspensão inferior"] = -0.15, -- limita o máximo que a suspensão pode descer (-50.0 a 50.0)  --"suspensionLowerLimit"
		["relação da suspensão"] = 0.5, --taxa de força aplicada a suspensão frontal comparada com a suspensão traseira (0.0 a 1.0)  --"suspensionFrontRearBias"
		["embicagem"] = 0.3, -- muda o quanto o carro se inclina para frente no movimento de freagem e para tras no movimento de aceleração (0.0 a 30.0)  --"suspensionAntiDiveMultiplier"
		["assentos"] = 0.30, --distancia entre as portas e seus respectivos assentos (-20.0 a 20.0)  --"seatOffsetDistance"
		["colisão"] = 0.49, -- multiplicador de danos ao motor em colisões (0.0 a 10.0)  --"collisionDamageMultiplier"
		["valor"] = 45000, -- preço do veiculo --"monetary"
		--
	},
	--
	["Infernus Legacy"] = { --exemplo de handling (estas opções irão sobescrever as dos handlings pré-configurados) anule ou delete as que não forem serem usadas
		--
		["aquatico"] = nao,
		["aereo"] = nao,
		["massa"] = 1400.0, --peso do veículo em kilos (1.0 a 100000.0)  --"mass"
		["curvas"] = 2725.3, --isso é usado para calcular efeitos de movimento (0.0 a 1000000.0)  --"turnMass"
		["centro"] = {0,0,-0.25}, -- centro gravitacional do veiculo (-10 a 10)  --"centerOfMass"
		["submerssão"] = 70, --a porcentagem do veiculo que deve estar coberta para o veiculo fluturar (1 a 99999)  --"percentSubmerged"
		["tração"] = 0.70, --multiplicador que envolve curvas e a fricção dos peneus na superficie (asfalto, grama etc) (-100000.0 a 100000.0)  --"tractionMultiplier"
		["perda de tração"] =  0.8, --pegada de aceleração/freiagem do veiculo como multiplicador para fricção dos peneus contra a superficie (asfalto etc) (0.0 a 100.0)  --"tractionLoss"
		["relação de tração"] = 0.5, --relação da força entre o eixo frontal e traseiro (0.0 a 1.0)  --"tractionBias"
		["marchas"] = 5, -- quantas marchas o veiculo possui (1 a 5)  --"numberOfGears"
		["velocidade"] = 240.0, --velocidade máxima que o veiculo pode alcançar (0.1 a 200000.0) --"maxVelocity"
		["aceleração"] = 30.0, --taxa de aceleração do motor (0.0 a 100000.0)  --"engineAcceleration"
		["direção"] = "rwd", -- tipo de direção, valores disponiveis: rwd (road), fwd, awd (off-road) --"driveType"
		["alimentacao"] = "gasolina", --alimentacao do veiculo: "eletronica", "gasolina", "alcool", "diesel"  --"engineType"
		["desaceleração"] = 11.0, -- força desacelerativa dos freios (0.1 a 100000.0)  --"brakeDeceleration"
		["relação dos freios"] = 0.51, --taxa de relação de força entre o freio frontal e traseiro (0.0 a 1.0)  --"brakeBias"
		["ABS"] = nao, --freios ABS   --"ABS"
		["limite direcional"] = 30.0, -- angulo máximo de giro do volante (0.0 a 360.0)  --"steeringLock"
		["suspensão"] = 1.2, -- força exercida pela suspensão (0.0 a 100.0)  --"suspensionForceLevel"
		["lubrificação"] = 0.19, -- lubrificação da suspensão (0.0 a 100.0)  --"suspensionDamping"
		["lubrificação alta"] = 0.0, -- lubrificação da suspensão em alta velocidade (0.0 a 600.0)  --"suspensionHighSpeedDamping"
		["suspensão superior"] = 0.25, -- limita o máximo que a suspensão pode subir (-50.0 a 50.0)  --"suspensionUpperLimit"
		["suspensão inferior"] = -0.10, -- limita o máximo que a suspensão pode descer (-50.0 a 50.0)  --"suspensionLowerLimit"
		["relação da suspensão"] = 0.5, --taxa de força aplicada a suspensão frontal comparada com a suspensão traseira (0.0 a 1.0)  --"suspensionFrontRearBias"
		["embicagem"] = 0.4, -- muda o quanto o carro se inclina para frente no movimento de freagem e para tras no movimento de aceleração (0.0 a 30.0)  --"suspensionAntiDiveMultiplier"
		["assentos"] = 0.37, --distancia entre as portas e seus respectivos assentos (-20.0 a 20.0)  --"seatOffsetDistance"
		["colisão"] = 0.72, -- multiplicador de danos ao motor em colisões (0.0 a 10.0)  --"collisionDamageMultiplier"
		["valor"] = 95000, -- preço do veiculo --"monetary"
		--
	},
	--
	["Splitz-6"] = { --exemplo de handling (estas opções irão sobescrever as dos handlings pré-configurados) anule ou delete as que não forem serem usadas
		--
		["aquatico"] = sim,
		["aereo"] = sim,
		["massa"] = 1000.0, --peso do veículo em kilos (1.0 a 100000.0)  --"mass"
		["curvas"] = 2500.3, --isso é usado para calcular efeitos de movimento (0.0 a 1000000.0)  --"turnMass"
		["centro"] = {0,0,0}, -- centro gravitacional do veiculo (-10 a 10)  --"centerOfMass"
		["submerssão"] = 75, --a porcentagem do veiculo que deve estar coberta para o veiculo fluturar (1 a 99999)  --"percentSubmerged"
		["tração"] = 0.75, --multiplicador que envolve curvas e a fricção dos peneus na superficie (asfalto, grama etc) (-100000.0 a 100000.0)  --"tractionMultiplier"
		["perda de tração"] =  0.70, --pegada de aceleração/freiagem do veiculo como multiplicador para fricção dos peneus contra a superficie (asfalto etc) (0.0 a 100.0)  --"tractionLoss"
		["relação de tração"] = 0.52, --relação da força entre o eixo frontal e traseiro (0.0 a 1.0)  --"tractionBias"
		["marchas"] = 5, -- quantas marchas o veiculo possui (1 a 5)  --"numberOfGears"
		["velocidade"] = 70.0, --velocidade máxima que o veiculo pode alcançar (0.1 a 200000.0) --"maxVelocity"
		["aceleração"] = 14.0, --taxa de aceleração do motor (0.0 a 100000.0)  --"engineAcceleration"
		["direção"] = "rwd", -- tipo de direção, valores disponiveis: rwd (road), fwd, awd (off-road) --"driveType"
		["alimentacao"] = "gasolina", --alimentacao do veiculo: "eletronica", "gasolina", "alcool", "diesel"  --"engineType"
		["desaceleração"] = 6.2, -- força desacelerativa dos freios (0.1 a 100000.0)  --"brakeDeceleration"
		["relação dos freios"] = 0.55, --taxa de relação de força entre o freio frontal e traseiro (0.0 a 1.0)  --"brakeBias"
		["ABS"] = nao, --freios ABS   --"ABS"
		["limite direcional"] = 35.0, -- angulo máximo de giro do volante (0.0 a 360.0)  --"steeringLock"
		["suspensão"] = 1.0, -- força exercida pela suspensão (0.0 a 100.0)  --"suspensionForceLevel"
		["lubrificação"] = 0.06, -- lubrificação da suspensão (0.0 a 100.0)  --"suspensionDamping"
		["lubrificação alta"] = 3.0, -- lubrificação da suspensão em alta velocidade (0.0 a 600.0)  --"suspensionHighSpeedDamping"
		["suspensão superior"] = 0.35, -- limita o máximo que a suspensão pode subir (-50.0 a 50.0)  --"suspensionUpperLimit"
		["suspensão inferior"] = -0.24, -- limita o máximo que a suspensão pode descer (-50.0 a 50.0)  --"suspensionLowerLimit"
		["relação da suspensão"] = 0.5, --taxa de força aplicada a suspensão frontal comparada com a suspensão traseira (0.0 a 1.0)  --"suspensionFrontRearBias"
		["embicagem"] = 0.0, -- muda o quanto o carro se inclina para frente no movimento de freagem e para tras no movimento de aceleração (0.0 a 30.0)  --"suspensionAntiDiveMultiplier"
		["assentos"] = 0.28, --distancia entre as portas e seus respectivos assentos (-20.0 a 20.0)  --"seatOffsetDistance"
		["colisão"] = 0.30, -- multiplicador de danos ao motor em colisões (0.0 a 10.0)  --"collisionDamageMultiplier"
		["valor"] = 10000, -- preço do veiculo --"monetary"
		--
	},
	--
	["Ventoso"] = { --exemplo de handling (estas opções irão sobescrever as dos handlings pré-configurados) anule ou delete as que não forem serem usadas
		--
		["aquatico"] = nao,
		["aereo"] = nao,
		["massa"] = 350.0, --peso do veículo em kilos (1.0 a 100000.0)  --"mass"
		["curvas"] = 119.59, --isso é usado para calcular efeitos de movimento (0.0 a 1000000.0)  --"turnMass"
		["aderência"] = 5.0, --muda a resistencia a movimento (-200.0 a 200.0)  --"dragCoeff"
		["centro"] = {0.0, 0.5, -0.1}, -- centro gravitacional do veiculo (-10 a 10)  --"centerOfMass"
		["submerssão"] = 300, --a porcentagem do veiculo que deve estar coberta para o veiculo fluturar (1 a 99999)  --"percentSubmerged"
		["tração"] = 1.8, --multiplicador que envolve curvas e a fricção dos peneus na superficie (asfalto, grama etc) (-100000.0 a 100000.0)  --"tractionMultiplier"
		["perda de tração"] =  0.9, --pegada de aceleração/freiagem do veiculo como multiplicador para fricção dos peneus contra a superficie (asfalto etc) (0.0 a 100.0)  --"tractionLoss"
		["relação de tração"] = 0.48, --relação da força entre o eixo frontal e traseiro (0.0 a 1.0)  --"tractionBias"
		["marchas"] = 4, -- quantas marchas o veiculo possui (1 a 5)  --"numberOfGears"
		["velocidade"] = 190.0, --velocidade máxima que o veiculo pode alcançar (0.1 a 200000.0) --"maxVelocity"
		["aceleração"] = 30.0, --taxa de aceleração do motor (0.0 a 100000.0)  --"engineAcceleration"
		["inercia"] = 5.0, --suaviza ou engrossa o progresso de aceleração (-1000.0 a 1000.0)  --"engineInertia"
		["direção"] = "rwd", -- tipo de direção, valores disponiveis: rwd (road), fwd, awd (off-road) --"driveType"
		["alimentacao"] = "eletronica", --alimentacao do veiculo: "eletronica", "gasolina", "alcool", "diesel"  --"engineType"
		["desaceleração"] = 14.0, -- força desacelerativa dos freios (0.1 a 100000.0)  --"brakeDeceleration"
		["relação dos freios"] = 0.50, --taxa de relação de força entre o freio frontal e traseiro (0.0 a 1.0)  --"brakeBias"
		["ABS"] = nao, --freios ABS   --"ABS"
		["limite direcional"] = 35.0, -- angulo máximo de giro do volante (0.0 a 360.0)  --"steeringLock"
		["suspensão"] = 1.0, -- força exercida pela suspensão (0.0 a 100.0)  --"suspensionForceLevel"
		["lubrificação"] = 0.15, -- lubrificação da suspensão (0.0 a 100.0)  --"suspensionDamping"
		["lubrificação alta"] = 0.0, -- lubrificação da suspensão em alta velocidade (0.0 a 600.0)  --"suspensionHighSpeedDamping"
		["suspensão superior"] = 0.12, -- limita o máximo que a suspensão pode subir (-50.0 a 50.0)  --"suspensionUpperLimit"
		["suspensão inferior"] = -0.17, -- limita o máximo que a suspensão pode descer (-50.0 a 50.0)  --"suspensionLowerLimit"
		["relação da suspensão"] = 0.5, --taxa de força aplicada a suspensão frontal comparada com a suspensão traseira (0.0 a 1.0)  --"suspensionFrontRearBias"
		["embicagem"] = 0.0, -- muda o quanto o carro se inclina para frente no movimento de freagem e para tras no movimento de aceleração (0.0 a 30.0)  --"suspensionAntiDiveMultiplier"
		["assentos"] = 0.0, --distancia entre as portas e seus respectivos assentos (-20.0 a 20.0)  --"seatOffsetDistance"
		["colisão"] = 0.11, -- multiplicador de danos ao motor em colisões (0.0 a 10.0)  --"collisionDamageMultiplier"
		["valor"] = 4500, -- preço do veiculo --"monetary"
		["marcadores do modelo"] = 0x1001000, -- marcações especiais do modelo --"modelFlags"
		["faróis frontais"] = "small", --tipo de farol frontal (long, small, big, tall) --"headLight"
		["faróis traseiros"] = "small", -- tipo de farol traseiro (long, small, big, tall) --"tailLight"
		["animações"] = 5, --grupos especiais de animação do veiculo --"animGroup"
		["re-estoque"] = 5,
		--
	},
	--
	["Angel"] = {
		--
		["massa"] = 800.0, --peso do veículo em kilos (1.0 a 100000.0)  --"mass"
		["curvas"] = 403.29, --isso é usado para calcular efeitos de movimento (0.0 a 1000000.0)  --"turnMass"
		["aderência"] = 4.0, --muda a resistencia a movimento (-200.0 a 200.0)  --"dragCoeff"
		["centro"] = {0.0, 0.1, 0.0}, -- centro gravitacional do veiculo (-10 a 10)  --"centerOfMass"
		["submerssão"] = 103, --a porcentagem do veiculo que deve estar coberta para o veiculo fluturar (1 a 99999)  --"percentSubmerged"
		["tração"] = 1.2, --multiplicador que envolve curvas e a fricção dos peneus na superficie (asfalto, grama etc) (-100000.0 a 100000.0)  --"tractionMultiplier"
		["perda de tração"] =  0.82, --pegada de aceleração/freiagem do veiculo como multiplicador para fricção dos peneus contra a superficie (asfalto etc) (0.0 a 100.0)  --"tractionLoss"
		["relação de tração"] = 0.51, --relação da força entre o eixo frontal e traseiro (0.0 a 1.0)  --"tractionBias"
		["marchas"] = 4, -- quantas marchas o veiculo possui (1 a 5)  --"numberOfGears"
		["velocidade"] = 190, --velocidade máxima que o veiculo pode alcançar (0.1 a 200000.0) --"maxVelocity"
		["aceleração"] = 40.0, --taxa de aceleração do motor (0.0 a 100000.0)  --"engineAcceleration"
		["inercia"] = 5.0, --suaviza ou engrossa o progresso de aceleração (-1000.0 a 1000.0)  --"engineInertia"
		["direção"] = "rwd", -- tipo de direção, valores disponiveis: rwd (road), fwd, awd (off-road) --"driveType"
		["alimentacao"] = "gasolina", --alimentacao do veiculo: "gasolina", "alcool" ou "diesel"  --"engineType"
		["desaceleração"] = 10.0, -- força desacelerativa dos freios (0.1 a 100000.0)  --"brakeDeceleration"
		["relação dos freios"] = 0.55, --taxa de relação de força entre o freio frontal e traseiro (0.0 a 1.0)  --"brakeBias"
		["ABS"] = nao, --freios ABS   --"ABS"
		["limite direcional"] = 35.0, -- angulo máximo de giro do volante (0.0 a 360.0)  --"steeringLock"
		["suspensão"] = 0.65, -- força exercida pela suspensão (0.0 a 100.0)  --"suspensionForceLevel"
		["lubrificação"] = 0.2, -- lubrificação da suspensão (0.0 a 100.0)  --"suspensionDamping"
		["lubrificação alta"] = 0, -- lubrificação da suspensão em alta velocidade (0.0 a 600.0)  --"suspensionHighSpeedDamping"
		["suspensão superior"] = 0.09, -- limita o máximo que a suspensão pode subir (-50.0 a 50.0)  --"suspensionUpperLimit"
		["suspensão inferior"] = -0.11, -- limita o máximo que a suspensão pode descer (-50.0 a 50.0)  --"suspensionLowerLimit"
		["relação da suspensão"] = 0.55, --taxa de força aplicada a suspensão frontal comparada com a suspensão traseira (0.0 a 1.0)  --"suspensionFrontRearBias"
		["embicagem"] = 0.0, -- muda o quanto o carro se inclina para frente no movimento de freagem e para tras no movimento de aceleração (0.0 a 30.0)  --"suspensionAntiDiveMultiplier"
		["assentos"] = 0.0, --distancia entre as portas e seus respectivos assentos (-20.0 a 20.0)  --"seatOffsetDistance"
		["colisão"] = 0.24, -- multiplicador de danos ao motor em colisões (0.0 a 10.0)  --"collisionDamageMultiplier"
		["valor"] = 10000, -- preço do veiculo --"monetary"
	},
	--
	["Little Willy"] = {
		--
		["aquatico"] = nao,
		["aereo"] = nao,
		["massa"] = 2500.0, --peso do veículo em kilos (1.0 a 100000.0)  --"mass"
		["curvas"] = 6041.7, --isso é usado para calcular efeitos de movimento (0.0 a 1000000.0)  --"turnMass"
		["aderência"] = 0.2, --muda a resistencia a movimento (-200.0 a 200.0)  --"dragCoeff"
		["centro"] = {0.0, 0.0, -0.1}, -- centro gravitacional do veiculo (-10 a 10)  --"centerOfMass"
		["submerssão"] = 75, --a porcentagem do veiculo que deve estar coberta para o veiculo fluturar (1 a 99999)  --"percentSubmerged"
		["tração"] = 0.65, --multiplicador que envolve curvas e a fricção dos peneus na superficie (asfalto, grama etc) (-100000.0 a 100000.0)  --"tractionMultiplier"
		["perda de tração"] =  0.9, --pegada de aceleração/freiagem do veiculo como multiplicador para fricção dos peneus contra a superficie (asfalto etc) (0.0 a 100.0)  --"tractionLoss"
		["relação de tração"] = 0.5, --relação da força entre o eixo frontal e traseiro (0.0 a 1.0)  --"tractionBias"
		["marchas"] = 1, -- quantas marchas o veiculo possui (1 a 5)  --"numberOfGears"
		["velocidade"] = 200, --velocidade máxima que o veiculo pode alcançar (0.1 a 200000.0) --"maxVelocity"
		["aceleração"] = 16.0, --taxa de aceleração do motor (0.0 a 100000.0)  --"engineAcceleration"
		["inercia"] = 5.0, --suaviza ou engrossa o progresso de aceleração (-1000.0 a 1000.0)  --"engineInertia"
		["direção"] = "rwd", -- tipo de direção, valores disponiveis: rwd (road), fwd, awd (off-road) --"driveType"
		["alimentacao"] = "gasolina", --alimentacao do veiculo: "gasolina", "alcool" ou "diesel"  --"engineType"
		["desaceleração"] = 5.0, -- força desacelerativa dos freios (0.1 a 100000.0)  --"brakeDeceleration"
		["relação dos freios"] = 0.45, --taxa de relação de força entre o freio frontal e traseiro (0.0 a 1.0)  --"brakeBias"
		["ABS"] = nao, --freios ABS   --"ABS"
		["limite direcional"] = 30.0, -- angulo máximo de giro do volante (0.0 a 360.0)  --"steeringLock"
		["suspensão"] = 2.0, -- força exercida pela suspensão (0.0 a 100.0)  --"suspensionForceLevel"
		["lubrificação"] = 0.15, -- lubrificação da suspensão (0.0 a 100.0)  --"suspensionDamping"
		["lubrificação alta"] = 0, -- lubrificação da suspensão em alta velocidade (0.0 a 600.0)  --"suspensionHighSpeedDamping"
		["suspensão superior"] = 0.50, -- limita o máximo que a suspensão pode subir (-50.0 a 50.0)  --"suspensionUpperLimit"
		["suspensão inferior"] = -0.20, -- limita o máximo que a suspensão pode descer (-50.0 a 50.0)  --"suspensionLowerLimit"
		["relação da suspensão"] = 0.5, --taxa de força aplicada a suspensão frontal comparada com a suspensão traseira (0.0 a 1.0)  --"suspensionFrontRearBias"
		["embicagem"] = 0.0, -- muda o quanto o carro se inclina para frente no movimento de freagem e para tras no movimento de aceleração (0.0 a 30.0)  --"suspensionAntiDiveMultiplier"
		["assentos"] = 0.30, --distancia entre as portas e seus respectivos assentos (-20.0 a 20.0)  --"seatOffsetDistance"
		["colisão"] = 0.75, -- multiplicador de danos ao motor em colisões (0.0 a 10.0)  --"collisionDamageMultiplier"
		["valor"] = 45000, -- preço do veiculo --"monetary"
	},
	--
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

--Setup
_createVehicle = createVehicle --não tocar
_getElementModel = getElementModel --não tocar
_setElementModel = setElementModel --não tocar

function createVehicle (...)
    if type (arg[1]) == "number" then return _createVehicle (unpack (arg)) end
return exports["PUNKVehicleLoader"]:createVehicle (unpack (arg))
end

function getElementModel (...)
	if type (arg[1]) == "vehicle" then return exports["PUNKVehicleLoader"]:getVehicleModel (...) end
return _getElementModel (unpack(arg))
end

function setElementModel (...)
	if type (arg[1]) == "vehicle" and type (arg[2]) == "string" then return exports["PUNKVehicleLoader"]:setVehicleModel (unpack(arg)) end
return _setElementModel (unpack(arg))
end
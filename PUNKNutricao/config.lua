--Script de nutricao criado por Tonyt_Punk
-----------------------Inicialização-------------------------
--Descrição: Variaveis de inicialização, não modifique
sim = true
nao = false
--------------------------------------------------
-------------------------Configurações-------------------------
teclaAcao = "e" --tecla usada para interagir com objetos
tempoDano = 480 -- de quanto em quanto tempo o jogador sofre dano por fome (segundos)
dano = 5		-- quanto o jogador perde de vida a cada vez que estiver com a alimentação ruim
resetarMorte = sim --resetar fome do personagem após morrer
tamanhoEstomago = 10 -- quanta comida o jogador pode comer
valorApetite = 1 --quanto a fome aumenta
valorSede = 1		--quanto a sede aumenta
valorPressao = 0.25 --quanto a pressao aumenta
valorGlicose = 0.25 --quanto a glicose aumenta
elementData = sim -- o sistema de fome em si não utiliza elementdata, mas se você tiver um sistema que use, como um HUD, por exemplo ative esta opção
	elementDataFome = "fome" -- elementData da fome
	elementDataSede = "sede" -- elementData da sede
	elementDataPressao = "pressao" -- elementData da pressao
	elementDataGlicose = "glicose" -- elementData da glicose
	elementDataEstomago = "estomago" -- elementData do estomago
	
tabelaFalas = {
	fome = {
		baixa = {"Me sinto estufado", "Não aguento mais comer"},
		alta = {"Estou faminto", "Queria comer alguma coisa..."},
	},
	sede = {
		baixa = {"Acho que bebi demais", "Não quero beber nada tão cedo"},
		alta =  {"Estou com muita sede", "Um refresco cairia bem..."},
	},
	pressao = {
		baixa = {"Sinto minha pressão caindo...", "O mundo está girando"},
		alta = {"Não me sinto muito bem", "Não estou legal"},
	},
	glicose = {
		baixa = {"Queria comer um doce", "Sinto vontade de comer um chocolate"},
		alta = {"Estou enjoado...", "Não quero ver doces na minha frente tão cedo"},
	},
}

--Abaixo segue uma tabela nutricional de cada alimento
Lanches = {
nutricao = 2,
fome = 1,
sede = 0,
pressao = 1,
glicose = 0,
preco = 5,
}

Refrescos = {
nutricao = 1,
fome = 0,
sede = 1,
pressao = 0,
glicose = 1,
preco = 2,
}

Doces = {
nutricao = 1,
fome = 1,
sede = 0,
pressao = 0,
glicose = 1,
preco = 5,
}

Iguarias = {
nutricao = 3,
fome = 2,
sede = 1,
pressao = 2,
glicose = 1,
preco = 10,
}

Sobremesas = {
nutricao = 3,
fome = 1,
sede = 2,
pressao = 1,
glicose = 2,
preco = 10,
}

--Aqui estão localizadas as maquians de lanches e barraquinhas para comer
maquinasAlimento = {
	--
	salgadinho = {
		--Novas
		{
		posicao = {1761.43, -1884.5, 13.7},
		rotacao = 180,
		},
		
		--Nativas
		--
		{
		posicao = {330.6796875, 178.5, 1020.0700073242},
		rotacao = 0,
		},
		{
		posicao = {331.921875, 178.5, 1020.0700073242},
		rotacao = 0,
		},
		{
		posicao = {350.90625, 206.0859375, 1008.4799804688},
		rotacao = -90,
		},
		{
		posicao = {361.5625, 158.6171875, 1008.4799804688},
		rotacao = 0,
		},
		{
		posicao = {371.59375, 178.453125, 1020.0700073242},
		rotacao = 0,
		},
		{
		posicao = {374.890625, 188.9765625, 1008.4799804688},
		rotacao = 0,
		},
		{
		posicao = {2155.83984375, 1607.8798828125, 1000.0599975586},
		rotacao = -90,
		},
		{
		posicao = {2202.4501953125, 1617.009765625, 1000.0599975586},
		rotacao = 360,
		},
		{
		posicao = {2209.240234375, 1621.2099609375, 1000.0599975586},
		rotacao = 0,
		},
		{
		posicao = {2222.3701171875, 1602.6396484375, 1000.0599975586},
		rotacao = -90,
		},
		{
		posicao = {-36.1484375, -57.875, 1003.6300048828},
		rotacao = 360,
		},
		{
		posicao = {-17.546875, -91.7109375, 1003.6300048828},
		rotacao = 360,
		},
		{
		posicao = {-16.53125, -140.296875, 1003.6300048828},
		rotacao = 360,
		},
		{
		posicao = {-33.875, -186.765625, 1003.6300048828},
		rotacao = 360,
		},
		{
		posicao = {500.5625, -1.3671875, 1000.7299804688},
		rotacao = 0,
		},
		{
		posicao = {379.0390625, -178.8828125, 1000.7299804688},
		rotacao = 90,
		},
		{
		posicao = {500.599609375, -1.5, 1000.5999755859},
		rotacao = 180,
		},
		{
		posicao = {374.7998046875, 188.7001953125, 1008.299987793},
		rotacao = 180,
		},
		{
		posicao = {371.5, 178.400390625, 1019.9000244141},
		rotacao = 180,
		},
		{
		posicao = {331.900390625, 178.400390625, 1019.9000244141},
		rotacao = 180,
		},
		{
		posicao = {330.900390625, 178.400390625, 1019.9000244141},
		rotacao = 180,
		},
		--
	},
	--
	barrinha = {
		--Novas
		{
		posicao = {1763.43, -1884.5, 13},
		rotacao = 180,
		},
		--Nativas
		{
		posicao = {1634.1103515625, -2237.5302734375, 12.890600204468},
		rotacao = 180,
		},
		{
		posicao = {2480.8603515625, -1959.26953125, 12.960900306702},
		rotacao = 360,
		},
		{
		posicao = {2139.5205078125, -1161.4794921875, 23.359399795532},
		rotacao = -90,
		},
		{
		posicao = {2153.23046875, -1016.150390625, 62.234401702881},
		rotacao = 308.132,
		},
		{
		posicao = {-1350.1201171875, 493.859375, 10.585900306702},
		rotacao = -90,
		},
		{
		posicao = {-2229.189453125, 286.4140625, 34.703098297119},
		rotacao = 0,
		},
		{
		posicao = {1659.4599609375, 1722.8603515625, 10.218799591064},
		rotacao = 180,
		},
		{
		posicao = {2647.7001953125, 1129.66015625, 10.218799591064},
		rotacao = 180,
		},
		{
		posicao = {1398.83984375, 2222.6103515625, 10.421899795532},
		rotacao = 0,
		},
		{
		posicao = {-1455.1201171875, 2591.66015625, 55.234401702881},
		rotacao = 0,
		},
		{
		posicao = {-76.03125, 1227.990234375, 19.125},
		rotacao = -90,
		},
		{
		posicao = {-253.7421875, 2599.759765625, 62.242198944092},
		rotacao = -90,
		},
		{
		posicao = {662.4296875, -552.1640625, 15.710900306702},
		rotacao = 360,
		},
	},
	--
	chilli = {
		--Novas
		{
		posicao = {1756.25, -1890.5, 13.55},
		rotacao = 180,
		},
		--Nativas
		{
		posicao = {1589.7001953125, -1287.26953125, 17.640600204468},
		rotacao = 180,
		},
		{
		posicao = {1000.48046875, -1849.0400390625, 12.796899795532},
		rotacao = 160,
		},
		{
		posicao = {388.859375, -2071.66015625, 7.9453101158142},
		rotacao = 180,
		},
		{
		posicao = {-2691.6796875, 384.4921875, 4.4843797683716},
		rotacao = 225,
		},
		{
		posicao = {-2146.51953125, -424.7734375, 35.328098297119},
		rotacao = 64,
		},
		{
		posicao = {-2094.2294921875, -396.4609375, 35.656200408936},
		rotacao = 39,
		},
		{
		posicao = {-2036.3203125, -396.7578125, 35.656200408936},
		rotacao = 9,
		},
		{
		posicao = {2537.8203125, 2137.1201171875, 10.859399795532},
		rotacao = 90,
		},
		{
		posicao = {1558.2001953125, 979.4453125, 10.945300102234},
		rotacao = 270,
		},
		{
		posicao = {2144.6396484375, 1441.9296875, 10.851599693298},
		rotacao = 180,
		},
		{
		posicao = {-799.78125, 1624.2197265625, 27.125},
		rotacao = 200,
		},
		{
		posicao = {-197.4921875, 2659.91015625, 62.820301055908},
		rotacao = 270,
		},
		{
		posicao = {-2199.990234375, -2386.8896484375, 30.718799591064},
		rotacao = 250,
		},
		{
		posicao = {2328, 2421.2998046875, 10.800000190735},
		rotacao = 180,
		},
	},
	--
	lamen = {
		--Novas
		{
		posicao = {1756.25, -1893.5, 13.55},
		rotacao = 180,
		},
		--Nativas
		--
		{
		posicao = {-2515.7900390625, -15.6171875, 25.63279914856},
		rotacao = 325,
		},
		--
		{
		posicao = {-2151.83984375, -435.5615234375, 35.289100646973},
		rotacao = 44,
		},
		--
		{
		posicao = {-2193.76953125, 605.1884765625, 35.210899353027},
		rotacao = 15,
		},
		--
		{
		posicao = {-2194.01953125, 613.40625, 35.210899353027},
		rotacao = 175,
		},
		--
		{
		posicao = {-2197.58984375, 613.40625, 35.210899353027},
		rotacao = 155,
		},
		--
		{
		posicao = {-2181.4794921875, 613.703125, 35.210899353027},
		rotacao = 155,
		},
		--
		{
		posicao = {-2187.1494140625, 614.546875, 35.210899353027},
		rotacao = 170,
		},
		--
		{
		posicao = {2536.1201171875, 2290.8505859375, 10.859399795532},
		rotacao = 90,
		},
		--
	},
	--
	sorvete = {
		--Novas
		{
		posicao = {1756.25, -1896.5, 13.55},
		rotacao = 180,
		},
		--Nativas
		{
		posicao = {-2286.5400390625, 147.6328125, 35.320301055908},
		rotacao = 315,
		},
		{
		posicao = {-2384.2294921875, -584.0078125, 132.10899353027},
		rotacao = 270,
		},
		{
		posicao = {2538.0302734375, 2153.7001953125, 10.734399795532},
		rotacao = 90,
		},
		{
		posicao = {2295.7099609375, 2250.1005859375, 10.734399795532},
		rotacao = 90,
		},
		{
		posicao = {1030.58984375, 1362.58984375, 10.8125},
		rotacao = 0,
		},
		{
		posicao = {2125.1298828125, 1442.080078125, 10.703100204468},
		rotacao = 0,
		},
		{
		posicao = {2175.08984375, 1523.41015625, 10.734399795532},
		rotacao = 0,
		},
	},
	--
	cola1 = {
		--Novas
		{
		posicao = {1765.43, -1884.5, 12.5},
		rotacao = 180,
		},
		--Nativas
		{
		posicao = {-2420.1796875, 985.9453125, 44.296901702881},
		rotacao = -90,
		},
		--
	},
	--
	cola2 = {
		--Novas
		{
		posicao = {1767.43, -1884.5, 12.5},
		rotacao = 180,
		},
		--Nativas
		{
		posicao = {-2420.2197265625, 984.578125, 44.296901702881},
		rotacao = -90,
		},
	},
	--
	soda1 = {
		--Novas
		{
		posicao = {1769.43, -1884.5, 13.75},
		rotacao = 180,
		},
		--Nativas
		{
		posicao = {2225.2001953125, -1153.419921875, 1025.9100341797},
		rotacao = 90,
		},
		{
		posicao = {2155.91015625, 1606.7705078125, 1000.049987793},
		rotacao = -90,
		},
		{
		posicao = {2576.7001953125, -1284.4296875, 1061.0899658203},
		rotacao = 90,
		},
		{
		posicao = {2222.2001953125, 1606.7705078125, 1000.049987793},
		rotacao = -90,
		},
		{
		posicao = {-19.0390625, -57.8359375, 1003.6300048828},
		rotacao = 0,
		},
		{
		posicao = {-16.1171875, -91.640625, 1003.6300048828},
		rotacao = 0,
		},
		{
		posicao = {-32.4453125, -186.6953125, 1003.6300048828},
		rotacao = 0,
		},
		{
		posicao = {-35.7265625, -140.2265625, 1003.6300048828},
		rotacao = 0,
		},
		{
		posicao = {495.96875, -24.3203125, 1000.7299804688},
		rotacao = 0,
		},
		{
		posicao = {501.828125, -1.4296875, 1000.7299804688},
		rotacao = 0,
		},
		{
		posicao = {373.828125, -178.140625, 1000.7299804688},
		rotacao = 0,
		},
		{
		posicao = {2503.1005859375, 1243.7001953125, 10.800000190735},
		rotacao = 0,
		},
		{
		posicao = {501.7998046875, -1.5, 1000.5999755859},
		rotacao = 180,
		},
		{
		posicao = {2086.1005859375, 2071.400390625, 11},
		rotacao = 270,
		},
	},
	--
	soda2 = {
		--Novas
		{
		posicao = {1771.43, -1884.5, 13},
		rotacao = 180,
		},
		--Nativas
		{
		posicao = {1789.2099609375, -1369.26953125, 15.164099693298},
		rotacao = 90,
		},
		{
		posicao = {1729.7900390625, -1943.0498046875, 12.945300102234},
		rotacao = 180,
		},
		{
		posicao = {2060.1201171875, -1897.6396484375, 12.929699897766},
		rotacao = 180,
		},
		{
		posicao = {1928.73046875, -1772.4501953125, 12.945300102234},
		rotacao = -90,
		},
		{
		posicao = {2325.98046875, -1645.1298828125, 14.210900306702},
		rotacao = 180,
		},
		{
		posicao = {2352.1796875, -1357.16015625, 23.773399353027},
		rotacao = -90,
		},
		{
		posicao = {1154.73046875, -1460.8896484375, 15.156200408936},
		rotacao = 90,
		},
		{
		posicao = {-1350.1201171875, 492.2890625, 10.585900306702},
		rotacao = -90,
		},
		{
		posicao = {-2118.9697265625, -423.6484375, 34.726600646973},
		rotacao = 75.0001,
		},
		{
		posicao = {-2118.6201171875, -422.4140625, 34.726600646973},
		rotacao = 75.0001,
		},
		{
		posicao = {-2097.26953125, -398.3359375, 34.726600646973},
		rotacao = 0,
		},
		{
		posicao = {-2092.08984375, -490.0546875, 34.726600646973},
		rotacao = 180,
		},
		{
		posicao = {-2063.26953125, -490.0546875, 34.726600646973},
		rotacao = 180,
		},
		{
		posicao = {-2005.650390625, -490.0546875, 34.726600646973},
		rotacao = 180,
		},
		{
		posicao = {-2034.4599609375, -490.0546875, 34.726600646973},
		rotacao = 180,
		},
		{
		posicao = {-2068.5595703125, -398.3359375, 34.726600646973},
		rotacao = 360,
		},
		{
		posicao = {-2039.849609375, -398.3359375, 34.726600646973},
		rotacao = 360,
		},
		{
		posicao = {-2011.1396484375, -398.3359375, 34.726600646973},
		rotacao = 360,
		},
		{
		posicao = {-1980.7900390625, 142.6640625, 27.07029914856},
		rotacao = 90,
		},
		{
		posicao = {2319.990234375, 2532.8505859375, 10.218799591064},
		rotacao = 180,
		},
		{
		posicao = {1520.150390625, 1055.2705078125, 10},
		rotacao = 90,
		},
		{
		posicao = {-862.828125, 1536.6103515625, 21.984399795532},
		rotacao = 0,
		},
		{
		posicao = {-14.703125, 1175.3603515625, 18.953100204468},
		rotacao = 0,
		},
		{
		posicao = {-253.7421875, 2597.9501953125, 62.242198944092},
		rotacao = -90,
		},
		{
		posicao = {201.015625, -107.6171875, 0.89843797683716},
		rotacao = 90,
		},
	},
	--
	avulsos = { --para os itens desta lista não será criado qualquer tipo de maquina ou carrinho de comida, recomendado para lanchonetes etc
		--
		{
		posicao = {2329.25, 6.37, 26.52},
		rotacao = 90,
		},
		--
	}
	--
}

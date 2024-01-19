------------------INICIALIZAÇÃO------------------
--Não modificar estes valores
sim = true
nao = false
-----------------CONFIGURAÇÕES-----------------
areas = {
	--
	["Unity Station"] = {
	--
	acesso = {"Grove", "Ballas", "Vagos", "Aztecas"},
	posicao = {1826.5, -1822.7, 13},
	provocar = 3, --quantos abates são necessarios para provocar uma guerra (0 ou -1 para guerra ser provocada assim que entrar no território)
	conquistar = 5, --quantos abates são necessarios para vencer a guerra (0 ou -1 para não haver limite de abates para conquistar)
	duracao = 60, --quantos segundos dura a disputa (ao final do abate a equipe com mais pontos vence, se não houver nenhum ponto a equipe com mais membros na area vence)
		--
		tamanho = {
			horizontal = 100,
			vertical = 100,
			elevacao = 30,
			profundidade = 30,
		},
		--
	},
	--
}

skins = { --skins dos bonecos
	["Grove"] = {105, 106, 107, 207},
	["Ballas"] = {102, 103, 104, 13},
	["Vagos"] = {108, 109, 110, 215},
	["Aztecas"] = {114, 115, 116},
}

cores = { --cores da equipe
	["Grove"] = {0,255,0, 170},
	["Ballas"] = {200, 0, 150, 170},
	["Vagos"] = {255, 255, 0, 170},
	["Aztecas"] = {0, 0, 255, 170},
}

animacoes = { --animações da equipe
	--
	["Grove"] = {
		{"ghands", "gsign1", -1, true, true},
		{"ghands", "gsign1lh", -1, true, true},
		{"ghands", "gsign2", -1, true, true},
		{"ghands", "gsign2lh", -1, true, true},
		{"ghands", "gsign3", -1, true, true},
		{"ghands", "gsign4", -1, true, true},
		{"ghands", "gsign4lh", -1, true, true},
		{"ghands", "gsign5", -1, true, true},
		{"ghands", "gsign5lh", -1, true, true},
		{"ghands", "gsign3lh", -1, true, true},
	},
	--
	["Ballas"] = {
		{"ghands", "lhgsign1", -1, true, true},
		{"ghands", "lhgsign1lh", -1, true, true},
		{"ghands", "lhgsign2", -1, true, true},
		{"ghands", "lhgsign2lh", -1, true, true},
		{"ghands", "lhgsign3", -1, true, true},
		{"ghands", "lhgsign4", -1, true, true},
		{"ghands", "lhgsign4lh", -1, true, true},
		{"ghands", "lhgsign5", -1, true, true},
		{"ghands", "lhgsign5lh", -1, true, true},
		{"ghands", "lhgsign3lh", -1, true, true},
	},
	--
	["Vagos"] = {
		{"ghands", "rhgsign11", -1, true, true},
		{"ghands", "rhgsign11lh", -1, true, true},
		{"ghands", "rhgsign12", -1, true, true},
		{"ghands", "rhgsign12lh", -1, true, true},
		{"ghands", "rhgsign13", -1, true, true},
		{"ghands", "rhgsign14", -1, true, true},
		{"ghands", "rhgsign14lh", -1, true, true},
		{"ghands", "rhgsign15", -1, true, true},
		{"ghands", "rhgsign15lh", -1, true, true},
		{"ghands", "rhgsign13lh", -1, true, true},
	},
	--
	["Aztecas"] = {
		{"ghands", "gsign1", -1, true, true},
		{"ghands", "gsign1lh", -1, true, true},
		{"ghands", "gsign2", -1, true, true},
		{"ghands", "gsign2lh", -1, true, true},
		{"ghands", "gsign3", -1, true, true},
		{"ghands", "gsign4", -1, true, true},
		{"ghands", "gsign4lh", -1, true, true},
		{"ghands", "gsign5", -1, true, true},
		{"ghands", "gsign5lh", -1, true, true},
		{"ghands", "gsign3lh", -1, true, true},
	},
	--
}

eventos = {
	conquer = "PUNKAreasConquer",

}
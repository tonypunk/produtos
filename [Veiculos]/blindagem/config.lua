---------------INICIALIZAÇÃO-------------------
--Não modofique estes valores
sim = true
nao = false
---------------CONFIGURAÇÕES--------------------

marcadores = {
	--
	{
	posicao = {1850.7, -1856.5, 13}, --posição das oficinas de blindagem
	preco = 1000, --preço da blindagem
	lataria = sim, --blindar lataria
	janelas = nao, --blindar janelas
	pneus = nao, --blindar pneus
	colisoes = nao, --blindar contra colisões
	perfurantes = {24,25,26,27,30,31,33,34}, --armas que perfuram a blindagem fornecida nesta oficina
	},
	--
	{
	posicao = {2095.7, 1282.68, 10.4}, --posição das oficinas de blindagem
	preco = 1000, --preço da blindagem
	lataria = sim, --blindar lataria
	janelas = sim, --blindar janelas
	pneus = nao, --blindar pneus
	colisoes = nao, --blindar contra colisões
	perfurantes = {30,31}, --armas que perfuram a blindagem fornecida nesta oficina
	},
	--
	{
	posicao = {2095.7, 1282.68, 10.4}, --posição das oficinas de blindagem
	preco = 1000, --preço da blindagem
	lataria = sim, --blindar lataria
	janelas = sim, --blindar janelas
	pneus = sim, --blindar pneus
	colisoes = sim, --blindar contra colisões
	perfurantes = {-1}, --armas que perfuram a blindagem fornecida nesta oficina
	},
	--
}

nativos = { -- veiculos blindados naturalmente
	--
	[427] = {
	lataria = sim, --blindar lataria
	janelas = sim, --blindar janelas
	pneus = nao, --blindar pneus
	colisoes = nao, --blindar contra colisões
	perfurantes = {30,31}, --armas que perfuram a blindagem deste veiculo
	},
	--
	[490] = {
	lataria = sim, --blindar lataria
	janelas = sim, --blindar janelas
	pneus = sim, --blindar pneus
	colisoes = nao, --blindar contra colisões
	perfurantes = {30,31}, --armas que perfuram a blindagem deste veiculo
	},
	--
	[428] = {
	lataria = sim, --blindar lataria
	janelas = sim, --blindar janelas
	pneus = nao, --blindar pneus
	colisoes = nao, --blindar contra colisões
	perfurantes = {30,31}, --armas que perfuram a blindagem deste veiculo
	},
	--
	[470] = {
	lataria = sim, --blindar lataria
	janelas = sim, --blindar janelas
	pneus = sim, --blindar pneus
	colisoes = nao, --blindar contra colisões
	perfurantes = {30,31}, --armas que perfuram a blindagem deste veiculo
	},
	--
	[432] = {
	lataria = sim, --blindar lataria
	janelas = nao, --blindar janelas
	pneus = sim, --blindar pneus
	colisoes = sim, --blindar contra colisões
	perfurantes = {-1}, --armas que perfuram a blindagem deste veiculo
	},
	--
	[601] = {
	lataria = sim, --blindar lataria
	janelas = sim, --blindar janelas
	pneus = sim, --blindar pneus
	colisoes = sim, --blindar contra colisões
	perfurantes = {35,36}, --armas que perfuram a blindagem deste veiculo
	},
	--
}

portas = {3, 8, 18} -- portas de garagens nativas do jogo se quiser abrir
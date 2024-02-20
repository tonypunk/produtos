drivebyBater = true -- habilitar combate corporal em veiculos
sangueAtivado = true --ativar/desativar sangue

apontar = "mouse2" --mirar arma
golpeE = "mouse1" --golpear à esquerda
golpeD = "mouse2" --golpear à direita
chuteE = "lctrl" --chutar à esquerda
chuteD = "lalt"	--chutar à direita
porta = "mouse1" --bater com a porta do veículo

dano = 1 -- dano causado pelos golpes,chutes e batidas
vidaPorta = 3 -- quantas batidas a porta do veículo resiste até ser destruida
--vidaMoto = 3 -- quantas batidas são necessarias para derrubar da moto
	--tempoBatidaMoto = 2 -- dentro de quantos segundos os golpes necessarios para derrubar devem ser desferidos

bloqueados = {425,447,469,  407,544,432,601, 441,464,501,465,564} --veiculos bloqueados nos quais não se pode atirar ou golpear

armasMotorista = {  -- armas permitidas aos motoristas
	atirar = {22,23,24,25,26,28,29,32 }, -- armas de disparo
	bater = {0,1,2,3,4,5,6,7,8,10,11,12,14,15,22,23,24,26,28,29,32}, --armas de combate
}

armasPassageiro = { -- armas permitidas aos passageiros
	atirar = { 22,23,24,25,26,28,29,30,31,32,33 },  -- armas de disparo
	bater = {0,1,2,3,4,5,6,7,8,10,11,12,14,15,22,23,24,26,28,29,30,32, 36}, --armas de combate
}

delay =	{ --velocidade de tiro de algumas armas que se não ajustadas ralizam varios disparos intantaneos (colt45, desert eagle, sawn-off shotgun etc)
['22'] = 300, 
['23'] = 300, 
['24'] = 800, 
['26'] = 200,
}
--
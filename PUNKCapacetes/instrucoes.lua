--[[Eventos (todos os eventos funcionam client e server side)
"onHelmetCreate" -- quando um capacete é criado
"onPedHelmetStartUse" -- detecta quando o jogador começa a vestir/remover o capacete
"onPedHelmetUse" -- quando um boneco usa um capacete, source = jogador, arg1 = objeto
"onPedHelmetVisor" -- quando um boneco usa um visor, source = jogador
"onPedHelmetDrop" -- quando um boneco descarta um capacete, argumento 1 = objeto, argumento 2 = pickup
"onPedHelmetRecieve" -- quando um boneco recebe um capacete
"onVehicleRecieveHelmet" -- quando um veiculo recebe um capacete
"onPedHelmetStore" -- quando um capacete é armazenado
"onHelmetPickupHit", -- quando o capacete dropado é alcançado
--Funções
createHelmet (tipo, x,y,z) --cria um capacete, você pode colocar o dono no lugar da posicao: createHelmet (tipo, source)
useHelmet (boneco) -- faz o boneco usar o capacete
useVisor (boneco) -- faz o boneco usar a viseira
storeHelmet (boneco) -- armazena o capacete do boneco
paintHelmet (objeto, cores) --pinta um capacete
getPedHelmet (boneco) -- obtem o capacete atual do boneco
getPedHelmets (boneco) -- obtem todo os capacetes do boneco
getData () --obtem todas as informações do arquivo config
getDetails () -- obtem os detalhes de acoplagem do capacete


acoplagem do capacete custom da squad: 
--
acoplagem = { --posições do capacete na cabeça e na mão
 --
   ["cabeça"] = { --posicao do capacete na cabeça
   posicao = {0.0225,0.048,0.0225}, --posição do capacete na cabeça
   rotacao = {3,0,-90}, --rotação do capacete na cabeça
   },
	--
	["mão"] = { --posicao do capacete segurando na mão
	posicao = {-0.025,-0.125,0.0275}, --posição do capacete na mao
    rotacao = {0,0,-15}, --rotação do capacete na mao
    },
	--
},
 --

]]
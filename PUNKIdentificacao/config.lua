--Sistema de visualização de IDs PUNK MTA STUDIO
------------------------INICIALIZAÇÃO
sim = true
nao = false
-------------------------CONFIGURAÇÕES --------------
--Descrição: Configurações gerais do mod, modifique a vontade
--Fonte
tamanhoFonteID = 5 -- tamanho da fonte
altura = 1.0 -- altura do ID com relação ao personagem
fonteCustomizada = nao -- acionar/desativar fonte customizada
arquivoFonte = "font.ttf" -- endereço do arquivo da fonte customizada
distancia = 20 -- distancia de visualização do ID
--
--Compatibilidade
elementDataAtivado = sim -- ativar compatibilidade com mods que usem elementData como referência
	elementDataNome = "ID" -- nome do elementData a ser utilizado para o ID (esta opção só funciona se a de cima estiver ativada)
--Visualização
anunciar = sim --anunciar entrada/saida de jogadores
comandoID = "id"
comandoIDTodos = "ids" -- mostra ou esconde o ID de todos
comandoIDProprio = "meuid" -- mostra ou esconde seu próprio ID
screenShot = sim -- mostrar IDs em screenshots independentemente de outras configurações
ocultarID = sim -- ocultar o próprio id para todos (sim) ou apenas para si mesmo (nao), as ACL abaixo ainda poderão vê-lo
ACLApenas = nao -- ativar visualização dos IDs apenas para as ACL abaixo, jogadores que não estejam nelas não verão nenhum id
ACLVisual = {--se a opção sistema estiver ativada o grupo de ACL abaixo poderá ver o id dos jogadores independente se eles estejam escondendo-o
	"Staff",
}

--Personalização
IDPersonalizado = sim -- ativar ids personalizáveis (alterar ID dos jogadores)
	IDPersonalizadoNome = "ID" -- nome dos dados do ID (geralmente é o mesmo do elementData)
	comandoAlterarID = "mudarid" -- comando para mudar o id de um jogador /mudarid idAntigo idNovo (/mudarid 10 55 muda o jogador ID 10 para o ID 55) 
	comandoResetarIDS = "resetarids" -- comando para resetar todos os IDs ao estado de fábrica
mostrarNomes = nao -- mostrar nome e barra de vida dos jogadores
ACLComandos = {--somente os membros destes grupos poderão mudar o ID de outros jogadores
	"Admin",
	"Staff",
}

--
--Extra
--Mensagens -- aqui você pode configurar em qual parte da tela as notificações devem aparecer
posicaoHorizontal = "esquerda" --posições horizontais: "esquerda" "centro" "direita"
posicaoVertical = "topo" --posicoes verticais:"fundo" "centro" "topo"
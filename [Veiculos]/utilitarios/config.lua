--PRÉ-CONFIGURAÇÕES, NÃO MODIFICAR --
sim = true
nao = false
--------------------------------------------------
-------------------------CONFIGURAÇÕES --------------

--Comandos
comandos = {
motor = "motor", -- comando padrão para ligar/desligar o motor
trancar = "trancar", -- comando padrão para abrir/fechar portas
farol = "farol", -- comando padrão para ligar/desligar os faróis
seta = "seta", -- comando padrão para usar seta à esquerda
pisca = "pisca", -- comando padrão para usar o pisca-alerta
}

--Controles
controles = {
motor = "j", -- tecla padrão para ligar/desligar o motor
trancar = "k", -- tecla padrão para abrir/fechar portas
farol = "l", -- tecla padrão para ligar/desligar os faróis
setaE = "lctrl", -- tecla padrão para usar seta à esquerda
setaD = "lalt", --tecla padrão para usar seta à direita
pisca = "-", --tecla padrão para usar o pisca-alerta
}

--Dados
elementData = { --tabela de dados para serem salvos através de elementData, gerando compatibilidade com outros mods (exclua se não quiser usar)
dono = "veiculoDono",  --elementData do dono do veiculo
}

--Mensagens -- aqui você pode configurar em qual parte da tela as notificações devem aparecer
posicaoHorizontal = "esquerda" --posições horizontais: "esquerda" "centro" "direita"
posicaoVertial = "topo" --posicoes verticais:"fundo" "centro" "topo"
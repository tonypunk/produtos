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
	--Exemplos de objetos
	------------------------------------
	--
	
	["Skateboard"] = {
		--
		modelo = "modelos/objetos/skateboard.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/skateboard.txd", --nome do arquivo .txd na pasta
		colisao = "modelos/objetos/skateboard.col", --nome do arquivo .col na pasta, caso não haja pode usar um ID e ele irá copiar a colisão
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Notebook"] = {
		--
		modelo = "modelos/objetos/notebook.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/notebook.txd", --nome do arquivo .txd na pasta
		colisao = "modelos/objetos/notebook.col", --nome do arquivo .col na pasta, caso não haja pode usar um ID e ele irá copiar a colisão
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Notebook B"] = {
		--
		modelo = "modelos/objetos/notebookB.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/notebook.txd", --nome do arquivo .txd na pasta
		colisao = "modelos/objetos/notebook.col", --nome do arquivo .col na pasta, caso não haja pode usar um ID e ele irá copiar a colisão
		distancia = 500, --distancia de renderização
		--
	},
	
	["Oculos 1"] = {
		--
		modelo = "modelos/objetos/oculos1.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/oculos.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Oculos 2"] = {
		--
		modelo = "modelos/objetos/oculos2.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/oculos.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Oculos 3"] = {
		--
		modelo = "modelos/objetos/oculos3.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/oculos.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Oculos 4"] = {
		--
		modelo = "modelos/objetos/oculos4.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/oculos.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Oculos 5"] = {
		--
		modelo = "modelos/objetos/oculos5.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/oculos.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Oculos 6"] = {
		--
		modelo = "modelos/objetos/oculos6.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/oculos.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Oculos 7"] = {
		--
		modelo = "modelos/objetos/oculos7.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/oculos.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Relogio 1"] = {
		--
		modelo = "modelos/objetos/relogio1.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/relogios.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Relogio 2"] = {
		--
		modelo = "modelos/objetos/relogio2.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/relogios.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Relogio 3"] = {
		--
		modelo = "modelos/objetos/relogio3.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/relogios.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Relogio 4"] = {
		--
		modelo = "modelos/objetos/relogio4.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/relogios.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Relogio 5"] = {
		--
		modelo = "modelos/objetos/relogio5.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/relogios.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Relogio 6"] = {
		--
		modelo = "modelos/objetos/relogio6.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/relogios.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	["Relogio 7"] = {
		--
		modelo = "modelos/objetos/relogio7.dff", --nome do arquivo .dff na pasta
		textura = "modelos/objetos/relogios.txd", --nome do arquivo .txd na pasta
		colisao = 1212, --ID para copiar a colisão caso não haja um arquivo de colisao (.col)
		distancia = 500, --distancia de renderização
		--
	},
	--
	------------------------------------
}

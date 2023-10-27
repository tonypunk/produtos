
--3d
function ini3D ()
idMorcego = 2968
idMonster = 189
	if localPlayer then
	txd = engineLoadTXD ( "files/3d/characters/bat.txd" )
	engineImportTXD ( txd, idMorcego )
	dff = engineLoadDFF ( "files/3d/characters/bat.dff" )
	engineReplaceModel ( dff, idMorcego	 )

	txd = engineLoadTXD ( "files/3d/characters/monster.txd" )
	engineImportTXD ( txd, idMonster )
	dff = engineLoadDFF ( "files/3d/characters/monster.dff" )
	engineReplaceModel ( dff, idMonster	 )
	
	local t = {
	[321] = "files/3d/weapons/torch",
	[322] = "files/3d/weapons/stake",
	[323] = "files/3d/weapons/tire_iron",
	[326] = "files/3d/weapons/fire_axe",
	[333] = "files/3d/weapons/sledge_hammer",
	[334] = "files/3d/weapons/nitestick",
	[338] = "files/3d/weapons/severed_arm",
	[351] = "files/3d/weapons/spaz",
	[353] = "files/3d/weapons/mp5",
	[356] = "files/3d/weapons/m4",
	}
		
		for id, caminho in pairs (t) do
			txd = engineLoadTXD ( caminho..".txd" )
			engineImportTXD ( txd, id )
			dff = engineLoadDFF ( caminho..".dff" )
			engineReplaceModel ( dff, id )
		end
	
	end
end
ini3D ()

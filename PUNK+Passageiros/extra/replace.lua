
local v = {

[567] = "modelos/savanna",
[422] = "modelos/bobcat",
[408] = "modelos/trash",
[482] = "modelos/burrito",
[427] = "modelos/enforcer",
[433] = "modelos/barracks",
[422] = "modelos/bobcat",
[431] = "modelos/bus",
[577] = "modelos/at400",
[538] = "modelos/streak",
[570] = "modelos/streakc",

}

for id, modelo in pairs (v) do
local txd = engineLoadTXD ( modelo..".txd" )
engineImportTXD ( txd, id )
local dff = engineLoadDFF (  modelo..".dff" )
engineReplaceModel ( dff, id )
end

scoreboard players set @a ow.running 1
scoreboard players set @a ow.timer 0
scoreboard players set @a ow.seedtype 1
function owcraft:scoring/reset
give @a minecraft:oak_log 5
give @a minecraft:crafting_table 1
give @a minecraft:stick 8
give @a minecraft:flint 1
give @a minecraft:cobblestone 7
title @a actionbar [{"text":"Buried Treasure ","color":"aqua","bold":true},{"text":"— Craft your tools!","color":"yellow"}]
execute as @a run function owcraft:scoring/count_start_iron

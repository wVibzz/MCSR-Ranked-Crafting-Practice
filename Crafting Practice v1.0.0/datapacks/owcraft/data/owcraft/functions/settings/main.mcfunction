# Settings Hub
clear @a
scoreboard players set @a ow.running 0
scoreboard objectives setdisplay sidebar
# Default sidebar ON if not yet set
execute unless score @s ow.show_side matches 0..1 run scoreboard players set @s ow.show_side 1
# Clear area
setblock 0 65 0 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 0 64 0 minecraft:redstone_block replace
setblock 0 65 0 minecraft:air replace
setblock 0 64 0 minecraft:air replace
kill @e[type=item]
# Load settings structure
setblock 0 65 0 minecraft:structure_block{mode:"LOAD",name:"owcraft:settings",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 0 64 0 minecraft:redstone_block replace
setblock 0 65 0 minecraft:air replace
setblock 0 64 0 minecraft:air replace
tp @a 0 67 0 0 0
tellraw @a ["",{"text":"[Settings] ","color":"gold","bold":true},{"text":"Click signs to change settings.","color":"yellow"}]

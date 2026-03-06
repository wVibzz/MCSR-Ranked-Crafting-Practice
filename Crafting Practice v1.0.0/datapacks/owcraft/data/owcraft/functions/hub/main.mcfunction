# Clean up edit area if it was loaded
function owcraft:edithubs/cleanup
clear @a
scoreboard players set @a ow.running 0
scoreboard players set @a ow.complete 0
scoreboard players set @a ow.seedtype 0
scoreboard players set @a ow.israndom 0
scoreboard objectives setdisplay sidebar
scoreboard players set @a ow.timer 0
setblock 0 65 0 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 0 64 0 minecraft:redstone_block replace
setblock 0 65 0 minecraft:air replace
setblock 0 64 0 minecraft:air replace
kill @e[type=item]
setblock 0 65 0 minecraft:structure_block{mode:"LOAD",name:"owcraft:hub",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 0 64 0 minecraft:redstone_block replace
setblock 0 65 0 minecraft:air replace
setblock 0 64 0 minecraft:air replace
kill @e[type=item]
tp @a 0 67 0 0 0
gamemode adventure @a
tellraw @a ["",{"text":"[OW Craft] ","color":"gold","bold":true},{"text":"Welcome back! Click a sign to start.","color":"yellow"}]

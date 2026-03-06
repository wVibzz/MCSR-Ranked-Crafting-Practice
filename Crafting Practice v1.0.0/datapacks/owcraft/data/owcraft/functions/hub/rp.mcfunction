clear @a
scoreboard players set @a ow.running 0
scoreboard players set @a ow.timer 0
setblock 0 65 0 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 0 64 0 minecraft:redstone_block replace
setblock 0 65 0 minecraft:air replace
setblock 0 64 0 minecraft:air replace
kill @e[type=item]
setblock 0 65 0 minecraft:structure_block{mode:"LOAD",name:"owcraft:rp",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 0 64 0 minecraft:redstone_block replace
setblock 0 65 0 minecraft:air replace
setblock 0 64 0 minecraft:air replace
tp @a 0 67 0 0 0
function owcraft:give_loot/ruined_portal/start

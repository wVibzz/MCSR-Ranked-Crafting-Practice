clear @a
scoreboard players set @a ow.timer 0
scoreboard players set @a ow.running 0
scoreboard objectives add ow.iron dummy
scoreboard objectives add ow.diamond dummy
scoreboard objectives add ow.rerolls dummy
scoreboard players set @a ow.rerolls 0
loot give @a loot owcraft:desert_pyramid
loot give @a loot owcraft:desert_pyramid
loot give @a loot owcraft:desert_pyramid
loot give @a loot owcraft:desert_pyramid
function owcraft:give_loot/desert_temple/check

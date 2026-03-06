clear @a
scoreboard players set @a ow.timer 0
scoreboard players set @a ow.running 0
scoreboard objectives add ow.iron dummy
scoreboard objectives add ow.diamond dummy
scoreboard objectives add ow.rerolls dummy
scoreboard objectives add ow.light dummy
scoreboard objectives add ow.food dummy
scoreboard players set @a ow.rerolls 0
loot give @a loot owcraft:ruined_portal
function owcraft:give_loot/ruined_portal/check

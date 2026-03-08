scoreboard players set @s ow.has_shears 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Shears","color":"white"},{"text":" [+3/+5 RP]","color":"green"}]
scoreboard players add @s ow.iron_used 2
scoreboard players set #dia_item ow.rng 0
function owcraft:scoring/check_resources

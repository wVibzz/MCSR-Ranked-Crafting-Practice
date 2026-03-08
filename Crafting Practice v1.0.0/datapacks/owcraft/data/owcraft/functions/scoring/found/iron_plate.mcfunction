scoreboard players set @s ow.has_iplate 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Iron Pressure Plate","color":"white"},{"text":" [+3]","color":"green"}]
scoreboard players add @s ow.iron_used 2
scoreboard players set #dia_item ow.rng 0
function owcraft:scoring/check_resources

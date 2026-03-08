scoreboard players set @s ow.has_iaxe 1
scoreboard players set @s ow.has_anyaxe 1
scoreboard players add @s ow.iron_used 3
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Iron Axe","color":"white"},{"text":" [+8]","color":"green"}]
scoreboard players set #dia_item ow.rng 0
function owcraft:scoring/check_resources

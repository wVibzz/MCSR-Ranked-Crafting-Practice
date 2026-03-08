scoreboard players set @s ow.has_ishovel 1
scoreboard players set @s ow.has_anyshov 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Iron Shovel","color":"white"},{"text":" [+7]","color":"green"}]
scoreboard players add @s ow.iron_used 1
scoreboard players set #dia_item ow.rng 0
function owcraft:scoring/check_resources

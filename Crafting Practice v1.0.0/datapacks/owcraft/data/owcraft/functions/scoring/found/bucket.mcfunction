scoreboard players set @s ow.has_bucket 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Bucket","color":"white"},{"text":" [+10]","color":"green"}]
scoreboard players add @s ow.iron_used 3
scoreboard players set #dia_item ow.rng 0
function owcraft:scoring/check_resources

scoreboard players set @s ow.has_idoor 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
execute if score @s ow.seedtype matches 1..2 run tellraw @s ["",{"text":" + ","color":"green"},{"text":"Iron Door","color":"white"},{"text":" [+8]","color":"green"}]
scoreboard players add @s ow.iron_used 6
function owcraft:scoring/check_fail

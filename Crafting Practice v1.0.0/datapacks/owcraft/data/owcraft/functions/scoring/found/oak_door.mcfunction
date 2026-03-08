scoreboard players set @s ow.has_odoor 1
scoreboard players add @s ow.wood_used 6
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute if score @s ow.seedtype matches 1..2 run tellraw @s ["",{"text":" + ","color":"green"},{"text":"Oak Door","color":"white"},{"text":" [+5]","color":"green"}]

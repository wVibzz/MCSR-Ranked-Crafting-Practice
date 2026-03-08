scoreboard players set @s ow.has_boat 1
scoreboard players add @s ow.wood_used 5
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Boat","color":"white"},{"text":" [+5]","color":"green"}]

scoreboard players set @s ow.has_saxe 1
scoreboard players set @s ow.has_anyaxe 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Stone Axe","color":"gray"},{"text":" [+3/+4 RP]","color":"green"}]

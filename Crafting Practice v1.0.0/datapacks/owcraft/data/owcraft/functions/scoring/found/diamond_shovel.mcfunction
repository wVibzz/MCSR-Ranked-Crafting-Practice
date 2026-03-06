scoreboard players set @s ow.has_dshovel 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Diamond Shovel","color":"aqua"},{"text":" [+8]","color":"green"}]

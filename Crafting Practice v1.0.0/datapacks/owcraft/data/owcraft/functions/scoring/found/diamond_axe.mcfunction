scoreboard players set @s ow.has_daxe 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Diamond Axe","color":"aqua"},{"text":" [+10]","color":"green"}]

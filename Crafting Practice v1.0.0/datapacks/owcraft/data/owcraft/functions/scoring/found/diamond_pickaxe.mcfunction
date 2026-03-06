scoreboard players set @s ow.has_dpick 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Diamond Pickaxe","color":"aqua"},{"text":" [+15]","color":"green"}]

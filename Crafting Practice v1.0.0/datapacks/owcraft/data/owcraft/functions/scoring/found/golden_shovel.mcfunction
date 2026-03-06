scoreboard players set @s ow.has_gshovel 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Gold Shovel","color":"gold"},{"text":" [+7]","color":"green"}]

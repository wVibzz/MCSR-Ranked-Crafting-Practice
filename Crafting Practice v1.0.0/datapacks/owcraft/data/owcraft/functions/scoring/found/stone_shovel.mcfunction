scoreboard players set @s ow.has_sshovel 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Stone Shovel","color":"gray"},{"text":" [+2]","color":"green"}]

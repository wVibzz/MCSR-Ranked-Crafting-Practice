scoreboard players set @s ow.has_spick 1
scoreboard players set @s ow.has_anypick 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Stone Pickaxe","color":"gray"},{"text":" [+2/+4 RP]","color":"green"}]

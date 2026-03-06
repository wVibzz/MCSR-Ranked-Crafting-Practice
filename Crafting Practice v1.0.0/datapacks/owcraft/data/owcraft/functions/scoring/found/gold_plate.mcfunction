scoreboard players set @s ow.has_gplate 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Gold Pressure Plate","color":"gold"},{"text":" [+3]","color":"green"}]

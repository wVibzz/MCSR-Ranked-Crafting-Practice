scoreboard players set @s ow.has_gaxe 1
scoreboard players set @s ow.has_anyaxe 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Gold Axe","color":"gold"},{"text":" [+6]","color":"green"}]

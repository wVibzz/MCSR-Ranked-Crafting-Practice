scoreboard players set @s ow.has_ishovel 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Iron Shovel","color":"white"},{"text":" [+7]","color":"green"}]
scoreboard players add @s ow.iron_used 1
function owcraft:scoring/check_fail

scoreboard players set @s ow.has_isword 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Iron Sword","color":"white"},{"text":" [+5]","color":"green"}]
scoreboard players add @s ow.iron_used 2
function owcraft:scoring/check_fail

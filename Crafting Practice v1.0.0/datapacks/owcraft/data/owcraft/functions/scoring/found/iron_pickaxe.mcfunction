scoreboard players set @s ow.has_ipick 1
# Store initial count for village duplicate detection (loot can give 1-2)
execute store result score @s ow.init_ipick run clear @s minecraft:iron_pickaxe 0
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Iron Pickaxe","color":"white"},{"text":" [+10]","color":"green"}]
scoreboard players add @s ow.iron_used 3
function owcraft:scoring/check_fail

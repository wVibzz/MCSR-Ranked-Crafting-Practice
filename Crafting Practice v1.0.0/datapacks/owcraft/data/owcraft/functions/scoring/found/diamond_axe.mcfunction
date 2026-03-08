scoreboard players set @s ow.has_daxe 1
scoreboard players set @s ow.has_anyaxe 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Diamond Axe","color":"aqua"},{"text":" [+10]","color":"green"}]
# Check if player can still make a pickaxe after spending diamonds
scoreboard players set #dia_item ow.rng 1
function owcraft:scoring/check_resources

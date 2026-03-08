scoreboard players set @s ow.has_dsword 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Diamond Sword","color":"aqua"},{"text":" [+8]","color":"green"}]
# Check if player can still make a pickaxe after spending diamonds
scoreboard players set #dia_item ow.rng 3
function owcraft:scoring/check_resources

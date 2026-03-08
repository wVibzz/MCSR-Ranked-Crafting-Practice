# Iron hoe detected (wastes 2 iron)
scoreboard players set @s ow.has_ihoe 1
scoreboard players add @s ow.iron_used 2
scoreboard players set #dia_item ow.rng 0
function owcraft:scoring/check_resources

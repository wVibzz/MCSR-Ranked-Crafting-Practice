# Count iron budget at round start
# Includes raw materials (ingots + nuggets) AND pre-made iron items
# Pre-made items must be counted because scan will add their cost to iron_used
# even though the player didn't craft them — this offset keeps the budget balanced

# Iron ingots
execute store result score @s ow.start_iron run clear @s minecraft:iron_ingot 0

# Iron nuggets (9 nuggets = 1 ingot, integer division)
execute store result score #tmp ow.rng run clear @s minecraft:iron_nugget 0
scoreboard players set #cost ow.rng 9
scoreboard players operation #tmp ow.rng /= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Pre-made iron items (offset for iron_used charges in scan/found)
# Iron pickaxe = 3
execute store result score #tmp ow.rng run clear @s minecraft:iron_pickaxe 0
scoreboard players set #cost ow.rng 3
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Iron axe = 3
execute store result score #tmp ow.rng run clear @s minecraft:iron_axe 0
scoreboard players set #cost ow.rng 3
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Iron shovel = 1
execute store result score #tmp ow.rng run clear @s minecraft:iron_shovel 0
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Iron sword = 2
execute store result score #tmp ow.rng run clear @s minecraft:iron_sword 0
scoreboard players set #cost ow.rng 2
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Bucket = 3
execute store result score #tmp ow.rng run clear @s minecraft:bucket 0
scoreboard players set #cost ow.rng 3
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Flint and steel = 1
execute store result score #tmp ow.rng run clear @s minecraft:flint_and_steel 0
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Shears = 2
execute store result score #tmp ow.rng run clear @s minecraft:shears 0
scoreboard players set #cost ow.rng 2
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Iron hoe = 2
execute store result score #tmp ow.rng run clear @s minecraft:iron_hoe 0
scoreboard players set #cost ow.rng 2
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Iron door = 6
execute store result score #tmp ow.rng run clear @s minecraft:iron_door 0
scoreboard players set #cost ow.rng 6
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Iron pressure plate = 2
execute store result score #tmp ow.rng run clear @s minecraft:heavy_weighted_pressure_plate 0
scoreboard players set #cost ow.rng 2
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Iron armor (helmet=5, chestplate=8, leggings=7, boots=4)
execute store result score #tmp ow.rng run clear @s minecraft:iron_helmet 0
scoreboard players set #cost ow.rng 5
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

execute store result score #tmp ow.rng run clear @s minecraft:iron_chestplate 0
scoreboard players set #cost ow.rng 8
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

execute store result score #tmp ow.rng run clear @s minecraft:iron_leggings 0
scoreboard players set #cost ow.rng 7
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

execute store result score #tmp ow.rng run clear @s minecraft:iron_boots 0
scoreboard players set #cost ow.rng 4
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

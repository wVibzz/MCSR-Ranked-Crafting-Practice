# Count total iron value at round start (ingots + pre-made item costs)
# Accounts for pre-made iron items from loot tables so the budget stays
# accurate when iron_used is incremented for both looted and crafted items

# Raw iron ingots
execute store result score @s ow.start_iron run clear @s minecraft:iron_ingot 0

# Iron pickaxe (3 iron each) — village loot
execute store result score #tmp ow.rng run clear @s minecraft:iron_pickaxe 0
scoreboard players set #cost ow.rng 3
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Iron sword (2 iron each) — BT/village loot
execute store result score #tmp ow.rng run clear @s minecraft:iron_sword 0
scoreboard players set #cost ow.rng 2
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Iron helmet (5 iron each) — village loot
execute store result score #tmp ow.rng run clear @s minecraft:iron_helmet 0
scoreboard players set #cost ow.rng 5
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Iron chestplate (8 iron each) — village loot
execute store result score #tmp ow.rng run clear @s minecraft:iron_chestplate 0
scoreboard players set #cost ow.rng 8
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Iron leggings (7 iron each) — village loot
execute store result score #tmp ow.rng run clear @s minecraft:iron_leggings 0
scoreboard players set #cost ow.rng 7
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Iron boots (4 iron each) — village loot
execute store result score #tmp ow.rng run clear @s minecraft:iron_boots 0
scoreboard players set #cost ow.rng 4
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation @s ow.start_iron += #tmp ow.rng

# Flint and steel (1 iron each) — RP loot
execute store result score #tmp ow.rng run clear @s minecraft:flint_and_steel 0
scoreboard players operation @s ow.start_iron += #tmp ow.rng

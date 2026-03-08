# Count wood budget at round start (oak logs × 4 + oak planks)
# Subtract 4 for the crafting table the player always needs to craft

# Oak logs (each = 4 planks)
execute store result score @s ow.start_wood run clear @s minecraft:oak_log 0
scoreboard players set #cost ow.rng 4
scoreboard players operation @s ow.start_wood *= #cost ow.rng

# Oak planks
execute store result score #tmp ow.rng run clear @s minecraft:oak_planks 0
scoreboard players operation @s ow.start_wood += #tmp ow.rng

# Subtract crafting table cost (always crafted, 4 planks)
scoreboard players remove @s ow.start_wood 4

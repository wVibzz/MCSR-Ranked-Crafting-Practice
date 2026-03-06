# Check if player has enough iron for remaining required items
# Called right after an iron-consuming craft is detected

# Calculate remaining iron from starting budget minus crafts
# Accounts for iron in crafting grid (invisible to /clear)
scoreboard players operation #iron_have ow.rng = @s ow.start_iron
scoreboard players operation #iron_have ow.rng -= @s ow.iron_used

# Calculate iron still needed for missing required items
scoreboard players set #iron_need ow.rng 0
# Seedtype 1-4: bucket (3 iron) + flint_and_steel (1 iron) if not yet crafted
execute if score @s ow.seedtype matches 1..4 if score @s ow.has_bucket matches 0 run scoreboard players add #iron_need ow.rng 3
execute if score @s ow.seedtype matches 1..4 if score @s ow.has_fns matches 0 run scoreboard players add #iron_need ow.rng 1
# Seedtype 5: only need 1 iron for fns if no fire_charge available and no light yet
execute store result score #has_fc ow.rng run clear @s minecraft:fire_charge 0
execute if score @s ow.seedtype matches 5 if score @s ow.has_fns matches 0 if score #has_fc ow.rng matches 0 unless entity @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}},distance=..50] run scoreboard players add #iron_need ow.rng 1

# Determine specific iron shortage reason
# 5 = need bucket, 6 = need flint & steel, 7 = need bucket & fns
execute if score @s ow.seedtype matches 1..4 if score @s ow.has_bucket matches 0 if score @s ow.has_fns matches 1 run scoreboard players set #failtype ow.rng 5
execute if score @s ow.seedtype matches 1..4 if score @s ow.has_bucket matches 1 if score @s ow.has_fns matches 0 run scoreboard players set #failtype ow.rng 6
execute if score @s ow.seedtype matches 1..4 if score @s ow.has_bucket matches 0 if score @s ow.has_fns matches 0 run scoreboard players set #failtype ow.rng 7
execute if score @s ow.seedtype matches 5 run scoreboard players set #failtype ow.rng 6

# Fail if: still need iron-requiring items and not enough iron remaining
execute if score @s ow.complete matches 0 if score #iron_need ow.rng matches 1.. if score #iron_have ow.rng < #iron_need ow.rng run function owcraft:scoring/fail

# Reset failtype so subsequent duplicate checks in scan don't use wrong type
execute if score @s ow.complete matches 0 run scoreboard players set #failtype ow.rng 1

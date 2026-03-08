# Unified resource check: bucket/fns affordability + pickaxe affordability
# Called from found/ functions after iron or diamond consuming crafts
# Replaces the old check_fail + check_pick two-function approach

# Calculate remaining iron from starting budget minus crafts
scoreboard players operation #iron_have ow.rng = @s ow.start_iron
scoreboard players operation #iron_have ow.rng -= @s ow.iron_used

# Calculate iron needed for missing required items (bucket + fns only)
scoreboard players set #iron_need ow.rng 0
execute if score @s ow.seedtype matches 1..4 if score @s ow.has_bucket matches 0 run scoreboard players add #iron_need ow.rng 3
execute if score @s ow.seedtype matches 1..4 if score @s ow.has_fns matches 0 run scoreboard players add #iron_need ow.rng 1
execute store result score #has_fc ow.rng run clear @s minecraft:fire_charge 0
execute if score @s ow.seedtype matches 5 if score @s ow.has_fns matches 0 if score #has_fc ow.rng matches 0 unless entity @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}},distance=..50] run scoreboard players add #iron_need ow.rng 1

# --- Check 1: Can afford bucket/fns? (failtypes 5/6/7) ---
execute if score @s ow.seedtype matches 1..4 if score @s ow.has_bucket matches 0 if score @s ow.has_fns matches 1 run scoreboard players set #failtype ow.rng 5
execute if score @s ow.seedtype matches 1..4 if score @s ow.has_bucket matches 1 if score @s ow.has_fns matches 0 run scoreboard players set #failtype ow.rng 6
execute if score @s ow.seedtype matches 1..4 if score @s ow.has_bucket matches 0 if score @s ow.has_fns matches 0 run scoreboard players set #failtype ow.rng 7
execute if score @s ow.seedtype matches 5 run scoreboard players set #failtype ow.rng 6
execute if score @s ow.complete matches 0 if score #iron_need ow.rng matches 1.. if score #iron_have ow.rng < #iron_need ow.rng run function owcraft:scoring/fail

# --- Check 2: Can still craft an iron/diamond pickaxe? (failtype 9) ---
# Always applies for seedtypes 1-4
# For RP seeds (5): only applies if player started with 3+ iron (should prioritize iron pick)
# Check if player already has any pickaxe
scoreboard players set #has_pick ow.rng 0
execute if score @s ow.has_ipick matches 1 run scoreboard players set #has_pick ow.rng 1
execute if score @s ow.has_dpick matches 1 run scoreboard players set #has_pick ow.rng 1
execute if score @s ow.has_spick matches 1 run scoreboard players set #has_pick ow.rng 1
execute if score @s ow.has_wpick matches 1 run scoreboard players set #has_pick ow.rng 1

# Count remaining diamonds (inventory + ground)
execute store result score #dia_have ow.rng run clear @s minecraft:diamond 0
scoreboard players set #tmp ow.rng 0
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=..50] run function owcraft:scoring/add_ground_to_tmp
scoreboard players operation #dia_have ow.rng += #tmp ow.rng

# Add iron pickaxe cost to get the iron-path total
# #iron_alt = current #iron_need (diamond-path: just bucket/fns)
# #iron_need += 3 (iron-path: iron pickaxe + bucket/fns)
scoreboard players operation #iron_alt ow.rng = #iron_need ow.rng
scoreboard players add #iron_need ow.rng 3

# Fail if: no pickaxe AND not enough diamonds (<3) AND not enough iron
scoreboard players set #failtype ow.rng 9
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #has_pick ow.rng matches 0 if score #dia_have ow.rng matches ..2 if score #iron_have ow.rng < #iron_need ow.rng run function owcraft:scoring/fail
# RP seeds: only check if player started with enough iron to make a pickaxe (3+)
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 5 if score @s ow.start_iron matches 3.. if score #has_pick ow.rng matches 0 if score #dia_have ow.rng matches ..2 if score #iron_have ow.rng < #iron_need ow.rng run function owcraft:scoring/fail

# Reset failtype for subsequent checks in scan
execute if score @s ow.complete matches 0 run scoreboard players set #failtype ow.rng 1

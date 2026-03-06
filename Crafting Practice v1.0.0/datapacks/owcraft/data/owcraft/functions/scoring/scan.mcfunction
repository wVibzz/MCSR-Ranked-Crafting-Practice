# Set default fail reason (duplicate item)
scoreboard players set #failtype ow.rng 1
# === PICKAXES ===
execute store result score #check ow.rng run clear @s minecraft:iron_pickaxe 0
execute if score @s ow.complete matches 0 unless score @s ow.seedtype matches 3 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 3 if score @s ow.has_ipick matches 1 if score #check ow.rng > @s ow.init_ipick run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_ipick matches 0 run function owcraft:scoring/found/iron_pickaxe
execute store result score #check ow.rng run clear @s minecraft:diamond_pickaxe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_dpick matches 0 run function owcraft:scoring/found/diamond_pickaxe
execute store result score #check ow.rng run clear @s minecraft:stone_pickaxe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:stone_pickaxe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_spick matches 0 run function owcraft:scoring/found/stone_pickaxe
execute store result score #check ow.rng run clear @s minecraft:wooden_pickaxe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_wpick matches 0 run function owcraft:scoring/found/wooden_pickaxe
# Category check: 2+ different pickaxe types = fail
scoreboard players set #cat ow.rng 0
execute if score @s ow.has_ipick matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.has_dpick matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.has_spick matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.has_wpick matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.complete matches 0 if score #cat ow.rng matches 2.. run scoreboard players set #failtype ow.rng 2
execute if score @s ow.complete matches 0 if score #cat ow.rng matches 2.. run function owcraft:scoring/fail
# === BUCKETS (track total count across all types for duplicate detection) ===
scoreboard players set #bkt ow.rng 0
execute store result score #check ow.rng run clear @s minecraft:bucket 0
scoreboard players operation #bkt ow.rng += #check ow.rng
execute if entity @e[type=item,nbt={Item:{id:"minecraft:bucket"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_bucket matches 0 run function owcraft:scoring/found/bucket
execute store result score #check ow.rng run clear @s minecraft:water_bucket 0
scoreboard players operation #bkt ow.rng += #check ow.rng
execute if entity @e[type=item,nbt={Item:{id:"minecraft:water_bucket"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_bucket matches 0 run function owcraft:scoring/found/bucket
execute store result score #check ow.rng run clear @s minecraft:lava_bucket 0
scoreboard players operation #bkt ow.rng += #check ow.rng
execute if entity @e[type=item,nbt={Item:{id:"minecraft:lava_bucket"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_bucket matches 0 run function owcraft:scoring/found/bucket
execute if score @s ow.complete matches 0 if score #bkt ow.rng matches 2.. run function owcraft:scoring/fail
# === FLINT AND STEEL ===
execute store result score #check ow.rng run clear @s minecraft:flint_and_steel 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_fns matches 0 run function owcraft:scoring/found/flint_and_steel
# === AXES ===
execute store result score #check ow.rng run clear @s minecraft:iron_axe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_iaxe matches 0 run function owcraft:scoring/found/iron_axe
execute store result score #check ow.rng run clear @s minecraft:diamond_axe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_axe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_daxe matches 0 run function owcraft:scoring/found/diamond_axe
execute store result score #check ow.rng run clear @s minecraft:golden_axe 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_axe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_gaxe matches 0 run function owcraft:scoring/found/golden_axe
execute store result score #check ow.rng run clear @s minecraft:stone_axe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:stone_axe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_saxe matches 0 run function owcraft:scoring/found/stone_axe
execute store result score #check ow.rng run clear @s minecraft:wooden_axe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_axe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_waxe matches 0 run function owcraft:scoring/found/wooden_axe
# Category check: 2+ different axe types = fail
scoreboard players set #cat ow.rng 0
execute if score @s ow.has_iaxe matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.has_daxe matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.has_gaxe matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.has_saxe matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.has_waxe matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.complete matches 0 if score #cat ow.rng matches 2.. run scoreboard players set #failtype ow.rng 3
execute if score @s ow.complete matches 0 if score #cat ow.rng matches 2.. run function owcraft:scoring/fail
# === SHOVELS ===
execute store result score #check ow.rng run clear @s minecraft:iron_shovel 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_shovel"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_ishovel matches 0 run function owcraft:scoring/found/iron_shovel
execute store result score #check ow.rng run clear @s minecraft:diamond_shovel 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_shovel"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_dshovel matches 0 run function owcraft:scoring/found/diamond_shovel
execute store result score #check ow.rng run clear @s minecraft:golden_shovel 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_shovel"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_gshovel matches 0 run function owcraft:scoring/found/golden_shovel
execute store result score #check ow.rng run clear @s minecraft:stone_shovel 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:stone_shovel"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_sshovel matches 0 run function owcraft:scoring/found/stone_shovel
execute store result score #check ow.rng run clear @s minecraft:wooden_shovel 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_shovel"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_wshovel matches 0 run function owcraft:scoring/found/wooden_shovel
# Category check: 2+ different shovel types = fail
scoreboard players set #cat ow.rng 0
execute if score @s ow.has_ishovel matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.has_dshovel matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.has_gshovel matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.has_sshovel matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.has_wshovel matches 1 run scoreboard players add #cat ow.rng 1
execute if score @s ow.complete matches 0 if score #cat ow.rng matches 2.. run scoreboard players set #failtype ow.rng 4
execute if score @s ow.complete matches 0 if score #cat ow.rng matches 2.. run function owcraft:scoring/fail
# === HOES ===
execute store result score #check ow.rng run clear @s minecraft:iron_hoe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_hoe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_ihoe matches 0 run function owcraft:scoring/found/iron_hoe
execute store result score #check ow.rng run clear @s minecraft:diamond_hoe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute store result score #check ow.rng run clear @s minecraft:golden_hoe 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute store result score #check ow.rng run clear @s minecraft:stone_hoe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute store result score #check ow.rng run clear @s minecraft:wooden_hoe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
# === SWORDS ===
execute store result score #check ow.rng run clear @s minecraft:diamond_sword 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_dsword matches 0 run function owcraft:scoring/found/diamond_sword
execute store result score #check ow.rng run clear @s minecraft:iron_sword 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_isword matches 0 run function owcraft:scoring/found/iron_sword
execute store result score #check ow.rng run clear @s minecraft:golden_sword 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_sword"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_gsword matches 0 run function owcraft:scoring/found/golden_sword
# === PRESSURE PLATES ===
execute store result score #check ow.rng run clear @s minecraft:heavy_weighted_pressure_plate 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:heavy_weighted_pressure_plate"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_iplate matches 0 run function owcraft:scoring/found/iron_plate
execute store result score #check ow.rng run clear @s minecraft:light_weighted_pressure_plate 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:light_weighted_pressure_plate"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_gplate matches 0 run function owcraft:scoring/found/gold_plate
# === SHEARS ===
execute store result score #check ow.rng run clear @s minecraft:shears 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:shears"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_shears matches 0 run function owcraft:scoring/found/shears
# === BOATS ===
execute store result score #check ow.rng run clear @s minecraft:oak_boat 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:oak_boat"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_boat matches 0 run function owcraft:scoring/found/boat
# === DOORS ===
execute store result score #check ow.rng run clear @s minecraft:oak_door 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:oak_door"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_odoor matches 0 run function owcraft:scoring/found/oak_door
execute store result score #check ow.rng run clear @s minecraft:iron_door 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_door"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_idoor matches 0 run function owcraft:scoring/found/iron_door
# === GOLD ARMOR ===
execute store result score #check ow.rng run clear @s minecraft:golden_helmet 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_helmet"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_ghelm matches 0 run function owcraft:scoring/found/gold_helmet
execute store result score #check ow.rng run clear @s minecraft:golden_chestplate 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_chestplate"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_gchest matches 0 run function owcraft:scoring/found/gold_chestplate
execute store result score #check ow.rng run clear @s minecraft:golden_leggings 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_leggings"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_glegs matches 0 run function owcraft:scoring/found/gold_leggings
execute store result score #check ow.rng run clear @s minecraft:golden_boots 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_boots"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_gboots matches 0 run function owcraft:scoring/found/gold_boots
# === IRON ARMOR (detect iron waste — track count, check_fail on any increase) ===
execute store result score #check ow.rng run clear @s minecraft:iron_helmet 0
execute if score #check ow.rng > @s ow.has_ihelm run scoreboard players add @s ow.iron_used 5
execute if score #check ow.rng > @s ow.has_ihelm run function owcraft:scoring/check_fail
execute if score #check ow.rng > @s ow.has_ihelm run scoreboard players operation @s ow.has_ihelm = #check ow.rng
execute store result score #check ow.rng run clear @s minecraft:iron_chestplate 0
execute if score #check ow.rng > @s ow.has_ichest run scoreboard players add @s ow.iron_used 8
execute if score #check ow.rng > @s ow.has_ichest run function owcraft:scoring/check_fail
execute if score #check ow.rng > @s ow.has_ichest run scoreboard players operation @s ow.has_ichest = #check ow.rng
execute store result score #check ow.rng run clear @s minecraft:iron_leggings 0
execute if score #check ow.rng > @s ow.has_ilegs run scoreboard players add @s ow.iron_used 7
execute if score #check ow.rng > @s ow.has_ilegs run function owcraft:scoring/check_fail
execute if score #check ow.rng > @s ow.has_ilegs run scoreboard players operation @s ow.has_ilegs = #check ow.rng
execute store result score #check ow.rng run clear @s minecraft:iron_boots 0
execute if score #check ow.rng > @s ow.has_iboots run scoreboard players add @s ow.iron_used 4
execute if score #check ow.rng > @s ow.has_iboots run function owcraft:scoring/check_fail
execute if score #check ow.rng > @s ow.has_iboots run scoreboard players operation @s ow.has_iboots = #check ow.rng
# Update sidebar checklist colors
execute if score @s ow.has_anypick matches 1 run team join ow_done Pickaxe
execute if score @s ow.has_anyaxe matches 1 run team join ow_done Axe
execute if score @s ow.has_anyshov matches 1 run team join ow_done Shovel
execute if score @s ow.has_bucket matches 1 run team join ow_done Bucket
execute if score @s ow.has_light matches 1 run team join ow_done Light
execute if score @s ow.has_boat matches 1 run team join ow_done Boat
execute if score @s ow.has_odoor matches 1 run team join ow_done Door
execute if score @s ow.has_idoor matches 1 run team join ow_done Door
function owcraft:scoring/check_complete

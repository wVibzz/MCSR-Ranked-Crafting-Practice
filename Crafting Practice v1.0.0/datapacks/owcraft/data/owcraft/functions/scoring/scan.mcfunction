# Set default fail reason (duplicate item)
scoreboard players set #failtype ow.rng 1
# === PICKAXES ===
scoreboard players set #failitem ow.rng 1
execute store result score #check ow.rng run clear @s minecraft:iron_pickaxe 0
execute if score @s ow.complete matches 0 unless score @s ow.seedtype matches 3 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 3 if score @s ow.has_ipick matches 1 if score #check ow.rng > @s ow.init_ipick run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_ipick matches 0 run function owcraft:scoring/found/iron_pickaxe
scoreboard players set #failitem ow.rng 2
execute store result score #check ow.rng run clear @s minecraft:diamond_pickaxe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_dpick matches 0 run function owcraft:scoring/found/diamond_pickaxe
scoreboard players set #failitem ow.rng 3
execute store result score #check ow.rng run clear @s minecraft:stone_pickaxe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:stone_pickaxe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_spick matches 0 run function owcraft:scoring/found/stone_pickaxe
scoreboard players set #failitem ow.rng 4
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
scoreboard players set #failitem ow.rng 5
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
scoreboard players set #failitem ow.rng 6
execute store result score #check ow.rng run clear @s minecraft:flint_and_steel 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_fns matches 0 run function owcraft:scoring/found/flint_and_steel
# === AXES ===
scoreboard players set #failitem ow.rng 7
execute store result score #check ow.rng run clear @s minecraft:iron_axe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_iaxe matches 0 run function owcraft:scoring/found/iron_axe
scoreboard players set #failitem ow.rng 8
execute store result score #check ow.rng run clear @s minecraft:diamond_axe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_axe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_daxe matches 0 run function owcraft:scoring/found/diamond_axe
scoreboard players set #failitem ow.rng 9
execute store result score #check ow.rng run clear @s minecraft:golden_axe 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_axe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_gaxe matches 0 run function owcraft:scoring/found/golden_axe
scoreboard players set #failitem ow.rng 10
execute store result score #check ow.rng run clear @s minecraft:stone_axe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:stone_axe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_saxe matches 0 run function owcraft:scoring/found/stone_axe
scoreboard players set #failitem ow.rng 11
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
scoreboard players set #failitem ow.rng 12
execute store result score #check ow.rng run clear @s minecraft:iron_shovel 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_shovel"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_ishovel matches 0 run function owcraft:scoring/found/iron_shovel
scoreboard players set #failitem ow.rng 13
execute store result score #check ow.rng run clear @s minecraft:diamond_shovel 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_shovel"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_dshovel matches 0 run function owcraft:scoring/found/diamond_shovel
scoreboard players set #failitem ow.rng 14
execute store result score #check ow.rng run clear @s minecraft:golden_shovel 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_shovel"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_gshovel matches 0 run function owcraft:scoring/found/golden_shovel
scoreboard players set #failitem ow.rng 15
execute store result score #check ow.rng run clear @s minecraft:stone_shovel 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:stone_shovel"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_sshovel matches 0 run function owcraft:scoring/found/stone_shovel
scoreboard players set #failitem ow.rng 16
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
scoreboard players set #failitem ow.rng 17
execute store result score #check ow.rng run clear @s minecraft:iron_hoe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_hoe"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_ihoe matches 0 run function owcraft:scoring/found/iron_hoe
scoreboard players set #failitem ow.rng 18
execute store result score #check ow.rng run clear @s minecraft:diamond_hoe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 19
execute store result score #check ow.rng run clear @s minecraft:golden_hoe 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 20
execute store result score #check ow.rng run clear @s minecraft:stone_hoe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 21
execute store result score #check ow.rng run clear @s minecraft:wooden_hoe 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
# === SWORDS ===
scoreboard players set #failitem ow.rng 22
execute store result score #check ow.rng run clear @s minecraft:diamond_sword 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_dsword matches 0 run function owcraft:scoring/found/diamond_sword
scoreboard players set #failitem ow.rng 23
execute store result score #check ow.rng run clear @s minecraft:iron_sword 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_isword matches 0 run function owcraft:scoring/found/iron_sword
scoreboard players set #failitem ow.rng 24
execute store result score #check ow.rng run clear @s minecraft:golden_sword 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_sword"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_gsword matches 0 run function owcraft:scoring/found/golden_sword
# === PRESSURE PLATES ===
scoreboard players set #failitem ow.rng 25
execute store result score #check ow.rng run clear @s minecraft:heavy_weighted_pressure_plate 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:heavy_weighted_pressure_plate"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_iplate matches 0 run function owcraft:scoring/found/iron_plate
scoreboard players set #failitem ow.rng 26
execute store result score #check ow.rng run clear @s minecraft:light_weighted_pressure_plate 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:light_weighted_pressure_plate"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_gplate matches 0 run function owcraft:scoring/found/gold_plate
# === SHEARS ===
scoreboard players set #failitem ow.rng 27
execute store result score #check ow.rng run clear @s minecraft:shears 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:shears"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_shears matches 0 run function owcraft:scoring/found/shears
# === BOATS ===
scoreboard players set #failitem ow.rng 28
execute store result score #check ow.rng run clear @s minecraft:oak_boat 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:oak_boat"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_boat matches 0 run function owcraft:scoring/found/boat
# === DOORS ===
scoreboard players set #failitem ow.rng 33
execute store result score #check ow.rng run clear @s minecraft:oak_door 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 4.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:oak_door"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_odoor matches 0 run function owcraft:scoring/found/oak_door
scoreboard players set #failitem ow.rng 34
execute store result score #check ow.rng run clear @s minecraft:iron_door 0
execute if score @s ow.complete matches 0 if score #check ow.rng matches 4.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_door"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_idoor matches 0 run function owcraft:scoring/found/iron_door
# Category check: both door types = fail
execute if score @s ow.complete matches 0 if score @s ow.has_odoor matches 1 if score @s ow.has_idoor matches 1 run scoreboard players set #failtype ow.rng 12
execute if score @s ow.complete matches 0 if score @s ow.has_odoor matches 1 if score @s ow.has_idoor matches 1 run function owcraft:scoring/fail
# === GOLD ARMOR ===
scoreboard players set #failitem ow.rng 29
execute store result score #check ow.rng run clear @s minecraft:golden_helmet 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_helmet"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_ghelm matches 0 run function owcraft:scoring/found/gold_helmet
scoreboard players set #failitem ow.rng 30
execute store result score #check ow.rng run clear @s minecraft:golden_chestplate 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_chestplate"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_gchest matches 0 run function owcraft:scoring/found/gold_chestplate
scoreboard players set #failitem ow.rng 31
execute store result score #check ow.rng run clear @s minecraft:golden_leggings 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_leggings"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_glegs matches 0 run function owcraft:scoring/found/gold_leggings
scoreboard players set #failitem ow.rng 32
execute store result score #check ow.rng run clear @s minecraft:golden_boots 0
execute if score @s ow.complete matches 0 if score @s ow.seedtype matches 1..4 if score #check ow.rng matches 2.. run function owcraft:scoring/fail
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_boots"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score #check ow.rng matches 1.. if score @s ow.has_gboots matches 0 run function owcraft:scoring/found/gold_boots
# === IRON ARMOR (detect iron waste — track count, check_resources on any increase) ===
execute store result score #check ow.rng run clear @s minecraft:iron_helmet 0
execute if score #check ow.rng > @s ow.has_ihelm run scoreboard players add @s ow.iron_used 5
execute if score #check ow.rng > @s ow.has_ihelm run scoreboard players set #dia_item ow.rng 0
execute if score #check ow.rng > @s ow.has_ihelm run function owcraft:scoring/check_resources
execute if score #check ow.rng > @s ow.has_ihelm run scoreboard players operation @s ow.has_ihelm = #check ow.rng
execute store result score #check ow.rng run clear @s minecraft:iron_chestplate 0
execute if score #check ow.rng > @s ow.has_ichest run scoreboard players add @s ow.iron_used 8
execute if score #check ow.rng > @s ow.has_ichest run scoreboard players set #dia_item ow.rng 0
execute if score #check ow.rng > @s ow.has_ichest run function owcraft:scoring/check_resources
execute if score #check ow.rng > @s ow.has_ichest run scoreboard players operation @s ow.has_ichest = #check ow.rng
execute store result score #check ow.rng run clear @s minecraft:iron_leggings 0
execute if score #check ow.rng > @s ow.has_ilegs run scoreboard players add @s ow.iron_used 7
execute if score #check ow.rng > @s ow.has_ilegs run scoreboard players set #dia_item ow.rng 0
execute if score #check ow.rng > @s ow.has_ilegs run function owcraft:scoring/check_resources
execute if score #check ow.rng > @s ow.has_ilegs run scoreboard players operation @s ow.has_ilegs = #check ow.rng
execute store result score #check ow.rng run clear @s minecraft:iron_boots 0
execute if score #check ow.rng > @s ow.has_iboots run scoreboard players add @s ow.iron_used 4
execute if score #check ow.rng > @s ow.has_iboots run scoreboard players set #dia_item ow.rng 0
execute if score #check ow.rng > @s ow.has_iboots run function owcraft:scoring/check_resources
execute if score #check ow.rng > @s ow.has_iboots run scoreboard players operation @s ow.has_iboots = #check ow.rng
# === USELESS ITEMS (instant fail — these are never needed in a speedrun) ===
scoreboard players set #failtype ow.rng 10
scoreboard players set #failitem ow.rng 1
execute store result score #check ow.rng run clear @s minecraft:cauldron 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:cauldron"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 2
execute store result score #check ow.rng run clear @s minecraft:iron_trapdoor 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_trapdoor"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 3
execute store result score #check ow.rng run clear @s minecraft:chain 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:chain"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 4
execute store result score #check ow.rng run clear @s minecraft:iron_bars 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_bars"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 5
execute store result score #check ow.rng run clear @s minecraft:compass 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 6
execute store result score #check ow.rng run clear @s minecraft:minecart 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:minecart"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 7
execute store result score #check ow.rng run clear @s minecraft:hopper 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:hopper"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 8
execute store result score #check ow.rng run clear @s minecraft:shield 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:shield"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 9
execute store result score #check ow.rng run clear @s minecraft:smithing_table 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:smithing_table"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 10
execute store result score #check ow.rng run clear @s minecraft:stonecutter 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:stonecutter"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 11
execute store result score #check ow.rng run clear @s minecraft:tripwire_hook 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 12
execute store result score #check ow.rng run clear @s minecraft:iron_block 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 13
execute store result score #check ow.rng run clear @s minecraft:anvil 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:anvil"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 14
execute store result score #check ow.rng run clear @s minecraft:rail 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:rail"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 15
execute store result score #check ow.rng run clear @s minecraft:blast_furnace 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:blast_furnace"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 16
execute store result score #check ow.rng run clear @s minecraft:crossbow 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:crossbow"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
scoreboard players set #failitem ow.rng 17
execute store result score #check ow.rng run clear @s minecraft:piston 0
execute if entity @e[type=item,nbt={Item:{id:"minecraft:piston"}},distance=..50] run scoreboard players set #check ow.rng 1
execute if score @s ow.complete matches 0 if score #check ow.rng matches 1.. run function owcraft:scoring/fail
# === WOOD CHECK: Can still craft boat + door? ===
# Count planks wasted on useless items (recalculated each tick)
scoreboard players set #wood_waste ow.rng 0
# Buttons (1 plank each)
execute store result score #tmp ow.rng run clear @s minecraft:oak_button 0
scoreboard players operation #wood_waste ow.rng += #tmp ow.rng
# Pressure plates (2 planks each)
execute store result score #tmp ow.rng run clear @s minecraft:oak_pressure_plate 0
scoreboard players set #cost ow.rng 2
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation #wood_waste ow.rng += #tmp ow.rng
# Trapdoors (3 planks each — 6 planks / 2 trapdoors)
execute store result score #tmp ow.rng run clear @s minecraft:oak_trapdoor 0
scoreboard players set #cost ow.rng 3
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation #wood_waste ow.rng += #tmp ow.rng
# Fence gates (4 planks each)
execute store result score #tmp ow.rng run clear @s minecraft:oak_fence_gate 0
scoreboard players set #cost ow.rng 4
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation #wood_waste ow.rng += #tmp ow.rng
# Signs (2 planks each — 6 planks / 3 signs)
execute store result score #tmp ow.rng run clear @s minecraft:oak_sign 0
scoreboard players set #cost ow.rng 2
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation #wood_waste ow.rng += #tmp ow.rng
# Slabs (3 planks per 6 slabs — count / 2)
execute store result score #tmp ow.rng run clear @s minecraft:oak_slab 0
scoreboard players set #cost ow.rng 2
scoreboard players operation #tmp ow.rng /= #cost ow.rng
scoreboard players operation #wood_waste ow.rng += #tmp ow.rng
# Chests (8 planks each)
execute store result score #tmp ow.rng run clear @s minecraft:chest 0
scoreboard players set #cost ow.rng 8
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players operation #wood_waste ow.rng += #tmp ow.rng
# Fences (2 planks per 3 fences — count * 2 / 3)
execute store result score #tmp ow.rng run clear @s minecraft:oak_fence 0
scoreboard players set #cost ow.rng 2
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players set #cost ow.rng 3
scoreboard players operation #tmp ow.rng /= #cost ow.rng
scoreboard players operation #wood_waste ow.rng += #tmp ow.rng
# Stairs (6 planks per 4 stairs — count * 3 / 2)
execute store result score #tmp ow.rng run clear @s minecraft:oak_stairs 0
scoreboard players set #cost ow.rng 3
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players set #cost ow.rng 2
scoreboard players operation #tmp ow.rng /= #cost ow.rng
scoreboard players operation #wood_waste ow.rng += #tmp ow.rng
# Bowls (3 planks per 4 bowls — count * 3 / 4)
execute store result score #tmp ow.rng run clear @s minecraft:bowl 0
scoreboard players set #cost ow.rng 3
scoreboard players operation #tmp ow.rng *= #cost ow.rng
scoreboard players set #cost ow.rng 4
scoreboard players operation #tmp ow.rng /= #cost ow.rng
scoreboard players operation #wood_waste ow.rng += #tmp ow.rng
# Calculate remaining wood from starting budget minus crafts minus waste
scoreboard players operation #wood_have ow.rng = @s ow.start_wood
scoreboard players operation #wood_have ow.rng -= @s ow.wood_used
scoreboard players operation #wood_have ow.rng -= #wood_waste ow.rng
# Calculate wood needed for missing required items
# failitem: 1=boat, 2=door, 3=both (using addition trick)
scoreboard players set #wood_need ow.rng 0
scoreboard players set #failitem ow.rng 0
execute if score @s ow.has_boat matches 0 run scoreboard players add #wood_need ow.rng 5
execute if score @s ow.has_boat matches 0 run scoreboard players add #failitem ow.rng 1
execute if score @s ow.seedtype matches 1..2 if score @s ow.has_odoor matches 0 if score @s ow.has_idoor matches 0 run scoreboard players add #wood_need ow.rng 6
execute if score @s ow.seedtype matches 1..2 if score @s ow.has_odoor matches 0 if score @s ow.has_idoor matches 0 run scoreboard players add #failitem ow.rng 2
# Fail if not enough wood
scoreboard players set #failtype ow.rng 11
execute if score @s ow.complete matches 0 if score #wood_need ow.rng matches 1.. if score #wood_have ow.rng < #wood_need ow.rng run function owcraft:scoring/fail
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

# Aggregate flags (has_anypick, has_anyaxe, has_anyshov) are set in found/ functions
# Check if any light source exists
scoreboard players set @s ow.has_light 0
execute if score @s ow.has_fns matches 1 run scoreboard players set @s ow.has_light 1
execute store result score #check ow.rng run clear @s minecraft:fire_charge 0
execute if score #check ow.rng matches 1.. run scoreboard players set @s ow.has_light 1
execute if entity @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}},distance=..50] run scoreboard players set @s ow.has_light 1
# Complete when: pickaxe + axe + shovel + bucket + light + boat + door (seedtype 1-2 / BT & Shipwreck)
# Door satisfied by oak door OR iron door
execute if score @s ow.seedtype matches 1..2 if score @s ow.has_anypick matches 1 if score @s ow.has_anyaxe matches 1 if score @s ow.has_anyshov matches 1 if score @s ow.has_bucket matches 1 if score @s ow.has_light matches 1 if score @s ow.has_boat matches 1 if score @s ow.has_odoor matches 1 run function owcraft:scoring/finish
execute if score @s ow.seedtype matches 1..2 if score @s ow.has_anypick matches 1 if score @s ow.has_anyaxe matches 1 if score @s ow.has_anyshov matches 1 if score @s ow.has_bucket matches 1 if score @s ow.has_light matches 1 if score @s ow.has_boat matches 1 if score @s ow.has_idoor matches 1 run function owcraft:scoring/finish
# Complete when: pickaxe + axe + shovel + bucket + light + boat (seedtype 3-4 / Village & Desert Temple)
execute if score @s ow.seedtype matches 3..4 if score @s ow.has_anypick matches 1 if score @s ow.has_anyaxe matches 1 if score @s ow.has_anyshov matches 1 if score @s ow.has_bucket matches 1 if score @s ow.has_light matches 1 if score @s ow.has_boat matches 1 run function owcraft:scoring/finish
# Complete when: pickaxe + axe + shovel + light + boat (seedtype 5 / RP - bucket optional)
execute if score @s ow.seedtype matches 5 if score @s ow.has_anypick matches 1 if score @s ow.has_anyaxe matches 1 if score @s ow.has_anyshov matches 1 if score @s ow.has_light matches 1 if score @s ow.has_boat matches 1 run function owcraft:scoring/finish
# Failure detection is handled by scoring/check_resources (called from found/* functions)

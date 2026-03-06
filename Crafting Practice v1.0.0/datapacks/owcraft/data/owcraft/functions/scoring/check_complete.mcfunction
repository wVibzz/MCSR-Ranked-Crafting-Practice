# Check if any pickaxe has been crafted
scoreboard players set @s ow.has_anypick 0
execute if score @s ow.has_ipick matches 1 run scoreboard players set @s ow.has_anypick 1
execute if score @s ow.has_dpick matches 1 run scoreboard players set @s ow.has_anypick 1
execute if score @s ow.has_spick matches 1 run scoreboard players set @s ow.has_anypick 1
execute if score @s ow.has_wpick matches 1 run scoreboard players set @s ow.has_anypick 1
# Check if any axe has been crafted
scoreboard players set @s ow.has_anyaxe 0
execute if score @s ow.has_iaxe matches 1 run scoreboard players set @s ow.has_anyaxe 1
execute if score @s ow.has_daxe matches 1 run scoreboard players set @s ow.has_anyaxe 1
execute if score @s ow.has_gaxe matches 1 run scoreboard players set @s ow.has_anyaxe 1
execute if score @s ow.has_saxe matches 1 run scoreboard players set @s ow.has_anyaxe 1
execute if score @s ow.has_waxe matches 1 run scoreboard players set @s ow.has_anyaxe 1
# Check if any shovel has been crafted
scoreboard players set @s ow.has_anyshov 0
execute if score @s ow.has_ishovel matches 1 run scoreboard players set @s ow.has_anyshov 1
execute if score @s ow.has_dshovel matches 1 run scoreboard players set @s ow.has_anyshov 1
execute if score @s ow.has_gshovel matches 1 run scoreboard players set @s ow.has_anyshov 1
execute if score @s ow.has_sshovel matches 1 run scoreboard players set @s ow.has_anyshov 1
execute if score @s ow.has_wshovel matches 1 run scoreboard players set @s ow.has_anyshov 1
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
# Failure detection is handled by scoring/check_fail (called from iron-consuming found/* functions)

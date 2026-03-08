# Add this ground item entity's stack count to #tmp
# Called via: execute as @e[type=item,...] run function owcraft:scoring/add_ground_to_tmp
execute store result score #gc ow.rng run data get entity @s Item.Count
scoreboard players operation #tmp ow.rng += #gc ow.rng

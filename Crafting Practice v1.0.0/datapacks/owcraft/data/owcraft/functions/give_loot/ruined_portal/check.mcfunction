execute store result score @a ow.light run clear @a minecraft:flint_and_steel 0
execute store result score #temp ow.light run clear @a minecraft:fire_charge 0
scoreboard players operation @a ow.light += #temp ow.light
execute store result score @a ow.food run clear @a minecraft:golden_apple 0
execute store result score #temp ow.food run clear @a minecraft:golden_carrot 0
scoreboard players operation @a ow.food += #temp ow.food
execute store result score #temp ow.food run clear @a minecraft:glistering_melon_slice 0
scoreboard players operation @a ow.food += #temp ow.food
execute store result score #temp ow.food run clear @a minecraft:enchanted_golden_apple 0
scoreboard players operation @a ow.food += #temp ow.food
scoreboard players add @a ow.rerolls 1
execute as @a[scores={ow.light=1..,ow.food=1..,ow.running=0}] run function owcraft:give_loot/ruined_portal/give
execute as @a[scores={ow.running=0,ow.rerolls=..500}] run clear @a
execute as @a[scores={ow.running=0,ow.rerolls=..500}] run loot give @a loot owcraft:ruined_portal
execute as @a[scores={ow.running=0,ow.rerolls=..500}] run function owcraft:give_loot/ruined_portal/check
execute as @a[scores={ow.running=0,ow.rerolls=500..}] run function owcraft:give_loot/ruined_portal/give

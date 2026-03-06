execute store result score @a ow.iron run clear @a minecraft:iron_ingot 0
execute store result score @a ow.diamond run clear @a minecraft:diamond 0
scoreboard players add @a ow.rerolls 1
execute as @a[scores={ow.iron=7..,ow.running=0}] run function owcraft:give_loot/village/give
execute as @a[scores={ow.iron=4..,ow.diamond=3..,ow.running=0}] run function owcraft:give_loot/village/give
execute as @a[scores={ow.running=0,ow.rerolls=..500}] run clear @a
execute as @a[scores={ow.running=0,ow.rerolls=..500}] run give @a minecraft:iron_ingot 4
execute as @a[scores={ow.running=0,ow.rerolls=..500}] run loot give @a loot owcraft:village_weaponsmith
execute as @a[scores={ow.running=0,ow.rerolls=..500}] run function owcraft:give_loot/village/check
execute as @a[scores={ow.running=0,ow.rerolls=500..}] run function owcraft:give_loot/village/give

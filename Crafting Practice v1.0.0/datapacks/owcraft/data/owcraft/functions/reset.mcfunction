# OW Crafting Practice - Reset / Start new round of current type
scoreboard players set @a ow.running 0
scoreboard players set @a ow.complete 0
scoreboard players set @a ow.timer 0
clear @a
kill @e[type=item]
gamemode adventure @a
# Restart current seed type (or random if in random mode)
execute as @a if score @s ow.israndom matches 1 run function owcraft:start
execute as @a unless score @s ow.israndom matches 1 if score @s ow.seedtype matches 1 run function owcraft:hub/bt
execute as @a unless score @s ow.israndom matches 1 if score @s ow.seedtype matches 2 run function owcraft:hub/ship
execute as @a unless score @s ow.israndom matches 1 if score @s ow.seedtype matches 3 run function owcraft:hub/village
execute as @a unless score @s ow.israndom matches 1 if score @s ow.seedtype matches 4 run function owcraft:hub/temple
execute as @a unless score @s ow.israndom matches 1 if score @s ow.seedtype matches 5 run function owcraft:hub/rp
# If no seedtype set (just loaded in), go to hub
execute as @a if score @s ow.seedtype matches 0 run function owcraft:hub/main

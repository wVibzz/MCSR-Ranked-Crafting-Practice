# Auto-reset after round completion (runs 3 seconds after finish)
# Restart same seed type (or random if in random mode)
execute as @a[scores={ow.complete=1}] run clear @s
kill @e[type=item]
execute as @a[scores={ow.complete=1}] if score @s ow.israndom matches 1 run function owcraft:start
execute as @a[scores={ow.complete=1}] unless score @s ow.israndom matches 1 if score @s ow.seedtype matches 1 run function owcraft:give_loot/buried_treasure/start
execute as @a[scores={ow.complete=1}] unless score @s ow.israndom matches 1 if score @s ow.seedtype matches 2 run function owcraft:give_loot/shipwreck/start
execute as @a[scores={ow.complete=1}] unless score @s ow.israndom matches 1 if score @s ow.seedtype matches 3 run function owcraft:give_loot/village/start
execute as @a[scores={ow.complete=1}] unless score @s ow.israndom matches 1 if score @s ow.seedtype matches 4 run function owcraft:give_loot/desert_temple/start
execute as @a[scores={ow.complete=1}] unless score @s ow.israndom matches 1 if score @s ow.seedtype matches 5 run function owcraft:give_loot/ruined_portal/start

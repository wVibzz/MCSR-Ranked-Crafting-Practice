# OW Crafting Practice - Start (Random Type)
# Picks a random structure type and runs it

# Clear inventory first
clear @a
scoreboard players set @a ow.timer 0
scoreboard players set @a ow.running 0
scoreboard players set @a ow.israndom 1

# Use a random method: summon an area_effect_cloud with random UUID, use least significant bits
# We'll use a simpler approach: summon 5 armor stands randomly and kill 4
# The surviving one determines the type

# Clean up any old markers
kill @e[type=armor_stand,tag=owcraft_picker]

# Summon 5 armor stands at slightly different positions with type tags
summon armor_stand 0 100 0 {Tags:["owcraft_picker","type_bt"],Invisible:1b,Marker:1b,NoGravity:1b}
summon armor_stand 0 100 1 {Tags:["owcraft_picker","type_ship"],Invisible:1b,Marker:1b,NoGravity:1b}
summon armor_stand 0 100 2 {Tags:["owcraft_picker","type_village"],Invisible:1b,Marker:1b,NoGravity:1b}
summon armor_stand 0 100 3 {Tags:["owcraft_picker","type_temple"],Invisible:1b,Marker:1b,NoGravity:1b}
summon armor_stand 0 100 4 {Tags:["owcraft_picker","type_rp"],Invisible:1b,Marker:1b,NoGravity:1b}

# Spread them randomly - the one closest to a point wins
spreadplayers 0 0 1 5 false @e[type=armor_stand,tag=owcraft_picker]

# Kill all but the closest one to 0,0
execute as @e[type=armor_stand,tag=owcraft_picker,sort=nearest,limit=1] at @s run tag @s add owcraft_winner

# Kill non-winners
kill @e[type=armor_stand,tag=owcraft_picker,tag=!owcraft_winner]

# Run the appropriate hub function based on winner (loads structure + starts round)
execute if entity @e[type=armor_stand,tag=owcraft_winner,tag=type_bt] run function owcraft:hub/bt
execute if entity @e[type=armor_stand,tag=owcraft_winner,tag=type_ship] run function owcraft:hub/ship
execute if entity @e[type=armor_stand,tag=owcraft_winner,tag=type_village] run function owcraft:hub/village
execute if entity @e[type=armor_stand,tag=owcraft_winner,tag=type_temple] run function owcraft:hub/temple
execute if entity @e[type=armor_stand,tag=owcraft_winner,tag=type_rp] run function owcraft:hub/rp

# Clean up winner
kill @e[type=armor_stand,tag=owcraft_winner]

# seedtype is now set by the hub/give function (1-5) and stays correct
# ow.israndom flag tells restart/auto_reset to pick random again
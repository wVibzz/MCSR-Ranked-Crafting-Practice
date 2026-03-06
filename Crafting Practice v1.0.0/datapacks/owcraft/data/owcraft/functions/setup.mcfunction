# OW Crafting Practice - Initial Setup
# Run once: /function owcraft:setup

# Set game rules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule keepInventory true
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
time set day

# Create scoreboard objectives
scoreboard objectives add ow.timer dummy "Timer (ticks)"
scoreboard objectives add ow.running dummy
scoreboard objectives add ow.rng dummy
scoreboard objectives add ow.display dummy "§6OW Craft Practice"

# FSG filter checking
scoreboard objectives add ow.iron dummy "Iron"
scoreboard objectives add ow.gold dummy "Gold"
scoreboard objectives add ow.diamond dummy "Diamonds"
scoreboard objectives add ow.rerolls dummy
scoreboard objectives add ow.light dummy "Light Source"
scoreboard objectives add ow.food dummy "Food"
scoreboard objectives add ow.type dummy "Structure Type"

# Scoring system objectives
function owcraft:scoring/setup

# Clear sidebar display
scoreboard objectives setdisplay sidebar

# Initialize scores
scoreboard players set @a ow.timer 0
scoreboard players set @a ow.running 0
scoreboard players set #rng ow.rng 0
scoreboard players set #temp ow.light 0
scoreboard players set #temp ow.food 0

# Clear existing hub first
setblock 0 65 0 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 0 64 0 minecraft:redstone_block replace
setblock 0 65 0 minecraft:air replace
setblock 0 64 0 minecraft:air replace
kill @e[type=item]

# Load hub structure
setblock 0 65 0 minecraft:structure_block{mode:"LOAD",name:"owcraft:hub",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 0 64 0 minecraft:redstone_block replace

# Clean up structure block and redstone block
setblock 0 65 0 minecraft:air replace
setblock 0 64 0 minecraft:air replace

# Set player to survival
gamemode adventure @a

# Clear inventory
clear @a

# Teleport player to hub
tp @a 0 67 0 0 0

tellraw @a ["",{"text":"[OW Craft] ","color":"gold","bold":true},{"text":"Setup complete! Click a sign to start a round.","color":"yellow"}]

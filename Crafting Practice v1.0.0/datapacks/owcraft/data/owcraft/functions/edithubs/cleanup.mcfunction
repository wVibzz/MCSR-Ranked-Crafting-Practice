# Clean up edit area — clear all structures and remove forceload
# Ensure chunks are loaded for cleanup
forceload add 995 -21 1021 53

# Kill label armor stands
kill @e[type=armor_stand,tag=edit_label]

# Clear each grid position by loading owcraft:clear over it

# Edit Hub (X=1008, Z=-16)
setblock 1008 65 -16 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1008 64 -16 minecraft:redstone_block replace
setblock 1008 65 -16 minecraft:air replace
setblock 1008 64 -16 minecraft:air replace

# Row 1 (X=1000)
setblock 1000 65 0 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1000 64 0 minecraft:redstone_block replace
setblock 1000 65 0 minecraft:air replace
setblock 1000 64 0 minecraft:air replace

setblock 1000 65 16 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1000 64 16 minecraft:redstone_block replace
setblock 1000 65 16 minecraft:air replace
setblock 1000 64 16 minecraft:air replace

setblock 1000 65 32 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1000 64 32 minecraft:redstone_block replace
setblock 1000 65 32 minecraft:air replace
setblock 1000 64 32 minecraft:air replace

setblock 1000 65 48 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1000 64 48 minecraft:redstone_block replace
setblock 1000 65 48 minecraft:air replace
setblock 1000 64 48 minecraft:air replace

# Row 2 (X=1016)
setblock 1016 65 0 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1016 64 0 minecraft:redstone_block replace
setblock 1016 65 0 minecraft:air replace
setblock 1016 64 0 minecraft:air replace

setblock 1016 65 16 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1016 64 16 minecraft:redstone_block replace
setblock 1016 65 16 minecraft:air replace
setblock 1016 64 16 minecraft:air replace

setblock 1016 65 32 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1016 64 32 minecraft:redstone_block replace
setblock 1016 65 32 minecraft:air replace
setblock 1016 64 32 minecraft:air replace

setblock 1016 65 48 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1016 64 48 minecraft:redstone_block replace
setblock 1016 65 48 minecraft:air replace
setblock 1016 64 48 minecraft:air replace

# Remove forceload
forceload remove 995 -21 1021 53

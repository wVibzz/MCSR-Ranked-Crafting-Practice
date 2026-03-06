# Edit Hubs — load all structures 1000 blocks away for editing
# Save via structure block GUI (right-click the structure block, press SAVE)
# Grid layout: 4 columns (Z) x 2 rows (X), edithubs in front
clear @a
scoreboard players set @a ow.running 0
scoreboard objectives setdisplay sidebar
kill @e[type=item]

# Forceload chunks covering the edit area
forceload add 995 -21 1021 53

# Kill old label armor stands to prevent duplicates
kill @e[type=armor_stand,tag=edit_label]

# --- Edit Hub (X=1008, Z=-16) — in front of grid ---
setblock 1008 65 -16 minecraft:structure_block{mode:"LOAD",name:"owcraft:edithubs",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1008 64 -16 minecraft:redstone_block replace
setblock 1008 65 -16 minecraft:structure_block{mode:"SAVE",name:"owcraft:edithubs",posX:-5,posY:1,posZ:-5,sizeX:11,sizeY:10,sizeZ:11,ignoreEntities:0b} replace
setblock 1008 64 -16 minecraft:air replace

# ========== ROW 1 (X=1000) ==========

# --- Hub (Z=0) ---
setblock 1000 65 0 minecraft:structure_block{mode:"LOAD",name:"owcraft:hub",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1000 64 0 minecraft:redstone_block replace
setblock 1000 65 0 minecraft:structure_block{mode:"SAVE",name:"owcraft:hub",posX:-5,posY:1,posZ:-5,sizeX:11,sizeY:10,sizeZ:11,ignoreEntities:0b} replace
setblock 1000 64 0 minecraft:air replace

# --- BT (Z=16) ---
setblock 1000 65 16 minecraft:structure_block{mode:"LOAD",name:"owcraft:bt",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1000 64 16 minecraft:redstone_block replace
setblock 1000 65 16 minecraft:structure_block{mode:"SAVE",name:"owcraft:bt",posX:-5,posY:1,posZ:-5,sizeX:11,sizeY:10,sizeZ:11,ignoreEntities:0b} replace
setblock 1000 64 16 minecraft:air replace

# --- Ship (Z=32) ---
setblock 1000 65 32 minecraft:structure_block{mode:"LOAD",name:"owcraft:ship",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1000 64 32 minecraft:redstone_block replace
setblock 1000 65 32 minecraft:structure_block{mode:"SAVE",name:"owcraft:ship",posX:-5,posY:1,posZ:-5,sizeX:11,sizeY:10,sizeZ:11,ignoreEntities:0b} replace
setblock 1000 64 32 minecraft:air replace

# --- Village (Z=48) ---
setblock 1000 65 48 minecraft:structure_block{mode:"LOAD",name:"owcraft:village",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1000 64 48 minecraft:redstone_block replace
setblock 1000 65 48 minecraft:structure_block{mode:"SAVE",name:"owcraft:village",posX:-5,posY:1,posZ:-5,sizeX:11,sizeY:10,sizeZ:11,ignoreEntities:0b} replace
setblock 1000 64 48 minecraft:air replace

# ========== ROW 2 (X=1016) ==========

# --- Temple (Z=0) ---
setblock 1016 65 0 minecraft:structure_block{mode:"LOAD",name:"owcraft:temple",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1016 64 0 minecraft:redstone_block replace
setblock 1016 65 0 minecraft:structure_block{mode:"SAVE",name:"owcraft:temple",posX:-5,posY:1,posZ:-5,sizeX:11,sizeY:10,sizeZ:11,ignoreEntities:0b} replace
setblock 1016 64 0 minecraft:air replace

# --- RP (Z=16) ---
setblock 1016 65 16 minecraft:structure_block{mode:"LOAD",name:"owcraft:rp",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1016 64 16 minecraft:redstone_block replace
setblock 1016 65 16 minecraft:structure_block{mode:"SAVE",name:"owcraft:rp",posX:-5,posY:1,posZ:-5,sizeX:11,sizeY:10,sizeZ:11,ignoreEntities:0b} replace
setblock 1016 64 16 minecraft:air replace

# --- Settings (Z=32) ---
setblock 1016 65 32 minecraft:structure_block{mode:"LOAD",name:"owcraft:settings",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1016 64 32 minecraft:redstone_block replace
setblock 1016 65 32 minecraft:structure_block{mode:"SAVE",name:"owcraft:settings",posX:-5,posY:1,posZ:-5,sizeX:11,sizeY:10,sizeZ:11,ignoreEntities:0b} replace
setblock 1016 64 32 minecraft:air replace

# --- Clear (Z=48) ---
setblock 1016 65 48 minecraft:structure_block{mode:"LOAD",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,ignoreEntities:0b} replace
setblock 1016 64 48 minecraft:redstone_block replace
setblock 1016 65 48 minecraft:structure_block{mode:"SAVE",name:"owcraft:clear",posX:-5,posY:1,posZ:-5,sizeX:11,sizeY:10,sizeZ:11,ignoreEntities:0b} replace
setblock 1016 64 48 minecraft:air replace

# ========== LABEL ARMOR STANDS ==========
summon armor_stand 1008 76 -16 {CustomName:'{"text":"Edit Hub","color":"dark_red","bold":true}',CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["edit_label"]}
summon armor_stand 1000 76 0 {CustomName:'{"text":"Hub","color":"white","bold":true}',CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["edit_label"]}
summon armor_stand 1000 76 16 {CustomName:'{"text":"BT","color":"aqua","bold":true}',CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["edit_label"]}
summon armor_stand 1000 76 32 {CustomName:'{"text":"Ship","color":"blue","bold":true}',CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["edit_label"]}
summon armor_stand 1000 76 48 {CustomName:'{"text":"Village","color":"green","bold":true}',CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["edit_label"]}
summon armor_stand 1016 76 0 {CustomName:'{"text":"Temple","color":"gold","bold":true}',CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["edit_label"]}
summon armor_stand 1016 76 16 {CustomName:'{"text":"RP","color":"light_purple","bold":true}',CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["edit_label"]}
summon armor_stand 1016 76 32 {CustomName:'{"text":"Settings","color":"yellow","bold":true}',CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["edit_label"]}
summon armor_stand 1016 76 48 {CustomName:'{"text":"Clear","color":"red","bold":true}',CustomNameVisible:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["edit_label"]}

# Teleport to edit hub workspace and set creative
tp @a 1008 67 -16 0 0
gamemode creative @a
tellraw @a ["",{"text":"[Edit Hub] ","color":"gold","bold":true},{"text":"All structures loaded. Right-click structure blocks to save.","color":"yellow"}]

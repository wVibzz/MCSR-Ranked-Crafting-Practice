scoreboard players set @s ow.has_wpick 1
scoreboard players set @s ow.has_anypick 1
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
tellraw @s ["",{"text":" - ","color":"red"},{"text":"Wooden Pickaxe","color":"gray"},{"text":" [-3]","color":"red"}]

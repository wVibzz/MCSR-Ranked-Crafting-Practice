# Toggle sidebar crafting checklist on/off
execute store result score #temp ow.rng run scoreboard players get @s ow.show_side
# If currently ON → turn OFF
execute if score #temp ow.rng matches 1 run scoreboard players set @s ow.show_side 0
execute if score #temp ow.rng matches 1 run scoreboard objectives setdisplay sidebar
execute if score #temp ow.rng matches 1 run tellraw @s ["",{"text":"[Settings] ","color":"gold"},{"text":"Sidebar: ","color":"yellow"},{"text":"OFF","color":"red"}]
# If currently OFF → turn ON
execute if score #temp ow.rng matches 0 run scoreboard players set @s ow.show_side 1
execute if score #temp ow.rng matches 0 run tellraw @s ["",{"text":"[Settings] ","color":"gold"},{"text":"Sidebar: ","color":"yellow"},{"text":"ON","color":"green"}]

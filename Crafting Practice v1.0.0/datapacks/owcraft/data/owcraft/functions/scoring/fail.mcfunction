scoreboard players set @s ow.complete 1
scoreboard players set @s ow.running 0
scoreboard objectives setdisplay sidebar
execute at @s run setblock ~ ~ ~ minecraft:nether_portal
schedule function owcraft:scoring/close_gui 2
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
# Show specific fail reason
execute if score #failtype ow.rng matches 1 run title @s actionbar [{"text":"Failed! ","color":"red","bold":true},{"text":"Duplicate item crafted","color":"gray"}]
execute if score #failtype ow.rng matches 2 run title @s actionbar [{"text":"Failed! ","color":"red","bold":true},{"text":"Made multiple pickaxe types","color":"gray"}]
execute if score #failtype ow.rng matches 3 run title @s actionbar [{"text":"Failed! ","color":"red","bold":true},{"text":"Made multiple axe types","color":"gray"}]
execute if score #failtype ow.rng matches 4 run title @s actionbar [{"text":"Failed! ","color":"red","bold":true},{"text":"Made multiple shovel types","color":"gray"}]
execute if score #failtype ow.rng matches 5 run title @s actionbar [{"text":"Failed! ","color":"red","bold":true},{"text":"Not enough iron for bucket","color":"gray"}]
execute if score #failtype ow.rng matches 6 run title @s actionbar [{"text":"Failed! ","color":"red","bold":true},{"text":"Not enough iron for flint & steel","color":"gray"}]
execute if score #failtype ow.rng matches 7 run title @s actionbar [{"text":"Failed! ","color":"red","bold":true},{"text":"Not enough iron for bucket & flint & steel","color":"gray"}]
execute if score #failtype ow.rng matches 8 run title @s actionbar [{"text":"Incorrect Play! ","color":"yellow","bold":true},{"text":"Iron pickaxe should be crafted before iron axe","color":"gray"}]
tellraw @s ["",{"text":"═══ ","color":"dark_red"},{"text":"Round Failed","color":"red","bold":true},{"text":" ═══","color":"dark_red"}]
execute if score #failtype ow.rng matches 1 run tellraw @s ["",{"text":"Duplicate item crafted — wasted resources.","color":"gray"}]
execute if score #failtype ow.rng matches 2 run tellraw @s ["",{"text":"Made multiple pickaxe types — pick one type.","color":"gray"}]
execute if score #failtype ow.rng matches 3 run tellraw @s ["",{"text":"Made multiple axe types — pick one type.","color":"gray"}]
execute if score #failtype ow.rng matches 4 run tellraw @s ["",{"text":"Made multiple shovel types — pick one type.","color":"gray"}]
execute if score #failtype ow.rng matches 5 run tellraw @s ["",{"text":"Not enough iron remaining for bucket.","color":"gray"}]
execute if score #failtype ow.rng matches 6 run tellraw @s ["",{"text":"Not enough iron remaining for flint & steel.","color":"gray"}]
execute if score #failtype ow.rng matches 7 run tellraw @s ["",{"text":"Not enough iron remaining for bucket & flint & steel.","color":"gray"}]
execute if score #failtype ow.rng matches 8 run tellraw @s ["",{"text":"Incorrect play — iron pickaxe is the correct craft, not iron axe.","color":"yellow"}]
schedule function owcraft:scoring/restart 40

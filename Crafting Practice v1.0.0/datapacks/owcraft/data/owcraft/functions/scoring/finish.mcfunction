scoreboard players set @s ow.complete 1
scoreboard objectives setdisplay sidebar
execute at @s run setblock ~ ~ ~ minecraft:nether_portal
schedule function owcraft:scoring/close_gui 2
execute store result score @s ow.left_iron run clear @s minecraft:iron_ingot 0
execute store result score @s ow.left_gold run clear @s minecraft:gold_ingot 0
execute store result score @s ow.left_dia run clear @s minecraft:diamond 0
execute store result score @s ow.left_inug run clear @s minecraft:iron_nugget 0
execute store result score @s ow.left_gnug run clear @s minecraft:gold_nugget 0
execute store result score @s ow.has_tnt run clear @s minecraft:tnt 0
scoreboard players set @s ow.score 0
execute if score @s ow.has_ipick matches 1 run scoreboard players add @s ow.score 10
execute if score @s ow.has_dpick matches 1 run scoreboard players add @s ow.score 15
execute if score @s ow.has_bucket matches 1 run scoreboard players add @s ow.score 10
execute if score @s ow.has_fns matches 1 run scoreboard players add @s ow.score 10
execute if score @s ow.has_iaxe matches 1 run scoreboard players add @s ow.score 8
execute if score @s ow.has_daxe matches 1 run scoreboard players add @s ow.score 10
execute if score @s ow.has_gaxe matches 1 run scoreboard players add @s ow.score 6
execute if score @s ow.has_ishovel matches 1 run scoreboard players add @s ow.score 7
execute if score @s ow.has_dshovel matches 1 run scoreboard players add @s ow.score 8
execute if score @s ow.has_gshovel matches 1 run scoreboard players add @s ow.score 7
execute if score @s ow.has_dsword matches 1 run scoreboard players add @s ow.score 8
execute if score @s ow.has_isword matches 1 run scoreboard players add @s ow.score 5
execute if score @s ow.has_gsword matches 1 run scoreboard players add @s ow.score 3
execute if score @s ow.seedtype matches 5 if score @s ow.has_spick matches 1 run scoreboard players add @s ow.score 4
execute if score @s ow.seedtype matches 5 if score @s ow.has_saxe matches 1 run scoreboard players add @s ow.score 4
execute if score @s ow.seedtype matches 1..4 if score @s ow.has_spick matches 1 run scoreboard players add @s ow.score 2
execute if score @s ow.seedtype matches 1..4 if score @s ow.has_saxe matches 1 run scoreboard players add @s ow.score 3
execute if score @s ow.has_sshovel matches 1 run scoreboard players add @s ow.score 2
execute if score @s ow.has_wpick matches 1 run scoreboard players remove @s ow.score 3
execute if score @s ow.has_waxe matches 1 run scoreboard players remove @s ow.score 3
execute if score @s ow.has_wshovel matches 1 run scoreboard players remove @s ow.score 3
execute if score @s ow.has_ihoe matches 1 run scoreboard players remove @s ow.score 5
execute if score @s ow.has_iplate matches 1 run scoreboard players add @s ow.score 3
execute if score @s ow.has_gplate matches 1 run scoreboard players add @s ow.score 3
execute if score @s ow.has_shears matches 1 run scoreboard players add @s ow.score 3
execute if score @s ow.seedtype matches 5 if score @s ow.has_shears matches 1 run scoreboard players add @s ow.score 2
execute if score @s ow.has_ghelm matches 1 run scoreboard players add @s ow.score 3
execute if score @s ow.has_gchest matches 1 run scoreboard players add @s ow.score 3
execute if score @s ow.has_glegs matches 1 run scoreboard players add @s ow.score 3
execute if score @s ow.has_gboots matches 1 run scoreboard players add @s ow.score 3
execute if score @s ow.has_tnt matches 1.. run scoreboard players add @s ow.score 2
execute if score @s ow.has_tnt matches 2.. run scoreboard players add @s ow.score 2
execute if score @s ow.has_tnt matches 3.. run scoreboard players add @s ow.score 2
execute if score @s ow.has_boat matches 1 run scoreboard players add @s ow.score 5
execute if score @s ow.seedtype matches 1..2 if score @s ow.has_odoor matches 1 run scoreboard players add @s ow.score 5
execute if score @s ow.seedtype matches 1..2 if score @s ow.has_idoor matches 1 run scoreboard players add @s ow.score 8
scoreboard players set #penalty ow.rng 0
scoreboard players set #two ow.rng 2
scoreboard players set #three ow.rng 3
scoreboard players set #nine ow.rng 9
execute store result score #penalty ow.rng run scoreboard players get @s ow.left_iron
scoreboard players operation #penalty ow.rng *= #two ow.rng
scoreboard players operation @s ow.score -= #penalty ow.rng
execute store result score #penalty ow.rng run scoreboard players get @s ow.left_gold
scoreboard players operation #penalty ow.rng *= #two ow.rng
scoreboard players operation @s ow.score -= #penalty ow.rng
execute store result score #penalty ow.rng run scoreboard players get @s ow.left_dia
scoreboard players operation #penalty ow.rng *= #three ow.rng
scoreboard players operation @s ow.score -= #penalty ow.rng
execute store result score #penalty ow.rng run scoreboard players get @s ow.left_inug
scoreboard players operation #penalty ow.rng /= #nine ow.rng
scoreboard players operation @s ow.score -= #penalty ow.rng
execute store result score #penalty ow.rng run scoreboard players get @s ow.left_gnug
scoreboard players operation #penalty ow.rng /= #nine ow.rng
scoreboard players operation @s ow.score -= #penalty ow.rng
# Convert ticks to seconds (with 1 decimal)
scoreboard players set #twenty ow.rng 20
scoreboard players set #ten ow.rng 10
scoreboard players operation @s ow.seconds = @s ow.timer
scoreboard players operation @s ow.seconds /= #twenty ow.rng
scoreboard players operation @s ow.tenths = @s ow.timer
scoreboard players operation @s ow.tenths %= #twenty ow.rng
scoreboard players operation @s ow.tenths *= #ten ow.rng
scoreboard players operation @s ow.tenths /= #twenty ow.rng
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
title @s actionbar [{"text":"Complete! ","color":"green","bold":true},{"text":"Score: ","color":"yellow"},{"score":{"name":"@s","objective":"ow.score"},"color":"aqua","bold":true},{"text":" | Time: ","color":"yellow"},{"score":{"name":"@s","objective":"ow.seconds"},"color":"aqua"},{"text":"."},{"score":{"name":"@s","objective":"ow.tenths"},"color":"aqua"},{"text":"s","color":"gray"}]
tellraw @s ["",{"text":"═══ ","color":"gold"},{"text":"Round Complete","color":"gold","bold":true},{"text":" ═══","color":"gold"}]
tellraw @s ["",{"text":"Score: ","color":"yellow"},{"score":{"name":"@s","objective":"ow.score"},"color":"aqua","bold":true},{"text":" | Time: ","color":"yellow"},{"score":{"name":"@s","objective":"ow.seconds"},"color":"aqua"},{"text":"."},{"score":{"name":"@s","objective":"ow.tenths"},"color":"aqua"},{"text":"s","color":"gray"}]
execute if score @s ow.left_iron matches 1.. run tellraw @s ["",{"text":" ","color":"red"},{"score":{"name":"@s","objective":"ow.left_iron"},"color":"red"},{"text":" leftover iron ingot(s)","color":"red"}]
execute if score @s ow.left_gold matches 1.. run tellraw @s ["",{"text":" ","color":"red"},{"score":{"name":"@s","objective":"ow.left_gold"},"color":"red"},{"text":" leftover gold ingot(s)","color":"red"}]
execute if score @s ow.left_dia matches 1.. run tellraw @s ["",{"text":" ","color":"red"},{"score":{"name":"@s","objective":"ow.left_dia"},"color":"red"},{"text":" leftover diamond(s)","color":"red"}]
execute if score @s ow.left_inug matches 9.. run tellraw @s ["",{"text":" ","color":"red"},{"score":{"name":"@s","objective":"ow.left_inug"},"color":"red"},{"text":" leftover iron nuggets","color":"red"}]
execute if score @s ow.left_gnug matches 9.. run tellraw @s ["",{"text":" ","color":"red"},{"score":{"name":"@s","objective":"ow.left_gnug"},"color":"red"},{"text":" leftover gold nuggets","color":"red"}]
scoreboard players set @s ow.running 0
schedule function owcraft:auto_reset 40

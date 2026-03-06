scoreboard players set @a ow.has_ipick 0
scoreboard players set @a ow.has_dpick 0
scoreboard players set @a ow.has_spick 0
scoreboard players set @a ow.has_wpick 0
scoreboard players set @a ow.has_bucket 0
scoreboard players set @a ow.has_fns 0
scoreboard players set @a ow.has_iaxe 0
scoreboard players set @a ow.has_daxe 0
scoreboard players set @a ow.has_gaxe 0
scoreboard players set @a ow.has_saxe 0
scoreboard players set @a ow.has_waxe 0
scoreboard players set @a ow.has_ishovel 0
scoreboard players set @a ow.has_dshovel 0
scoreboard players set @a ow.has_gshovel 0
scoreboard players set @a ow.has_sshovel 0
scoreboard players set @a ow.has_wshovel 0
scoreboard players set @a ow.has_ihoe 0
scoreboard players set @a ow.has_dsword 0
scoreboard players set @a ow.has_isword 0
scoreboard players set @a ow.has_gsword 0
scoreboard players set @a ow.has_iplate 0
scoreboard players set @a ow.has_gplate 0
scoreboard players set @a ow.has_shears 0
scoreboard players set @a ow.has_ghelm 0
scoreboard players set @a ow.has_gchest 0
scoreboard players set @a ow.has_glegs 0
scoreboard players set @a ow.has_gboots 0
scoreboard players set @a ow.has_tnt 0
scoreboard players set @a ow.has_bed 0
scoreboard players set @a ow.left_iron 0
scoreboard players set @a ow.left_gold 0
scoreboard players set @a ow.left_dia 0
scoreboard players set @a ow.left_inug 0
scoreboard players set @a ow.left_gnug 0
scoreboard players set @a ow.score 0
scoreboard players set @a ow.complete 0
scoreboard players set @a ow.has_anypick 0
scoreboard players set @a ow.has_anyaxe 0
scoreboard players set @a ow.has_anyshov 0
scoreboard players set @a ow.has_light 0
scoreboard players set @a ow.no_iron 0
scoreboard players set @a ow.init_ipick 0
scoreboard players set @a ow.has_ihelm 0
scoreboard players set @a ow.has_ichest 0
scoreboard players set @a ow.has_ilegs 0
scoreboard players set @a ow.has_iboots 0
scoreboard players set @a ow.has_boat 0
scoreboard players set @a ow.has_odoor 0
scoreboard players set @a ow.has_idoor 0
scoreboard players set @a ow.start_iron 0
scoreboard players set @a ow.iron_used 0
# Sidebar checklist — recreate with seed name as title
scoreboard objectives remove ow.sidebar
execute if score @s ow.seedtype matches 1 run scoreboard objectives add ow.sidebar dummy {"text":"Buried Treasure","color":"aqua","bold":true}
execute if score @s ow.seedtype matches 2 run scoreboard objectives add ow.sidebar dummy {"text":"Shipwreck","color":"blue","bold":true}
execute if score @s ow.seedtype matches 3 run scoreboard objectives add ow.sidebar dummy {"text":"Village","color":"green","bold":true}
execute if score @s ow.seedtype matches 4 run scoreboard objectives add ow.sidebar dummy {"text":"Desert Temple","color":"gold","bold":true}
execute if score @s ow.seedtype matches 5 run scoreboard objectives add ow.sidebar dummy {"text":"Ruined Portal","color":"light_purple","bold":true}
scoreboard players set Pickaxe ow.sidebar 7
scoreboard players set Axe ow.sidebar 6
scoreboard players set Shovel ow.sidebar 5
scoreboard players set Bucket ow.sidebar 4
scoreboard players set Light ow.sidebar 3
scoreboard players set Boat ow.sidebar 2
scoreboard players set Door ow.sidebar 1
team join ow_need Pickaxe
team join ow_need Axe
team join ow_need Shovel
team join ow_need Bucket
team join ow_need Light
team join ow_need Boat
team join ow_need Door
# Hide bucket for RP seeds (not required)
execute if score @s ow.seedtype matches 5 run scoreboard players reset Bucket ow.sidebar
# Hide door for non-BT/Shipwreck seeds (not required)
execute if score @s ow.seedtype matches 3..5 run scoreboard players reset Door ow.sidebar
# Default sidebar ON if not yet set
execute unless score @s ow.show_side matches 0..1 run scoreboard players set @s ow.show_side 1
# Only display sidebar if setting is ON
execute if score @s ow.show_side matches 1 run scoreboard objectives setdisplay sidebar ow.sidebar

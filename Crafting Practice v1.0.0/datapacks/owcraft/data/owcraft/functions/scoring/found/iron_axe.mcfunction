scoreboard players set @s ow.has_iaxe 1
scoreboard players add @s ow.iron_used 3
# Fail if iron axe crafted before iron pickaxe and not enough iron left for pickaxe (3 iron)
scoreboard players operation #iron_have ow.rng = @s ow.start_iron
scoreboard players operation #iron_have ow.rng -= @s ow.iron_used
execute if score @s ow.complete matches 0 if score @s ow.has_ipick matches 0 if score #iron_have ow.rng matches ..2 run scoreboard players set #failtype ow.rng 8
execute if score @s ow.complete matches 0 if score @s ow.has_ipick matches 0 if score #iron_have ow.rng matches ..2 run function owcraft:scoring/fail
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s ["",{"text":" + ","color":"green"},{"text":"Iron Axe","color":"white"},{"text":" [+8]","color":"green"}]
function owcraft:scoring/check_fail

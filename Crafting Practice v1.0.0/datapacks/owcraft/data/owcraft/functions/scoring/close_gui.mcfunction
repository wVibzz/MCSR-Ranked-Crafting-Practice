# Remove portal blocks near players after 0.1s
execute as @a at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace minecraft:nether_portal
# Clean up dropped items 0.2s later
schedule function owcraft:scoring/clean_items 4

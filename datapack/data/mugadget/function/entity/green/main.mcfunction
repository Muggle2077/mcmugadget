# 换成斧
execute if entity @s[tag=mugadget.bow] if entity @a[gamemode=!spectator,distance=..3] unless entity @e[type=minecraft:iron_golem,distance=..5] run function mugadget:entity/green/axe
# 换成弓
execute if entity @s[tag=mugadget.axe] unless entity @a[gamemode=!spectator,distance=..3] run function mugadget:entity/green/bow
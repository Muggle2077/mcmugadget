# 生物
execute as @e[type=minecraft:skeleton,tag=mugadget.green] at @s run function mugadget:entity/green/main
execute as @e[type=minecraft:husk,tag=mugadget.yellow] at @s if entity @a[gamemode=!spectator,distance=..5] run function mugadget:entity/yellow/main
execute as @e[type=minecraft:creeper,tag=mugadget.gray,nbt={HurtTime:10s}] at @s run function mugadget:entity/gray/main
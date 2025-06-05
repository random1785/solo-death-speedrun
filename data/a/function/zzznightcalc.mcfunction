execute as @e[type=minecraft:armor_stand,tag=score] run scoreboard players operation @s night = @s sc
execute as @e[type=minecraft:armor_stand,tag=score] run scoreboard players operation @s night /= @s two
execute as @e[type=minecraft:armor_stand,tag=score] run scoreboard players operation @s night += @s sc
execute as @e[type=minecraft:armor_stand,tag=score] run scoreboard players operation @s night /= @s two
execute as @e[type=minecraft:armor_stand,tag=score] run scoreboard players operation @s sc = @s night
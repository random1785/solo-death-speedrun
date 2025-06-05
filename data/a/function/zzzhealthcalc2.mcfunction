execute as @a[scores={health=1..500}] run scoreboard players operation @s left = @s calc
execute as @a[scores={health=1..500}] run scoreboard players operation @s calc *= @e[type=armor_stand,tag=score] multi
execute as @a[scores={health=1..500}] run scoreboard players operation @s calc /= @e[type=armor_stand,tag=score] sc
execute as @a[scores={health=1..500}] run scoreboard players operation @s calc -= @e[type=armor_stand,tag=score] multi
scoreboard players set @a[scores={calc=150..,health=1..500}] calc 150
scoreboard players set @a[scores={calc=..0,health=1..500}] calc 0
scoreboard players set @a scalc 0
execute as @a[scores={health=1..500,calc=0}] run scoreboard players operation @s scalc = @e[type=armor_stand,tag=score] sc
execute as @a[scores={health=1..500,calc=0}] run scoreboard players operation @s scalc *= @e[type=armor_stand,tag=score] multi
execute as @a[scores={health=1..500,calc=0}] run scoreboard players operation @s scalc /= @s left
execute as @a[scores={health=1..500,calc=0}] run scoreboard players operation @s scalc -= @e[type=armor_stand,tag=score] multi
execute as @a[scores={health=1..500,calc=0,scalc=150..}] run scoreboard players set @s scalc 150
execute as @a[scores={health=1..500}] run tellraw @a [{"color":"gold","score":{"name":"@s","objective":"calc"}},{"text":" damage dealt to "},{"selector":"@s"},{"text":"!"}]
execute as @a[scores={health=1..500}] run tellraw @a [{"color":"gold","score":{"name":"@s","objective":"scalc"}},{"text":" damage dealt to Opponent!"}]
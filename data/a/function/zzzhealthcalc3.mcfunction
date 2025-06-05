execute as @a at @s run playsound minecraft:entity.generic.explode
execute as @a run scoreboard players operation @s health -= @s calc
scoreboard players operation Opponent health -= @p scalc
scoreboard players reset @a calc
scoreboard players reset @a scalc
scoreboard players reset @a[tag=a] score
execute as @a[scores={health=1..500}] run tellraw @a [{"color":"aqua","selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"health"}},{"text":" health left!"}]
execute as @a[scores={health=1..500}] run tellraw @a [{"color":"aqua","text":"Opponent has "},{"score":{"name":"Opponent","objective":"health"}},{"text":" health left!"}]
execute unless score @p health matches ..0 run execute unless score Opponent health matches ..0 run schedule function a:zzzstart 3s
execute if score Opponent health matches ..0 run title @a title [{"color":"gold","selector":"@a[scores={health=0..}]"},{"text":" is the winner!"}]
execute if score Opponent health matches ..0 run tellraw @a [{"color":"gold","selector":"@a[scores={health=0..}]"},{"text":" is the winner!"}]
execute if score Opponent health matches ..0 run execute at @a run playsound minecraft:ui.toast.challenge_complete master @a
execute if score @p health matches ..0 run title @a title [{"color":"black","text":"Opponent is the winner!"}]
execute if score @p health matches ..0 run tellraw @a [{"color":"black","text":"Opponent is the winner!"}]
execute if score @p health matches ..0 run execute at @a run playsound minecraft:entity.wither.death master @a
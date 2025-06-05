effect give @a[scores={death=18..}] resistance 1 255 true
effect give @a[scores={death=18..}] mining_fatigue 1 254 true
execute positioned 12.79 308.35 0.70 run effect give @a[distance=..30] mining_fatigue 1 254 true
execute positioned 12.79 308.35 0.70 run effect give @a[distance=..30] resistance 1 254 true
execute positioned 22.41 309.99 0.39 run effect give @a[distance=..10] saturation 1 254 true
execute in minecraft:the_nether positioned 11.08 129.00 4.82 run effect give @a[distance=..20] resistance 1 254 true
execute in minecraft:the_nether positioned 11.08 129.00 4.82 run effect give @a[distance=..20] mining_fatigue 1 254 true
execute in minecraft:the_nether positioned 11.08 129.00 4.82 run effect give @a[distance=..20] saturation 1 254 true
scoreboard players add @e[type=armor_stand,tag=score,scores={round=1..}] score 1
execute as @e[tag=score,type=armor_stand,scores={score=0..10}] at @a run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace glass
execute as @e[tag=score,type=armor_stand,scores={score=-5..-1}] run execute as @a at @s run spawnpoint @s ~ ~50 ~
execute as @e[tag=score,type=armor_stand,scores={score=-5}] run execute as @e[tag=start] run kill @s

execute as @e[tag=score,scores={score=0..99}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"aqua"}
execute as @e[tag=score,scores={score=100..199}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"green"}
execute as @e[tag=score,scores={score=200..299}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"yellow"}
execute as @e[tag=score,scores={score=300..399}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"gold"}
execute as @e[tag=score,scores={score=400..499}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"red"}
execute as @e[tag=score,scores={score=500..699}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"dark_red"}
execute as @e[tag=score,scores={score=700..799}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"dark_gray"}
execute as @e[tag=score,scores={score=800..}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"black"}

execute as @a[team=a,scores={death=18,health=1..500},tag=!a] if entity @e[tag=score,scores={score=0..}] run function a:victory
tag @a[scores={death=18,health=1..500},tag=!a] add a
tag @a[tag=!new] add new
team join a @a[tag=!new]


execute as @e[tag=score,scores={score=-200}] run title @a title {"text":"10","color":"green"}
execute as @e[tag=score,scores={score=-180}] run title @a title {"text":"9","color":"green"}
execute as @e[tag=score,scores={score=-160}] run title @a title {"text":"8","color":"green"}
execute as @e[tag=score,scores={score=-140}] run title @a title {"text":"7","color":"green"}
execute as @e[tag=score,scores={score=-120}] run title @a title {"text":"6","color":"green"}
execute as @e[tag=score,scores={score=-100}] run title @a title {"text":"5","color":"yellow"}
execute as @e[tag=score,scores={score=-80}] run title @a title {"text":"4","color":"yellow"}
execute as @e[tag=score,scores={score=-60}] run title @a title {"text":"3","color":"gold"}
execute as @e[tag=score,scores={score=-40}] run title @a title {"text":"2","color":"red"}
execute as @e[tag=score,scores={score=-20}] run title @a title {"text":"1","color":"red"}
execute as @e[tag=score,scores={score=0}] run title @a title {"text":"GO!","color":"dark_red"}


execute as @e[tag=score,scores={score=-200}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-180}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-160}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-140}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-120}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-100}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-80}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-60}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-40}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-20}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=0}] at @a run playsound minecraft:entity.ender_dragon.growl player @a

execute as @e[type=minecraft:armor_stand,tag=score,scores={score=-199}] at @s if entity @a[distance=..35,gamemode=survival] run function a:zzzbotched
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=-19}] at @s if entity @a[distance=..35,gamemode=survival] run function a:zzzbotched
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=-240..-1}] at @s if entity @a[scores={glass=1..}] run function a:zzzglass

execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000}] if score @s poverkill <= @s score run kill @a[scores={death=17,health=0..501}]
execute as @e[tag=!c,type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run tellraw @a {"text":"Max damage threshold reached! Killing all remaining players...","color":"dark_red"}
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000}] if score @s poverkill <= @s score run tellraw @a {"text":"Max damage threshold reached! Killing all remaining players...","color":"dark_red"}
execute as @e[tag=!c,type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s sc run tellraw @a [{"color":"green","text":"Opponent took "},{"score":{"name":"@s","objective":"score"}},{"text":" ticks to die!"}]
execute as @e[tag=!c,type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s sc run function a:zzzhealthcalc1
execute as @e[tag=!c,type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s sc run tag @e[tag=score] add c
execute as @e[tag=!c,type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run scoreboard players set @s overkill 69420
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000}] if score @s poverkill <= @s score run scoreboard players set @s poverkill 69420



execute as @e[tag=starting] run execute as @a[scores={sc=0..},tag=!b] run function a:xxxstart2
execute as @e[tag=starting] run execute as @a[scores={sc=0..},tag=!b] run tag @s add b

execute as @e[tag=starting] run execute as @a[scores={rn=0..},tag=!c] run tellraw @a [{"color":"yellow","text":"You will be playing against an average score of "},{"bold":true,"score":{"name":"@s","objective":"sc"}},{"text":" with a variance of "},{"bold":true,"score":{"name":"@s","objective":"rn"}},{"text":"."}] 
execute as @e[tag=starting] run execute as @a[scores={rn=0..},tag=!c] run execute as @a at @s run playsound minecraft:block.trial_spawner.ominous_activate
execute as @e[tag=starting] run execute as @a[scores={rn=0..},tag=!c] run schedule function a:zzznight 660s
execute as @e[tag=starting] run execute as @a[scores={rn=0..},tag=!c] run function a:zzzstart
execute as @e[tag=starting] run execute as @a[scores={rn=0..},tag=!c] run tag @s add c
execute as @e[tag=starting] run execute as @a[scores={rn=-238095780..-1},tag=!c] run function a:zzzstupid

execute if score @e[limit=1,tag=score,tag=!c] score >= @e[limit=1,tag=score,tag=!c] sc run tellraw @a [{"color":"green","text":"Opponent took "},{"score":{"name":"@e[limit=1,tag=score,tag=!c]","objective":"sc"}},{"text":" ticks to die!"}]
execute if score @e[limit=1,tag=score,tag=!c] score >= @e[limit=1,tag=score,tag=!c] sc run execute as @a[scores={death=20}] run function a:zzzhealthcalc1
execute if score @e[limit=1,tag=score,tag=!c] score >= @e[limit=1,tag=score,tag=!c] sc run tag @e[limit=1,tag=score,tag=!c] add c
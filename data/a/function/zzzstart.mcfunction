clear @a
team join a @a
effect clear @a
weather clear
kill @a
kill @e[type=armor_stand,tag=score]
summon armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0
scoreboard players set @e[type=armor_stand,tag=score] multi 100
scoreboard players set @e[type=armor_stand,tag=score] two 2
scoreboard players set @e[type=armor_stand,tag=score] five 5
tag @e[type=armor_stand,tag=score] add newcheck
tag @a remove a
schedule function a:zzzstart1 20t
gamemode survival @a
execute as @a unless score @s health matches ..500 run scoreboard players set @s health -69420
execute as @a run scoreboard players operation @s temp = @s health

# execute as @a[scores={rn=0}] execute store result score @e[limit=1,tag=score] random run random value -100..100
execute as @a[scores={rn=0..50}] run function a:zzzrandom1
execute as @a[scores={rn=51..100}] run function a:zzzrandom2
execute as @a[scores={rn=101..150}] run function a:zzzrandom3
execute as @a[scores={rn=151..200}] run function a:zzzrandom4
execute as @a[scores={rn=201..250}] run function a:zzzrandom5
execute as @a[scores={rn=251..300}] run function a:zzzrandom6
execute as @a[scores={rn=..-1}] run function a:zzzstupid
execute as @a[scores={rn=301..}] run function a:zzzstupid
scoreboard players operation @e[limit=1,tag=score] sc = @r sc
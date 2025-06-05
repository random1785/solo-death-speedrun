gamerule doImmediateRespawn true
spawnpoint @a 0 302 0
scoreboard players set @a death 1785
time set 0
clear @a
team join a @a
weather clear
effect clear @a
tellraw @a [{"text":"please set the score you wish to play against with ","color":"aqua"},{"bold":true,"text":"/trigger sc set <value>."}]
kill @e[type=armor_stand,tag=score]
summon armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0
scoreboard players set @e[type=armor_stand,tag=score] multi 100
scoreboard players set @e[type=armor_stand,tag=score] two 2
scoreboard players set @e[type=armor_stand,tag=score] five 5
tag @e[type=armor_stand,tag=score] add newcheck
tag @e[type=armor_stand,tag=score] add starting
tag @a remove a
tag @a remove b
tag @a remove c
gamemode spectator @a
scoreboard players set @a health 500
scoreboard players set Opponent health 500
scoreboard players set @a temp 500
scoreboard players set @a sc -50
scoreboard players enable @a sc

execute as @a at @s run playsound minecraft:block.note_block.chime
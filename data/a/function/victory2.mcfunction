execute unless score @e[limit=1,tag=score] score < @e[limit=1,tag=score] sc run schedule function a:zzzhealthcalc1 10t
execute as @a[scores={death=18},tag=a] at @s run playsound minecraft:entity.player.levelup
execute as @a[scores={death=18},tag=a] run title @s title [{"text":"Time taken: ","color":"gold"},{"score":{"name":"@s","objective":"score"}},{"text":" ticks"}]
execute as @a[scores={death=18},tag=a] run gamemode spectator @s
execute as @a[scores={death=18},tag=a] run tellraw @a [{"selector":"@s","color":"green"},{"text":" took "},{"score":{"name":"@s","objective":"score"}},{"text":" ticks to die!"}]
execute as @a[tag=a] run scoreboard players operation @s calc = @s score
scoreboard players set @a[tag=a] death 20
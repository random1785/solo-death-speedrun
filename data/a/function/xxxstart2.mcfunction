tellraw @a [{"text":"please set the variance of the score you wish to play against with ","color":"light_purple"},{"bold":true,"text":"/trigger rn set <value>."}]
tellraw @a {"color":"gray","text":"this value must be between 0 and 300, inclusive."}

scoreboard players set @a rn -238095785
scoreboard players enable @a rn


execute as @a at @s run playsound minecraft:block.note_block.chime
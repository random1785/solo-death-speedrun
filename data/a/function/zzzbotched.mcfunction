scoreboard players set @e[type=minecraft:armor_stand,tag=score] score 1
kill @a
tellraw @a {"text":"Round on spawn platform detected! This often happens if players do not respawn in time due to lag or if they tab out.","color":"red"}
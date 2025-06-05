tellraw @a {"text":"/reload","color":"dark_red","bold":true}
title @a title {"text":"ARE YOU STUPID","color":"dark_red"}
execute at @a run summon lightning_bolt ~ ~ ~
execute as @a at @s run playsound minecraft:entity.ghast.hurt
schedule clear a:zzzstart
schedule clear a:zzzstart1
schedule clear a:zzzstart2
schedule function a:zzzstupid 1t

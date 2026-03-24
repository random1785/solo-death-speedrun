function a:murder
scoreboard players reset *
time set 0
team add a
team modify a collisionRule pushOwnTeam
team modify a friendlyFire true
scoreboard objectives add score dummy
scoreboard objectives add sc trigger
scoreboard objectives add rn trigger
scoreboard objectives add death deathCount
scoreboard objectives add calc dummy
scoreboard objectives add random dummy
scoreboard objectives add scalc dummy
scoreboard objectives add health dummy
scoreboard objectives add round dummy
scoreboard objectives add multi dummy
scoreboard objectives add left dummy
scoreboard objectives add right dummy
scoreboard objectives add gone dummy
scoreboard objectives add two dummy
scoreboard objectives add five dummy
scoreboard objectives add first dummy
scoreboard objectives add overkill dummy
scoreboard objectives add poverkill dummy
scoreboard objectives add temp dummy
scoreboard objectives add pcount dummy
scoreboard objectives add tpcount dummy
scoreboard objectives add night dummy
scoreboard objectives add glass minecraft.mined:minecraft.glass
scoreboard objectives setdisplay sidebar health
scoreboard players set @a death 1785
tellraw @a [{"bold":true,"color":"aqua","underline":true,"text":"Singleplayer "},{"text":"death speedruns has been loaded! Use /function a:start to begin the games!","color":"green"}]



# create spawn platform
schedule function a:zzzspawn 5t
execute in the_nether run forceload add -13 -14 25 24
forceload add 0 0 -1 -1
place template a:lobbyoverworld3v2 -12 294 -12
fillbiome -11 298 -11 33 319 12 minecraft:cherry_grove
setworldspawn 0 302 0
spawnpoint @a 0 302 0
tp @a 0 302 0
gamemode survival @a
schedule function a:maingmr7 1t
schedule function a:maingmr5 2t
schedule function a:maingmr11 3t

execute unless entity @e[type=minecraft:armor_stand,limit=1,tag=score] run summon minecraft:armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0
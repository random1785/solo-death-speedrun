# solo-death-speedrun
Minecraft Datapack (works on any version past 1.18, last tested on 1.21.5) that is a simulation of my [death-speedrun datapack](https://github.com/random1785/death-speedrun) for singleplayer.

## Features:
### All features of death-speedrun, as well as: <br>
The player plays against an opponent, who is set to randomly die in a specified number of ticks.<br>
This number is required to be customized before the game starts. 


## More technical stuff that is mostly for myself:
Repeated attempts to heal players in case they spawn on lower health<br/>
Detection for players who have escaped the spawn cage starts at 5 seconds left<br/>
If a player joins midway through a match, they are instantly eliminated and put into spectator mode<br/>
If a player leaves midway through a match, they are able to rejoin as long as the health calculation has not started (nobody is alive and playing)

## Todo list:
Add detection for when player escapes the starting box
Weird bug where the opponent takes -1 health instead of dealing 1 damage to the player. This seems to happen if the player is supposed to take 1 damage.

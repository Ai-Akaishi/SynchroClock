#> synclock:load
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## SynchroClockで使うスコアボード
scoreboard objectives add SynClock dummy
scoreboard players set #4 SynClock 4
scoreboard players set #60 SynClock 60
scoreboard players set #24 SynClock 24
scoreboard players set #1000 SynClock 1000

#define storage synclock:sys

execute unless data storage synclock:sys head_names run data modify storage synclock:sys head_names set value ["MHF_Alex","MHF_Blaze","MHF_CaveSpider","MHF_Chicken","MHF_Cow","MHF_Creeper","MHF_Enderman","MHF_Ghast","MHF_Golem","MHF_Herobrine","MHF_LavaSlime","MHF_MushroomCow","MHF_Ocelot","MHF_Pig","MHF_PigZombie","MHF_Sheep","MHF_Skeleton","MHF_Slime","MHF_Spider","MHF_Squid","MHF_Steve","MHF_Villager","MHF_WSkeleton","MHF_Zombie","MHF_Cactus","MHF_Cake","MHF_Chest","MHF_CoconutB","MHF_CoconutG","MHF_Melon","MHF_OakLog","MHF_Present1","MHF_Present2","MHF_Pumpkin","MHF_TNT","MHF_TNT2","MHF_ArrowUp","MHF_ArrowDown","MHF_ArrowLeft","MHF_ArrowRight","MHF_Exclamation"]

## 初期スポの読み込みを待つ
execute positioned 0.0 0.0 0.0 run forceload add ~ ~
execute positioned 0.0 0.0 0.0 run function synclock:wait_chunk_load/

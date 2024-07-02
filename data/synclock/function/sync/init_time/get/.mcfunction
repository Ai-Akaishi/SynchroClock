#> synclock:sync/init_time/get/
# 読み込まれたスキンデータから時刻を取得する
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# tellraw @a {"entity":"@s","nbt":"item.components.\"minecraft:profile\".properties[0].value"}
kill @s

data modify storage synclock:sys value_base64 set from entity @s item.components."minecraft:profile".properties[0].value

## 時刻取得に必要なパートを、１かたまり(4文字)ずつ分ける
data modify storage synclock:sys value_chunk set value []
# data modify storage synclock:sys value_chunk append string storage synclock:sys value_base64 40 44
data modify storage synclock:sys value_chunk append string storage synclock:sys value_base64 36 40
data modify storage synclock:sys value_chunk append string storage synclock:sys value_base64 32 36
data modify storage synclock:sys value_chunk append string storage synclock:sys value_base64 28 32
data modify storage synclock:sys value_chunk append string storage synclock:sys value_base64 24 28

scoreboard players set #_ SynClock 0
scoreboard players set #10 SynClock 10
function synclock:sync/init_time/get/type1
function synclock:sync/init_time/get/type1
function synclock:sync/init_time/get/type1
function synclock:sync/init_time/get/type2
scoreboard players reset #10 SynClock

## 時刻同期の日時を記録する
# execute store result storage synclock:sys last_updated_unix_time int 1 run scoreboard players remove _ SynClock 1
execute store result score LastSyncUnixTime SynClock store result score UnixTime SynClock store result storage synclock:sys last_sync_unix_time int 1 run scoreboard players get #_ SynClock
## 時刻同期のゲームタイムを記録する
execute store result storage synclock:sys last_sync_game_time int 1 run time query gametime

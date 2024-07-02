#> synclock:convert/
# unix_timeを現在日時に変換する
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 現在時刻を取得
scoreboard players operation #Time SynClock = UnixTime SynClock
# 閏年が簡単に計算できるように、2000年1月1日 00:00:00(=946652400)に合わせる
scoreboard players remove #Time SynClock 946652400

# 秒
scoreboard players operation Second SynClock = #Time SynClock
execute store result storage synclock:sys datetime.second int 1 run scoreboard players operation Second SynClock %= #60 SynClock
scoreboard players operation #Time SynClock /= #60 SynClock
# 分
scoreboard players operation Minute SynClock = #Time SynClock
execute store result storage synclock:sys datetime.minute int 1 run scoreboard players operation Minute SynClock %= #60 SynClock
scoreboard players operation #Time SynClock /= #60 SynClock
# 時
scoreboard players operation Hour SynClock = #Time SynClock
execute store result storage synclock:sys datetime.hour int 1 run scoreboard players operation Hour SynClock %= #24 SynClock
scoreboard players operation #Time SynClock /= #24 SynClock

## 曜日(0-6)
scoreboard players operation Weekday SynClock = #Time SynClock
scoreboard players remove Weekday SynClock 2
scoreboard players set #_ SynClock 7
scoreboard players operation Weekday SynClock %= #_ SynClock

#4years
scoreboard players set #_ SynClock 1461
scoreboard players operation Day SynClock = #Time SynClock
scoreboard players operation Day SynClock %= #_ SynClock
scoreboard players operation #Time SynClock /= #_ SynClock
scoreboard players operation Year SynClock = #Time SynClock
scoreboard players operation Year SynClock *= #4 SynClock
# 閏日を考慮
execute if score Day SynClock matches 1096.. run scoreboard players add Year SynClock 3
execute if score Day SynClock matches 1096.. run scoreboard players remove Day SynClock 1096
execute if score Day SynClock matches 731.. run scoreboard players add Year SynClock 2
execute if score Day SynClock matches 731.. run scoreboard players remove Day SynClock 731
execute if score Day SynClock matches 366.. run scoreboard players add Year SynClock 1
execute if score Day SynClock matches 366.. run scoreboard players remove Day SynClock 366

scoreboard players set Month SynClock 1
function synclock:convert/month/1
scoreboard players add Day SynClock 1
scoreboard players add Year SynClock 2000

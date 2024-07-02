#> synclock:sync/init_time/
# 読み込まれたスキンデータから時刻を取得する
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## UnixTimeを取得する
execute positioned 0.0 0.0 0.0 as @n[type=item_display,tag=SynclockHeadDisplay] run function synclock:sync/init_time/get/

schedule function synclock:proceed/ 1s replace


# ## 現在時刻を取得
# execute store result score #Time SynClock run data get storage synclock:sys last_sync_unix_time

# ## UnixTimeから年/月/日/時/分/秒/曜日に変換する
# function synclock:sync/init_time/convert/

# ## スコアボードを更新する
# execute store result score Year SynClock run data get storage synclock:sys datetime.year
# execute store result score Month SynClock run data get storage synclock:sys datetime.month
# execute store result score Date SynClock run data get storage synclock:sys datetime.date
# execute store result score Hour SynClock run data get storage synclock:sys datetime.hour
# execute store result score Minute SynClock run data get storage synclock:sys datetime.minute
# execute store result score Second SynClock run data get storage synclock:sys datetime.second

# data modify storage synclock:sys datetime.format set value "$(Year)年$(Month)月$(Day)日 $(Hour)時$(Minute)分$(Second)秒"


# {month: 7, hour: 21, year: 2024, weekday: 1, day: 2, minute: 24, second: 2}

# 2024/7/2 21時24分2秒
# 2024/07/02 21:24:02

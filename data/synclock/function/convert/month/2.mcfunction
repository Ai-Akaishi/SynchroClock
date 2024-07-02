#> synclock:convert/month/2
# 月を取得する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 2月を超えている？
scoreboard players operation #_ SynClock = Year SynClock
scoreboard players operation #_ SynClock %= #4 SynClock
execute if score #_ SynClock matches 0 run scoreboard players set #_ SynClock 29
execute if score #_ SynClock matches ..3 run scoreboard players set #_ SynClock 28
execute if score Day SynClock >= #_ SynClock run scoreboard players add Month SynClock 1
execute if score Day SynClock >= #_ SynClock run scoreboard players operation Day SynClock -= #_ SynClock
# 3月以上なら3月チェック
execute if score Month SynClock matches 3.. run function synclock:convert/month/3

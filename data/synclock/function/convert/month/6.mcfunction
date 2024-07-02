#> synclock:convert/month/6
# 月を取得する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 6月を超えている？
execute if score Day SynClock matches 30.. run scoreboard players add Month SynClock 1
execute if score Day SynClock matches 30.. run scoreboard players remove Day SynClock 30
# 7月以上なら7月チェック
execute if score Month SynClock matches 7.. run function synclock:convert/month/7

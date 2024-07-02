#> synclock:convert/month/4
# 月を取得する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 4月を超えている？
execute if score Day SynClock matches 30.. run scoreboard players add Month SynClock 1
execute if score Day SynClock matches 30.. run scoreboard players remove Day SynClock 30
# 5月以上なら5月チェック
execute if score Month SynClock matches 5.. run function synclock:convert/month/5

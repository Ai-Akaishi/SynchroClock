#> synclock:convert/month/5
# 月を取得する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 5月を超えている？
execute if score Day SynClock matches 31.. run scoreboard players add Month SynClock 1
execute if score Day SynClock matches 31.. run scoreboard players remove Day SynClock 31
# 6月以上なら6月チェック
execute if score Month SynClock matches 6.. run function synclock:convert/month/6

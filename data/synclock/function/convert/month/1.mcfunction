#> synclock:convert/month/1
# 月を取得する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 1月を超えている？
scoreboard players set Month SynClock 1
execute if score Day SynClock matches 31.. run scoreboard players add Month SynClock 1
execute if score Day SynClock matches 31.. run scoreboard players remove Day SynClock 31
# 2月以上なら2月チェック
execute if score Month SynClock matches 2.. run function synclock:convert/month/2

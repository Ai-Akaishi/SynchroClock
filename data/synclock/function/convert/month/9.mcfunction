#> synclock:convert/month/9
# 月を取得する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 9月を超えている？
execute if score Day SynClock matches 30.. run scoreboard players add Month SynClock 1
execute if score Day SynClock matches 30.. run scoreboard players remove Day SynClock 30
# 10月以上なら10月チェック
execute if score Month SynClock matches 10.. run function synclock:convert/month/10

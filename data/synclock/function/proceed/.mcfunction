#> synclock:proceed/
# 次の時刻に進める
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players add UnixTime SynClock 1
function synclock:convert/

schedule function synclock:proceed/ 1s replace

## サンプル表示が有効なとき、時計を持ったプレイヤーに時刻を表示する
execute if data storage synclock:sys {show_sample:true} as @a[nbt={SelectedItem:{id:"minecraft:clock"}}] run function synclock:sample

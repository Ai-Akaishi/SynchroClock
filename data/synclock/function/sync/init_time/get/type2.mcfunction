#> synclock:sync/init_time/get/type2
# 日時取得
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage synclock:sys digit set string storage synclock:sys value_chunk[-1] 0 2
scoreboard players operation #_ SynClock *= #10 SynClock
execute if data storage synclock:sys {digit:"MD"} run scoreboard players add #_ SynClock 0
execute if data storage synclock:sys {digit:"MT"} run scoreboard players add #_ SynClock 1
execute if data storage synclock:sys {digit:"Mj"} run scoreboard players add #_ SynClock 2
execute if data storage synclock:sys {digit:"Mz"} run scoreboard players add #_ SynClock 3
execute if data storage synclock:sys {digit:"ND"} run scoreboard players add #_ SynClock 4
execute if data storage synclock:sys {digit:"NT"} run scoreboard players add #_ SynClock 5
execute if data storage synclock:sys {digit:"Nj"} run scoreboard players add #_ SynClock 6
execute if data storage synclock:sys {digit:"Nz"} run scoreboard players add #_ SynClock 7
execute if data storage synclock:sys {digit:"OD"} run scoreboard players add #_ SynClock 8
execute if data storage synclock:sys {digit:"OT"} run scoreboard players add #_ SynClock 9

data remove storage synclock:sys value_chunk[-1]

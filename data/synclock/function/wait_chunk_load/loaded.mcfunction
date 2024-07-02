#> synclock:wait_chunk_load/loaded
# 初期スポチャンクがロードされたとき
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

kill @e[type=item_display,tag=SynclockHeadDisplay]
schedule clear synclock:sync/check/
schedule clear synclock:sync/init_time/
schedule clear synclock:sync/wait/
schedule clear synclock:sync/
execute positioned 0.0 0.0 0.0 run function synclock:sync/

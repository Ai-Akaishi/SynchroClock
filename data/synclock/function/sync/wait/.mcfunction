#> synclock:sync/wait/
# スキンデータ読み込みが終わるまで待つ
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

execute positioned 0.0 0.0 0.0 as @n[type=item_display,tag=SynclockHeadDisplay] run function synclock:sync/wait/fork

#> synclock:sync/check/fork
# スキンデータ読み込みが終わるまで待つ
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## データが読み込まれていたら、時刻取得に進む
execute if data entity @s item.components."minecraft:profile".properties[0].value run schedule function synclock:sync/init_time/ 1t
## データが読み込まれていない間は、読み込まれるまで待つ
execute unless data entity @s item.components."minecraft:profile".properties[0].value run schedule function synclock:sync/wait/ 1t

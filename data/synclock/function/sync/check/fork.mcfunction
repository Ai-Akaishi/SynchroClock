#> synclock:sync/check/fork
# キャッシュされていたか確認する
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## キャッシュされていたら削除して何もしない
execute if data entity @s item.components."minecraft:profile".properties[0].value run kill @s
## キャッシュされていない時は、読み込まれるまで待つ
execute unless data entity @s item.components."minecraft:profile".properties[0].value run schedule function synclock:sync/wait/ 1t

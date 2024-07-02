#> synclock:sync/
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## SkullOwnerを設定したitem_displayを出す
## 直後にitem.components."minecraft:profile".properties[0].valueが存在
## する ⇨ timestampは古い
## しない ⇨ timestampは最新

## 時刻合わせ用のエンティティを召喚する
execute summon minecraft:item_display run function synclock:sync/set_head

## テクスチャキャッシュチェックをスケジュール
schedule function synclock:sync/check/ 2t replace

## １分ごとにループ
# あとで有効化
# schedule function synclock:sync/ 60s

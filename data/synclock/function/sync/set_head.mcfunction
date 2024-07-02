#> synclock:sync/set_head
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 直後にitem.components."minecraft:profile".properties[0].valueが存在
## する ⇨ timestampは古い
## しない ⇨ timestampは最新

## 先頭のMHFヘッドを時刻取得に使う
data modify storage synclock:sys item set value {id:"player_head",count:1,components:{profile:{name:""}}}
data modify storage synclock:sys item.components.profile.name set from storage synclock:sys head_names[0]
data remove storage synclock:sys head_names[0]
data modify storage synclock:sys head_names append from storage synclock:sys item.components.profile.name

## アイテムを設定する
data modify entity @s item set from storage synclock:sys item

## 判別用のタグをつけておく
tag @s add SynclockHeadDisplay

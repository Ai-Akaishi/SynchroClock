#> synclock:sample

## 年月日時分秒はストレージに一度入れておくと分かりやすいよ
execute store result storage test: _.year int 1 run scoreboard players get Year SynClock
execute store result storage test: _.month int 1 run scoreboard players get Month SynClock
execute store result storage test: _.day int 1 run scoreboard players get Day SynClock
execute store result storage test: _.hour int 1 run scoreboard players get Hour SynClock
execute store result storage test: _.minute int 1 run scoreboard players get Minute SynClock
execute store result storage test: _.second int 1 run scoreboard players get Second SynClock

## 曜日は地道に場合分けが簡単
execute if score Weekday SynClock matches 0 run data modify storage test: _.weekday set value "㈪"
execute if score Weekday SynClock matches 1 run data modify storage test: _.weekday set value "㈫"
execute if score Weekday SynClock matches 2 run data modify storage test: _.weekday set value "㈬"
execute if score Weekday SynClock matches 3 run data modify storage test: _.weekday set value "㈭"
execute if score Weekday SynClock matches 4 run data modify storage test: _.weekday set value "㈮"
execute if score Weekday SynClock matches 5 run data modify storage test: _.weekday set value "㈯"
execute if score Weekday SynClock matches 6 run data modify storage test: _.weekday set value "㈰"

## 先頭のものから順番にリストに入れていくだけ！
data modify storage test: time set value []
data modify storage test: time append string storage test: _.year
data modify storage test: time append value "年"
data modify storage test: time append string storage test: _.month
data modify storage test: time append value "月"
data modify storage test: time append string storage test: _.day
data modify storage test: time append value "日"
data modify storage test: time append string storage test: _.weekday
data modify storage test: time append value " "
## 十の位に0を入れたい時は、0..9の時だけ先に0を入れておく
execute if score Hour SynClock matches 0..9 run data modify storage test: time append value "0"
data modify storage test: time append string storage test: _.hour
data modify storage test: time append value ":"
execute if score Minute SynClock matches 0..9 run data modify storage test: time append value "0"
data modify storage test: time append string storage test: _.minute
data modify storage test: time append value ":"
execute if score Second SynClock matches 0..9 run data modify storage test: time append value "0"
data modify storage test: time append string storage test: _.second

## 表示
title @s actionbar {"storage":"test:","nbt":"time[]","separator":""}

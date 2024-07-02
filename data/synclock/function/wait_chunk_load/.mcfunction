#> synclock:wait_chunk_load/
# 初期スポチャンクがロードされるまで待機する
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 初期スポが読み込まれていたら、時刻同期処理に移る
execute if loaded 0 0 0 run schedule function synclock:wait_chunk_load/loaded 1t

## 初期スポが読み込まれていなければ、待機する
execute unless loaded 0 0 0 run schedule function synclock:wait_chunk_load/ 1t

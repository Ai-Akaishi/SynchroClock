#> synclock:toggle_sample

execute store result storage synclock:sys show_sample byte 1 unless data storage synclock:sys {show_sample:true}

execute if data storage synclock:sys {show_sample:true} run tellraw @a ["[SynchroClock] 時刻表示サンプルが有効になりました。利き手に時計を持つと現実の時刻が表示されます。"]
execute unless data storage synclock:sys {show_sample:true} run tellraw @a ["[SynchroClock] 時刻表示サンプルが無効になりました。"]

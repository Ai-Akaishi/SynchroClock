#> synclock:toggle_sample

execute store result storage synclock:sys show_sample byte 1 unless data storage synclock:sys {show_sample:true}

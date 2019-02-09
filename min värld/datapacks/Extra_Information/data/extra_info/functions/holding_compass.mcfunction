# get player bearing
execute store result score @s ex_info.bear run data get entity @s Rotation[0] 100

# update players action bar
title @s times 0 1 1
execute if score @s ex_info.bear matches ..-34875 run title @s actionbar [{"text":"|   |   |   ", "color": "gray"}, {"text":"S", "bold": "true", "color": "white"}, {"text":"   |   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches -34874..-32625 run title @s actionbar [{"text":"|   |   S  ", "color": "gray"}, {"text":"SSW", "bold": "true", "color": "white"}, {"text":"  |   |   W", "color": "gray"}]
execute if score @s ex_info.bear matches -32624..-30375 run title @s actionbar [{"text":"|   S   |  ", "color": "gray"}, {"text":"SW", "bold": "true", "color": "white"}, {"text":"  |   W   |", "color": "gray"}]
execute if score @s ex_info.bear matches -30374..-28125 run title @s actionbar [{"text":"S   |   |  ", "color": "gray"}, {"text":"WSW", "bold": "true", "color": "white"}, {"text":"  W   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches -28124..-25875 run title @s actionbar [{"text":"|   |   |   ", "color": "gray"}, {"text":"W", "bold": "true", "color": "white"}, {"text":"   |   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches -25874..-23625 run title @s actionbar [{"text":"|   |   W  ", "color": "gray"}, {"text":"WNW", "bold": "true", "color": "white"}, {"text":"  |   |   N", "color": "gray"}]
execute if score @s ex_info.bear matches -23624..-21375 run title @s actionbar [{"text":"|   W   |  ", "color": "gray"}, {"text":"NW", "bold": "true", "color": "white"}, {"text":"  |   N   |", "color": "gray"}]
execute if score @s ex_info.bear matches -21374..-19125 run title @s actionbar [{"text":"W   |   |  ", "color": "gray"}, {"text":"NNW", "bold": "true", "color": "white"}, {"text":"  N   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches -19124..-16875 run title @s actionbar [{"text":"|   |   |   ", "color": "gray"}, {"text":"N", "bold": "true", "color": "white"}, {"text":"   |   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches -16874..-14625 run title @s actionbar [{"text":"|   |   N  ", "color": "gray"}, {"text":"NNE", "bold": "true", "color": "white"}, {"text":"  |   |   E", "color": "gray"}]
execute if score @s ex_info.bear matches -14624..-12375 run title @s actionbar [{"text":"|   N   |  ", "color": "gray"}, {"text":"NE", "bold": "true", "color": "white"}, {"text":"  |   E   |", "color": "gray"}]
execute if score @s ex_info.bear matches -12374..-10125 run title @s actionbar [{"text":"N   |   |  ", "color": "gray"}, {"text":"ENE", "bold": "true", "color": "white"}, {"text":"  E   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches -10124..-7875 run title @s actionbar [{"text":"|   |   |   ", "color": "gray"}, {"text":"E", "bold": "true", "color": "white"}, {"text":"   |   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches -7874..-5625 run title @s actionbar [{"text":"|   |   E  ", "color": "gray"}, {"text":"ESE", "bold": "true", "color": "white"}, {"text":"  |   |   S", "color": "gray"}]
execute if score @s ex_info.bear matches -5624..-3375 run title @s actionbar [{"text":"|   E   |  ", "color": "gray"}, {"text":"SE", "bold": "true", "color": "white"}, {"text":"  |   S   |", "color": "gray"}]
execute if score @s ex_info.bear matches -3374..-1125 run title @s actionbar [{"text":"E   |   |  ", "color": "gray"}, {"text":"SSE", "bold": "true", "color": "white"}, {"text":"  S   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches -1124..1124 run title @s actionbar [{"text":"|   |   |   ", "color": "gray"}, {"text":"S", "bold": "true", "color": "white"}, {"text":"   |   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches 1125..3374 run title @s actionbar [{"text":"|   |   S  ", "color": "gray"}, {"text":"SSW", "bold": "true", "color": "white"}, {"text":"  |   |   W", "color": "gray"}]
execute if score @s ex_info.bear matches 3375..5624 run title @s actionbar [{"text":"|   S   |  ", "color": "gray"}, {"text":"SW", "bold": "true", "color": "white"}, {"text":"  |   W   |", "color": "gray"}]
execute if score @s ex_info.bear matches 5625..7874 run title @s actionbar [{"text":"S   |   |  ", "color": "gray"}, {"text":"WSW", "bold": "true", "color": "white"}, {"text":"  W   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches 7875..10124 run title @s actionbar [{"text":"|   |   |   ", "color": "gray"}, {"text":"W", "bold": "true", "color": "white"}, {"text":"   |   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches 10125..12374 run title @s actionbar [{"text":"|   |   W  ", "color": "gray"}, {"text":"WNW", "bold": "true", "color": "white"}, {"text":"  |   |   N", "color": "gray"}]
execute if score @s ex_info.bear matches 12375..14624 run title @s actionbar [{"text":"|   W   |  ", "color": "gray"}, {"text":"NW", "bold": "true", "color": "white"}, {"text":"  |   N   |", "color": "gray"}]
execute if score @s ex_info.bear matches 14625..16874 run title @s actionbar [{"text":"W   |   |  ", "color": "gray"}, {"text":"NNW", "bold": "true", "color": "white"}, {"text":"  N   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches 16875..19124 run title @s actionbar [{"text":"|   |   |   ", "color": "gray"}, {"text":"N", "bold": "true", "color": "white"}, {"text":"   |   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches 19125..21374 run title @s actionbar [{"text":"|   |   N  ", "color": "gray"}, {"text":"NNE", "bold": "true", "color": "white"}, {"text":"  |   |   E", "color": "gray"}]
execute if score @s ex_info.bear matches 21375..23624 run title @s actionbar [{"text":"|   N   |  ", "color": "gray"}, {"text":"NE", "bold": "true", "color": "white"}, {"text":"  |   E   |", "color": "gray"}]
execute if score @s ex_info.bear matches 23625..25874 run title @s actionbar [{"text":"N   |   |  ", "color": "gray"}, {"text":"ENE", "bold": "true", "color": "white"}, {"text":"  E   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches 25875..28124 run title @s actionbar [{"text":"|   |   |   ", "color": "gray"}, {"text":"E", "bold": "true", "color": "white"}, {"text":"   |   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches 28125..30374 run title @s actionbar [{"text":"|   |   E  ", "color": "gray"}, {"text":"ESE", "bold": "true", "color": "white"}, {"text":"  |   |   S", "color": "gray"}]
execute if score @s ex_info.bear matches 30375..32624 run title @s actionbar [{"text":"|   E   |  ", "color": "gray"}, {"text":"SE", "bold": "true", "color": "white"}, {"text":"  |   S   |", "color": "gray"}]
execute if score @s ex_info.bear matches 32625..34874 run title @s actionbar [{"text":"E   |   |  ", "color": "gray"}, {"text":"SSE", "bold": "true", "color": "white"}, {"text":"  S   |   |", "color": "gray"}]
execute if score @s ex_info.bear matches 34875.. run title @s actionbar [{"text":"|   |   |   ", "color": "gray"}, {"text":"S", "bold": "true", "color": "white"}, {"text":"   |   |   |", "color": "gray"}]
execute as @e[type=minecraft:armor_stand,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
execute if score @s cas_click matches 4 run data merge entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] {Small:1b}
execute if score @s cas_click matches 5 run data merge entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] {Small:0b}
execute if score @s cas_click matches 6 run data merge entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] {ShowArms:1b}
execute if score @s cas_click matches 7 run data merge entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] {ShowArms:0b}
execute if score @s cas_click matches 8 run data merge entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] {NoGravity:1b}
execute if score @s cas_click matches 9 run data merge entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] {NoGravity:0b}
execute if score @s cas_click matches 10 run data merge entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] {NoBasePlate:1b}
execute if score @s cas_click matches 11 run data merge entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] {NoBasePlate:0b}
execute if score @s cas_click matches 12 run data merge entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] {Invisible:1b}
execute if score @s cas_click matches 13 run data merge entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] {Invisible:0b}
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tellraw @s {"text":"Selected armor stand not in range or does not exist anymore.","color":"red"}
tag @e[type=minecraft:armor_stand,tag=casTemp] remove casTemp
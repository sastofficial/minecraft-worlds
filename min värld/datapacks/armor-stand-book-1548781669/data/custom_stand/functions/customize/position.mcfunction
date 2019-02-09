execute as @e[type=minecraft:armor_stand,tag=!Moving,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
execute if entity @s[y_rotation=-45..45] run scoreboard players set pr cas_rot 0
execute if entity @s[y_rotation=45..135] run scoreboard players set pr cas_rot 1
execute if entity @s[y_rotation=135..-135] run scoreboard players set pr cas_rot 2
execute if entity @s[y_rotation=-135..-45] run scoreboard players set pr cas_rot 3
scoreboard players operation br cas_rot = @s cas_click
scoreboard players operation br cas_rot %= 6 cas_pos
execute if score br cas_rot matches 1 run scoreboard players add pr cas_rot 1
execute if score br cas_rot matches 2 run scoreboard players add pr cas_rot 3
execute if score br cas_rot matches 3 run scoreboard players add pr cas_rot 2
execute unless score br cas_rot matches 1..4 run function custom_stand:customize/position/y
execute if score pr cas_rot matches 4.. run scoreboard players remove pr cas_rot 4
execute if score @s cas_click matches 37..40 run function custom_stand:customize/position/1
execute if score @s cas_click matches 43..46 run function custom_stand:customize/position/4
execute if score @s cas_click matches 49..52 run function custom_stand:customize/position/16
execute if score @s cas_click matches 53 rotated as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] positioned as @s align xyz positioned ~0.5 ~ ~0.5 run tp @e[type=minecraft:armor_stand,tag=casTemp,limit=1] ~ ~ ~
execute if score @s cas_click matches 54 run function custom_stand:customize/position/teleport
execute if score @s cas_click matches 55 run function custom_stand:customize/swap_check
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tellraw @s {"text":"Selected armor stand not in range or does not exist anymore.","color":"red"}
tag @e[type=minecraft:armor_stand,tag=casTemp] remove casTemp
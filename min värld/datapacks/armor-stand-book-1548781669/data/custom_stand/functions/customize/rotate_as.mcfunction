execute as @e[type=minecraft:armor_stand,tag=!Animating,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
execute store result score y cas_rot run data get entity @s Rotation[0] 10
execute store result score x cas_rot run data get entity @s Rotation[1] 10
execute if score @s cas_click matches 21 store result entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] Rotation[0] float 0.1 run scoreboard players get y cas_rot
execute store result score dy cas_rot run data get entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] Rotation[0] 10
scoreboard players operation y cas_rot -= dy cas_rot
execute if score @s cas_click matches 22 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_as/head
execute if score @s cas_click matches 27 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_as/body
scoreboard players remove x cas_rot 900
execute if score @s cas_click matches 23 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_as/right_arm
execute if score @s cas_click matches 24 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_as/left_arm
execute if score @s cas_click matches 25 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_as/right_leg
execute if score @s cas_click matches 26 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_as/left_leg
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tellraw @s {"text":"Selected armor stand not in range or does not exist anymore.","color":"red"}
tag @e[type=minecraft:armor_stand,tag=casTemp] remove casTemp
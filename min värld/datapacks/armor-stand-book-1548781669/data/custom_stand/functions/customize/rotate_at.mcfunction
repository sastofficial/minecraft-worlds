execute as @e[type=minecraft:armor_stand,tag=!Animating,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
execute if score @s cas_click matches 14 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_at/all
execute if score @s cas_click matches 15 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_at/head
execute if score @s cas_click matches 16 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_at/right_arm
execute if score @s cas_click matches 17 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_at/left_arm
execute if score @s cas_click matches 18 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_at/right_leg
execute if score @s cas_click matches 19 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_at/left_leg
execute if score @s cas_click matches 20 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] at @s run function custom_stand:customize/rotate_at/body
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tellraw @s {"text":"Selected armor stand not in range or does not exist anymore.","color":"red"}
tag @e[type=minecraft:armor_stand,tag=casTemp] remove casTemp
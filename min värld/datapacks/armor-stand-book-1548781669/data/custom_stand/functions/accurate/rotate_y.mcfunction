execute as @e[type=minecraft:armor_stand,tag=!Animating,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
scoreboard players operation apply cas_rot = @s rotation_y
execute if score @s cas_click matches 128 store result entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] Rotation[0] float 1 run scoreboard players get @s rotation_y
execute if score @s cas_click matches 129 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] run function custom_stand:accurate/rotate_y/head
execute if score @s cas_click matches 130 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] run function custom_stand:accurate/rotate_y/right_arm
execute if score @s cas_click matches 131 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] run function custom_stand:accurate/rotate_y/left_arm
execute if score @s cas_click matches 132 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] run function custom_stand:accurate/rotate_y/right_leg
execute if score @s cas_click matches 133 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] run function custom_stand:accurate/rotate_y/left_leg
execute if score @s cas_click matches 134 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] run function custom_stand:accurate/rotate_y/body
scoreboard players set @s rotation_y -361
scoreboard players enable @s rotation_y
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tellraw @s[scores={cas_click=128..}] {"text":"Selected armor stand not in range or does not exist anymore.","color":"red"}
tag @e[type=minecraft:armor_stand,tag=casTemp] remove casTemp
execute as @e[type=minecraft:armor_stand,tag=!Animating,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
scoreboard players operation apply cas_rot = @s rotation_x
tellraw @s[scores={cas_click=128}] {"text":"Entire armor stand can only be rotated around Y axis.","color":"red"}
execute if score @s cas_click matches 129 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] run function custom_stand:accurate/rotate_x/head
execute if score @s cas_click matches 130 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] run function custom_stand:accurate/rotate_x/right_arm
execute if score @s cas_click matches 131 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] run function custom_stand:accurate/rotate_x/left_arm
execute if score @s cas_click matches 132 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] run function custom_stand:accurate/rotate_x/right_leg
execute if score @s cas_click matches 133 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] run function custom_stand:accurate/rotate_x/left_leg
execute if score @s cas_click matches 134 as @e[type=minecraft:armor_stand,tag=casTemp,limit=1] run function custom_stand:accurate/rotate_x/body
scoreboard players set @s rotation_x -361
scoreboard players enable @s rotation_x
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tellraw @s[scores={cas_click=129..}] {"text":"Selected armor stand not in range or does not exist anymore.","color":"red"}
tag @e[type=minecraft:armor_stand,tag=casTemp] remove casTemp
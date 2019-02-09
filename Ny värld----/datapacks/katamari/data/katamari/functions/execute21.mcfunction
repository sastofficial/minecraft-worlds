scoreboard players set Global rx 180
scoreboard players operation Global rx -= Global rollarc
scoreboard players operation Global rx -= Global ang
scoreboard players operation @s rx = Global rx
execute store result entity @s Rotation[1] float 1.0 run scoreboard players get @s rx
execute store result score @s ry run data get entity @s Rotation[0] 1
scoreboard players add @s ry 180
execute store result entity @s Rotation[0] float 1.0 run scoreboard players get @s ry
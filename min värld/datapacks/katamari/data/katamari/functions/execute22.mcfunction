scoreboard players operation Global rx = Global ang
scoreboard players operation Global rx += Global rollarc
scoreboard players operation @s rx = Global rx
execute store result entity @s Rotation[1] float 1.0 run scoreboard players get @s rx
scoreboard players set @s scratch2 1
scoreboard players operation Global x = Global ballx
scoreboard players operation Global x += @s dx
scoreboard players operation @s x = Global x
execute store result entity @s Pos[0] double 0.00390625 run scoreboard players get @s x
scoreboard players operation Global y = Global bally
scoreboard players operation Global y += @s dy
scoreboard players operation @s y = Global y
execute store result entity @s Pos[1] double 0.00390625 run scoreboard players get @s y
scoreboard players operation Global z = Global ballz
scoreboard players operation Global z += @s dz
scoreboard players operation @s z = Global z
execute store result entity @s Pos[2] double 0.00390625 run scoreboard players get @s z
scoreboard players set @s scratch2 0
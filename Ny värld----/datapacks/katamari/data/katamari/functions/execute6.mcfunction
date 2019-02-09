execute store result score @s vx run data get entity @s Motion[0] 256
scoreboard players operation Global sx = @s vx
execute if score Global sx matches ..-1 run scoreboard players operation Global sx *= minus Constant
execute store result score @s vz run data get entity @s Motion[2] 256
scoreboard players operation Global sz = @s vz
execute if score Global sz matches ..-1 run scoreboard players operation Global sz *= minus Constant
execute if score Global speedsq matches ..1999 at @s unless block ~ ~-1.5 ~ minecraft:air run function katamari:execute5
scoreboard players operation Global vx = Global dx
scoreboard players operation Global vx *= c60 Constant
scoreboard players operation Global vx /= Global dist
scoreboard players operation @s vx = Global vx
execute store result entity @s Motion[0] double 0.00390625 run scoreboard players get @s vx
scoreboard players operation Global vz = Global dz
scoreboard players operation Global vz *= c60 Constant
scoreboard players operation Global vz /= Global dist
scoreboard players operation @s vz = Global vz
execute store result entity @s Motion[2] double 0.00390625 run scoreboard players get @s vz
scoreboard players set Global do_roll 1
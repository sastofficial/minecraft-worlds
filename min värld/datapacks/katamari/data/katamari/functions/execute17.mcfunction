scoreboard players set @s left 1
tp @s @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}]
execute at @s run function katamari:execute16
execute store result score @s ry run data get entity @s Rotation[0] 1
scoreboard players operation Global roll_angle = @s ry
execute store result score @s x run data get entity @s Pos[0] 256
scoreboard players operation Global leftx = @s x
scoreboard players operation Global leftx -= Global ballx
scoreboard players set Global lefty 0
execute store result score @s z run data get entity @s Pos[2] 256
scoreboard players operation Global leftz = @s z
scoreboard players operation Global leftz -= Global ballz
tp @s @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}]
# Start at projected location along roll axis
scoreboard players operation Global x = Global ballx
scoreboard players operation Global x += Global px
scoreboard players operation @s x = Global x
execute store result entity @s Pos[0] double 0.00390625 run scoreboard players get @s x
scoreboard players operation Global y = Global bally
scoreboard players operation Global y += Global py
scoreboard players operation @s y = Global y
execute store result entity @s Pos[1] double 0.00390625 run scoreboard players get @s y
scoreboard players operation Global z = Global ballz
scoreboard players operation Global z += Global pz
scoreboard players operation @s z = Global z
execute store result entity @s Pos[2] double 0.00390625 run scoreboard players get @s z
# Roll angle about roll axis
execute at @s run tp @s ~ ~ ~ facing entity @e[limit=1,scores={current=1..}]
execute store result score @s ry run data get entity @s Rotation[0] 1
scoreboard players operation Global obj_angle = @s ry
scoreboard players set Global roll_dir 1
scoreboard players operation Global arc_delta = Global obj_angle
scoreboard players operation Global arc_delta -= Global roll_angle
scoreboard players add Global arc_delta 360
scoreboard players operation Global arc_delta %= c360 Constant
execute if score Global arc_delta matches 91.. if score Global arc_delta matches ..269 run scoreboard players set Global roll_dir -1
# Entity is behind the roll axis, roll upward
execute if score Global roll_dir matches -1..-1 run function katamari:execute20
# Entity is in front of the roll axis, roll downward
execute if score Global roll_dir matches 1..1 run function katamari:execute23
execute store result score @s rx run data get entity @s Rotation[1] 1
scoreboard players operation Global x_angle = @s rx
# Get unit vector of rolled angle
execute as @s at @s rotated as @s run tp @s ^ ^ ^1
execute store result score @s x run data get entity @s Pos[0] 256
scoreboard players operation Global dirx = @s x
scoreboard players operation Global scratch0 = Global ballx
scoreboard players operation Global scratch0 += Global px
scoreboard players operation Global dirx -= Global scratch0
execute store result score @s y run data get entity @s Pos[1] 256
scoreboard players operation Global diry = @s y
scoreboard players operation Global scratch0 = Global bally
scoreboard players operation Global scratch0 += Global py
scoreboard players operation Global diry -= Global scratch0
execute store result score @s z run data get entity @s Pos[2] 256
scoreboard players operation Global dirz = @s z
scoreboard players operation Global scratch0 = Global ballz
scoreboard players operation Global scratch0 += Global pz
scoreboard players operation Global dirz -= Global scratch0
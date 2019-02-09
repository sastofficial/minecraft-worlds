scoreboard players set @e[type=minecraft:slime,name=Katamari] current_ball 1
execute store result score @e[type=minecraft:armor_stand,name=Marker,limit=1] x run data get entity @e[type=minecraft:armor_stand,name=Marker,limit=1] Pos[0] 256
scoreboard players operation Global dx = @e[type=minecraft:armor_stand,name=Marker,limit=1] x
execute store result score @s x run data get entity @s Pos[0] 256
scoreboard players operation Global dx -= @s x
execute store result score @e[type=minecraft:armor_stand,name=Marker,limit=1] z run data get entity @e[type=minecraft:armor_stand,name=Marker,limit=1] Pos[2] 256
scoreboard players operation Global dz = @e[type=minecraft:armor_stand,name=Marker,limit=1] z
execute store result score @s z run data get entity @s Pos[2] 256
scoreboard players operation Global dz -= @s z
scoreboard players set Global do_roll 0
execute store result score @s vx run data get entity @s Motion[0] 256
scoreboard players operation Global speedsq = @s vx
scoreboard players operation Global scratch1 = Global speedsq
scoreboard players operation Global scratch1 *= Global speedsq
scoreboard players operation Global speedsq = Global scratch1
execute store result score @s vz run data get entity @s Motion[2] 256
scoreboard players operation Global scratch1 = @s vz
scoreboard players operation Global scratch2 = Global scratch1
scoreboard players operation Global scratch2 *= Global scratch1
scoreboard players operation Global speedsq += Global scratch2
execute if score Global speedsq matches 2000.. run scoreboard players set Global do_roll 1
scoreboard players operation Global scratch1 = Global dx
scoreboard players operation Global scratch1 *= Global dx
scoreboard players operation Global scratch2 = Global dz
scoreboard players operation Global scratch2 *= Global dz
scoreboard players operation Global scratch1 += Global scratch2
scoreboard players set Global scratch2 20
scoreboard players operation Global scratch3 = Global scratch1
scoreboard players operation Global scratch3 /= Global scratch2
scoreboard players operation Global scratch3 += Global scratch2
scoreboard players operation Global scratch3 /= c2 Constant
scoreboard players operation Global scratch2 = Global scratch1
scoreboard players operation Global scratch2 /= Global scratch3
scoreboard players operation Global scratch2 += Global scratch3
scoreboard players operation Global scratch2 /= c2 Constant
scoreboard players operation Global scratch3 = Global scratch1
scoreboard players operation Global scratch3 /= Global scratch2
scoreboard players operation Global scratch3 += Global scratch2
scoreboard players operation Global scratch3 /= c2 Constant
scoreboard players operation Global scratch2 = Global scratch1
scoreboard players operation Global scratch2 /= Global scratch3
scoreboard players operation Global scratch2 += Global scratch3
scoreboard players operation Global scratch2 /= c2 Constant
scoreboard players operation Global scratch3 = Global scratch1
scoreboard players operation Global scratch3 /= Global scratch2
scoreboard players operation Global scratch3 += Global scratch2
scoreboard players operation Global scratch3 /= c2 Constant
scoreboard players operation Global scratch2 = Global scratch1
scoreboard players operation Global scratch2 /= Global scratch3
scoreboard players operation Global scratch2 += Global scratch3
scoreboard players operation Global scratch2 /= c2 Constant
scoreboard players operation Global scratch3 = Global scratch1
scoreboard players operation Global scratch3 /= Global scratch2
scoreboard players operation Global scratch3 += Global scratch2
scoreboard players operation Global scratch3 /= c2 Constant
scoreboard players operation Global dist = Global scratch3
execute store result score @s vx run data get entity @s Motion[0] 256
scoreboard players operation @s vx /= c3 Constant
execute store result entity @s Motion[0] double 0.00390625 run scoreboard players get @s vx
execute store result score @s vz run data get entity @s Motion[2] 256
scoreboard players operation @s vz /= c3 Constant
execute store result entity @s Motion[2] double 0.00390625 run scoreboard players get @s vz
execute at @s if entity @e[type=minecraft:armor_stand,name=Marker,limit=1,distance=..5] run function katamari:execute6
execute at @s unless entity @e[type=minecraft:armor_stand,name=Marker,limit=1,distance=..5] run function katamari:execute7
execute if score Global do_roll matches 1.. run function katamari:roll_rotate_entities
execute store result score @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] x run data get entity @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] Pos[0] 256
scoreboard players operation Global ballx = @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] x
execute store result score @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] y run data get entity @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] Pos[1] 256
scoreboard players operation Global bally = @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] y
execute store result score @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] z run data get entity @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] Pos[2] 256
scoreboard players operation Global ballz = @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] z
scoreboard players set @e[scores={stuck=1..}] scratch2 0
execute as @e[scores={stuck=1..}] run function katamari:for8
data merge entity @s {OnGround:0b}
execute at @s run function katamari:execute12
scoreboard players set @e[type=minecraft:slime,name=Katamari] current_ball 0
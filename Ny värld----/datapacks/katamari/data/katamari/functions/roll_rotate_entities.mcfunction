scoreboard players operation Global ballx = @s x
scoreboard players operation Global bally = @s y
scoreboard players operation Global ballz = @s z
scoreboard players operation Global ballvx = @s vx
scoreboard players operation Global ballvy = @s vy
scoreboard players operation Global ballvz = @s vz
# Get direction of movement
scoreboard players add @e _age 1
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Angle\"", "Marker":1b, "Invisible":1b, "NoGravity":1b, "Invulnerable":1b}
scoreboard players add @e _age 1
execute as @e[scores={_age=1..1}] run function katamari:execute15
# Get perpendicular "roll axis"
scoreboard players add @e _age 1
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Angle\"", "Marker":1b, "Invisible":1b, "NoGravity":1b, "Invulnerable":1b}
scoreboard players add @e _age 1
execute as @e[scores={_age=1..1}] run function katamari:execute17
scoreboard players operation Global radius = @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] radius
scoreboard players operation Global mradius = Global radius
scoreboard players operation Global mradius *= minus Constant
scoreboard players set Global rollarc 4000
scoreboard players operation Global rollarc /= @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] radius
scoreboard players operation Global minradsq = Global radius
scoreboard players operation Global scratch0 = Global minradsq
scoreboard players operation Global scratch0 *= Global minradsq
scoreboard players operation Global minradsq = Global scratch0
scoreboard players operation Global minradsq *= c3 Constant
scoreboard players operation Global minradsq /= c4 Constant
kill @e[type=minecraft:armor_stand,name=Angle]
# Handle each entity
execute as @e if score @s stuck = @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] _id run function katamari:execute26
scoreboard players set @s current 1
scoreboard players operation Global curdx = @s dx
scoreboard players operation Global curdy = @s dy
scoreboard players operation Global curdz = @s dz
# Teleport to the same position relative to the ball
scoreboard players operation Global x = Global ballx
scoreboard players operation Global x += Global curdx
scoreboard players operation @s x = Global x
execute store result entity @s Pos[0] double 0.00390625 run scoreboard players get @s x
scoreboard players operation Global y = Global bally
scoreboard players operation Global y += Global curdy
scoreboard players operation @s y = Global y
execute store result entity @s Pos[1] double 0.00390625 run scoreboard players get @s y
scoreboard players operation Global z = Global ballz
scoreboard players operation Global z += Global curdz
scoreboard players operation @s z = Global z
execute store result entity @s Pos[2] double 0.00390625 run scoreboard players get @s z
# Get offset projected onto roll axis
scoreboard players operation Global dot = @s dx
scoreboard players operation Global dot *= Global leftx
scoreboard players operation Global scratch0 = @s dy
scoreboard players operation Global scratch0 *= Global lefty
scoreboard players operation Global dot += Global scratch0
scoreboard players operation Global scratch0 = @s dz
scoreboard players operation Global scratch0 *= Global leftz
scoreboard players operation Global dot += Global scratch0
scoreboard players operation Global dot /= c256 Constant
scoreboard players operation Global px = Global dot
scoreboard players operation Global px *= Global leftx
scoreboard players operation Global px /= c256 Constant
scoreboard players operation Global py = Global dot
scoreboard players operation Global py *= Global lefty
scoreboard players operation Global py /= c256 Constant
scoreboard players operation Global pz = Global dot
scoreboard players operation Global pz *= Global leftz
scoreboard players operation Global pz /= c256 Constant
execute if score Global dot > Global radius run scoreboard players operation Global dot = Global r
execute if score Global dot < Global mradius run scoreboard players operation Global dot = Global mradius
scoreboard players add @e _age 1
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Angle\"", "Marker":1b, "Invisible":1b, "NoGravity":1b, "Invulnerable":1b}
scoreboard players add @e _age 1
execute as @e[scores={_age=1..1}] run function katamari:execute24
kill @e[type=minecraft:armor_stand,name=Angle]
# Get distance from entity to roll axis
scoreboard players operation Global pdx = Global curdx
scoreboard players operation Global pdx -= Global px
scoreboard players operation Global pdy = Global curdy
scoreboard players operation Global pdy -= Global py
scoreboard players operation Global pdz = Global curdz
scoreboard players operation Global pdz -= Global pz
scoreboard players operation Global scratch0 = Global pdx
scoreboard players operation Global scratch0 *= Global pdx
scoreboard players operation Global scratch1 = Global pdy
scoreboard players operation Global scratch1 *= Global pdy
scoreboard players operation Global scratch0 += Global scratch1
scoreboard players operation Global scratch1 = Global pdz
scoreboard players operation Global scratch1 *= Global pdz
scoreboard players operation Global scratch0 += Global scratch1
scoreboard players set Global scratch1 20
scoreboard players operation Global scratch2 = Global scratch0
scoreboard players operation Global scratch2 /= Global scratch1
scoreboard players operation Global scratch2 += Global scratch1
scoreboard players operation Global scratch2 /= c2 Constant
scoreboard players operation Global scratch1 = Global scratch0
scoreboard players operation Global scratch1 /= Global scratch2
scoreboard players operation Global scratch1 += Global scratch2
scoreboard players operation Global scratch1 /= c2 Constant
scoreboard players operation Global scratch2 = Global scratch0
scoreboard players operation Global scratch2 /= Global scratch1
scoreboard players operation Global scratch2 += Global scratch1
scoreboard players operation Global scratch2 /= c2 Constant
scoreboard players operation Global scratch1 = Global scratch0
scoreboard players operation Global scratch1 /= Global scratch2
scoreboard players operation Global scratch1 += Global scratch2
scoreboard players operation Global scratch1 /= c2 Constant
scoreboard players operation Global scratch2 = Global scratch0
scoreboard players operation Global scratch2 /= Global scratch1
scoreboard players operation Global scratch2 += Global scratch1
scoreboard players operation Global scratch2 /= c2 Constant
scoreboard players operation Global scratch1 = Global scratch0
scoreboard players operation Global scratch1 /= Global scratch2
scoreboard players operation Global scratch1 += Global scratch2
scoreboard players operation Global scratch1 /= c2 Constant
scoreboard players operation Global scratch2 = Global scratch0
scoreboard players operation Global scratch2 /= Global scratch1
scoreboard players operation Global scratch2 += Global scratch1
scoreboard players operation Global scratch2 /= c2 Constant
scoreboard players operation Global pdist = Global scratch2
# Add roll axis projected vector with offset from projection
scoreboard players operation Global dx = Global px
scoreboard players operation Global scratch1 = Global dirx
scoreboard players operation Global scratch1 *= Global pdist
scoreboard players operation Global scratch1 /= c256 Constant
scoreboard players operation Global dx += Global scratch1
scoreboard players operation @s dx = Global dx
scoreboard players operation Global dy = Global py
scoreboard players operation Global scratch1 = Global diry
scoreboard players operation Global scratch1 *= Global pdist
scoreboard players operation Global scratch1 /= c256 Constant
scoreboard players operation Global dy += Global scratch1
scoreboard players operation @s dy = Global dy
scoreboard players operation Global dz = Global pz
scoreboard players operation Global scratch1 = Global dirz
scoreboard players operation Global scratch1 *= Global pdist
scoreboard players operation Global scratch1 /= c256 Constant
scoreboard players operation Global dz += Global scratch1
scoreboard players operation @s dz = Global dz
scoreboard players operation Global distsq = @s dx
scoreboard players operation Global scratch1 = Global distsq
scoreboard players operation Global scratch1 *= Global distsq
scoreboard players operation Global distsq = Global scratch1
scoreboard players operation Global scratch1 = @s dy
scoreboard players operation Global scratch2 = Global scratch1
scoreboard players operation Global scratch2 *= Global scratch1
scoreboard players operation Global distsq += Global scratch2
scoreboard players operation Global scratch1 = @s dz
scoreboard players operation Global scratch2 = Global scratch1
scoreboard players operation Global scratch2 *= Global scratch1
scoreboard players operation Global distsq += Global scratch2
# Store new entity offset
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
scoreboard players set @s current 0
execute if score Global Debug matches 1.. run function katamari:execute25
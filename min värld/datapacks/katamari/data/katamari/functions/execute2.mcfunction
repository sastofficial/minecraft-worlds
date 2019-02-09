scoreboard players add @e _age 1
summon minecraft:slime ~ ~ ~ {CustomName:"\"Katamari\"", Silent:1b, Size:0, Invulnerable:1}
scoreboard players add @e _age 1
scoreboard players add Global _unique 1
scoreboard players operation @e[type=minecraft:slime,name=Katamari,scores={_age=1..1}] _id = Global _unique
scoreboard players operation @s ball = Global _unique
scoreboard players operation Global _id = @s ball
execute as @e if score @s _id = Global _id run function katamari:execute1
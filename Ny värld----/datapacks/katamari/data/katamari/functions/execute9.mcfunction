scoreboard players set @s nonstick 1
scoreboard players add Global _unique 1
execute unless score @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] _id matches 0.. run scoreboard players operation @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] _id = Global _unique
scoreboard players operation @s stuck = @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] _id
data merge entity @s {NoAI:1b, Gravity:0b, Silent:1b, Invulnerable:1b}
execute at @s run playsound minecraft:entity.item.pickup block @a
scoreboard players operation Global scratch3 = @s mass
scoreboard players operation @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] mass += Global scratch3
scoreboard players operation Global scratch4 = @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] mass
scoreboard players set Global scratch5 20
scoreboard players operation Global scratch6 = Global scratch4
scoreboard players operation Global scratch6 /= Global scratch5
scoreboard players operation Global scratch6 += Global scratch5
scoreboard players operation Global scratch6 /= c2 Constant
scoreboard players operation Global scratch5 = Global scratch4
scoreboard players operation Global scratch5 /= Global scratch6
scoreboard players operation Global scratch5 += Global scratch6
scoreboard players operation Global scratch5 /= c2 Constant
scoreboard players operation Global scratch6 = Global scratch4
scoreboard players operation Global scratch6 /= Global scratch5
scoreboard players operation Global scratch6 += Global scratch5
scoreboard players operation Global scratch6 /= c2 Constant
scoreboard players operation Global scratch5 = Global scratch4
scoreboard players operation Global scratch5 /= Global scratch6
scoreboard players operation Global scratch5 += Global scratch6
scoreboard players operation Global scratch5 /= c2 Constant
scoreboard players operation Global scratch6 = Global scratch4
scoreboard players operation Global scratch6 /= Global scratch5
scoreboard players operation Global scratch6 += Global scratch5
scoreboard players operation Global scratch6 /= c2 Constant
scoreboard players operation Global scratch5 = Global scratch4
scoreboard players operation Global scratch5 /= Global scratch6
scoreboard players operation Global scratch5 += Global scratch6
scoreboard players operation Global scratch5 /= c2 Constant
scoreboard players operation Global scratch6 = Global scratch4
scoreboard players operation Global scratch6 /= Global scratch5
scoreboard players operation Global scratch6 += Global scratch5
scoreboard players operation Global scratch6 /= c2 Constant
scoreboard players operation Global radius = Global scratch6
scoreboard players operation Global radius *= c7 Constant
scoreboard players operation @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] radius = Global radius
scoreboard players operation Global size = @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] radius
scoreboard players operation Global size /= c150 Constant
scoreboard players operation @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] size = Global size
execute store result entity @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] Size int 1.0 run scoreboard players get @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] size
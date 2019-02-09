scoreboard players set @s nonstick 1
scoreboard players set @s mass 120
scoreboard players operation Global scratch0 = @s mass
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
scoreboard players operation Global radius = Global scratch2
scoreboard players operation Global radius *= c5 Constant
scoreboard players operation @s radius = Global radius
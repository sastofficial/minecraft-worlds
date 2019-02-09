execute store result score @s rx run data get entity @s Rotation[1] 1
scoreboard players operation Global ang = @s rx
scoreboard players set Global flip 0
scoreboard players operation Global flipangle = Global rollarc
scoreboard players remove Global flipangle 90
execute if score Global ang < Global flipangle run scoreboard players set Global flip 1
execute if score Global flip matches 1.. run function katamari:execute18
execute unless score Global flip matches 1.. run function katamari:execute19
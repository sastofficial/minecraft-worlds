execute as @e[type=minecraft:armor_stand,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
data merge entity @e[type=minecraft:armor_stand,tag=casTemp,limit=1] {Glowing:1b}
tag @e[type=minecraft:armor_stand,tag=casTemp,limit=1] add casGlowing
tag @e[type=minecraft:armor_stand,tag=casTemp,limit=1] remove casDisco
scoreboard players set @e[type=minecraft:armor_stand,tag=casTemp,limit=1] cas_click 0
team leave @e[type=minecraft:armor_stand,tag=casTemp,limit=1]
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tellraw @s {"text":"Selected armor stand not in range or does not exist anymore.","color":"red"}
tag @e[type=minecraft:armor_stand,tag=casTemp] remove casTemp
playsound minecraft:ui.button.click master @s
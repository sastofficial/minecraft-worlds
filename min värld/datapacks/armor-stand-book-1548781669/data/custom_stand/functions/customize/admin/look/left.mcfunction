execute as @e[type=minecraft:armor_stand,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
tag @e[type=minecraft:armor_stand,tag=casTemp,limit=1] add casLook
tag @e[type=minecraft:armor_stand,tag=casTemp,limit=1] add casLookLeft
tag @e[type=minecraft:armor_stand,tag=casTemp,limit=1] add casTick
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tellraw @s {"text":"Selected armor stand not in range or does not exist anymore.","color":"red"}
tag @e[type=minecraft:armor_stand,tag=casTemp] remove casTemp
playsound minecraft:ui.button.click master @s
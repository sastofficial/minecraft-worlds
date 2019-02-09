execute as @e[type=minecraft:armor_stand,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
tag @e[type=minecraft:armor_stand,tag=casTemp,limit=1] remove casLookHead
tag @e[type=minecraft:armor_stand,tag=casTemp,limit=1,tag=!casLookAll,tag=!casLookHead,tag=!casLookRight,tag=!casLookLeft] remove casLook
tag @e[type=minecraft:armor_stand,tag=casTemp,limit=1,tag=!casSpin,tag=!casDisco,tag=!casLook] remove casTick
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tellraw @s {"text":"Selected armor stand not in range or does not exist anymore.","color":"red"}
tag @e[type=minecraft:armor_stand,tag=casTemp] remove casTemp
playsound minecraft:ui.button.click master @s
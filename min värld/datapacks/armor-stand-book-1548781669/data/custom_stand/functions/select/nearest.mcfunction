execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..30] run function custom_stand:select/uuid
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tellraw @s {"text":"No armor stands nearby.","color":"red"}
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tag @s remove casSelected
tag @e[type=minecraft:armor_stand,tag=casTemp] remove casTemp
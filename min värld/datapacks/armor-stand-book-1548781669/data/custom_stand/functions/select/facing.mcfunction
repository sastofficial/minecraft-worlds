execute anchored eyes positioned ^ ^ ^ run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["casPosition"]}
execute as @e[type=area_effect_cloud,tag=casPosition] at @s rotated as @p[tag=casTemp] run function custom_stand:select/position
execute positioned ^ ^ ^20 as @e[type=minecraft:armor_stand,distance=..25] run function custom_stand:select/check_position
execute as @e[type=minecraft:armor_stand,tag=casTemp,limit=1,sort=nearest] run function custom_stand:select/uuid
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tellraw @s {"text":"Not looking at an armor stand or armor stand too far away.","color":"red"}
execute unless entity @e[type=minecraft:armor_stand,tag=casTemp] run tag @s remove casSelected
tag @e[type=minecraft:armor_stand,tag=casTemp] remove casTemp
tp @s ~ ~ ~ ~ 0
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["casRotation"]}
execute as @e[type=area_effect_cloud,tag=casRotation] at @s run function custom_stand:customize/rotate_at/rotate
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get y cas_rot
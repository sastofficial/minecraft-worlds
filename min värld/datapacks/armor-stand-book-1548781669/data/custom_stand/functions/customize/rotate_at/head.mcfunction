data merge entity @s {Pose:{Head:[90f,90f,0f]}}
execute if entity @s[nbt={Small:0b}] positioned ^ ^1.6 ^ run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["casRotation"]}
execute if entity @s[nbt={Small:1b}] positioned ^ ^0.8 ^ run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["casRotation"]}
execute as @e[type=area_effect_cloud,tag=casRotation] at @s run function custom_stand:customize/rotate_at/rotate
execute store result score dy cas_rot run data get entity @s Rotation[0] 10
scoreboard players operation y cas_rot -= dy cas_rot
execute store result entity @s Pose.Head[0] float 0.1 run scoreboard players get x cas_rot
execute store result entity @s Pose.Head[1] float 0.1 run scoreboard players get y cas_rot
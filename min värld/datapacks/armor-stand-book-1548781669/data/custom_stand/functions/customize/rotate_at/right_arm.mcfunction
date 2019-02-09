data merge entity @s {Pose:{RightArm:[90f,90f,0f]}}
execute if entity @s[nbt={Small:0b}] positioned ^-0.3 ^1.4 ^ run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["casRotation"]}
execute if entity @s[nbt={Small:1b}] positioned ^-0.15 ^0.7 ^ run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["casRotation"]}
execute as @e[type=area_effect_cloud,tag=casRotation] at @s run function custom_stand:customize/rotate_at/rotate
execute store result score dy cas_rot run data get entity @s Rotation[0] 10
scoreboard players operation y cas_rot -= dy cas_rot
scoreboard players remove x cas_rot 900
execute store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players get x cas_rot
execute store result entity @s Pose.RightArm[1] float 0.1 run scoreboard players get y cas_rot
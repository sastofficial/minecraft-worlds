execute store success score check cas_rot run data get entity @s Pose.Head[0]
execute if score check cas_rot matches 0 run data merge entity @s {Pose:{Head:[90f,0f,0f]}}
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get apply cas_rot
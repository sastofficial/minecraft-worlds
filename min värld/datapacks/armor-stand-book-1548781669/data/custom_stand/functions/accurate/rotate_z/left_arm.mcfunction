execute store success score check cas_rot run data get entity @s Pose.LeftArm[2]
execute if score check cas_rot matches 0 run data merge entity @s {Pose:{LeftArm:[-10f,0f,90f]}}
execute store result entity @s Pose.LeftArm[2] float 1 run scoreboard players get apply cas_rot
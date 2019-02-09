execute store success score check cas_rot run data get entity @s Pose.LeftLeg[1]
execute if score check cas_rot matches 0 run data merge entity @s {Pose:{LeftLeg:[-1f,90f,-1f]}}
execute store result entity @s Pose.LeftLeg[1] float 1 run scoreboard players get apply cas_rot
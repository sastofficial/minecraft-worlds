execute store success score check cas_rot run data get entity @s Pose.RightLeg[0]
execute if score check cas_rot matches 0 run data merge entity @s {Pose:{RightLeg:[90f,0f,1f]}}
execute store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get apply cas_rot
execute store success score check cas_rot run data get entity @s Pose.RightLeg[2]
execute if score check cas_rot matches 0 run data merge entity @s {Pose:{RightLeg:[1f,0f,90f]}}
execute store result entity @s Pose.RightLeg[2] float 1 run scoreboard players get apply cas_rot
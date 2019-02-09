data merge entity @s {Pose:{RightLeg:[90f,90f,0f]}}
execute store result entity @s Pose.RightLeg[0] float 0.1 run scoreboard players get x cas_rot
execute store result entity @s Pose.RightLeg[1] float 0.1 run scoreboard players get y cas_rot
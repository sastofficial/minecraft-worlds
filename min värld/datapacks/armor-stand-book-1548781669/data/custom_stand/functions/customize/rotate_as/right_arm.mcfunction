data merge entity @s {Pose:{RightArm:[90f,90f,0f]}}
execute store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players get x cas_rot
execute store result entity @s Pose.RightArm[1] float 0.1 run scoreboard players get y cas_rot
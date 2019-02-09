data merge entity @s {Pose:{Head:[90f,90f,0f]}}
execute store result entity @s Pose.Head[0] float 0.1 run scoreboard players get x cas_rot
execute store result entity @s Pose.Head[1] float 0.1 run scoreboard players get y cas_rot
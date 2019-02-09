scoreboard objectives add left dummy
scoreboard objectives add dot dummy
scoreboard objectives add arc_delta dummy
scoreboard objectives add z dummy
scoreboard objectives add x dummy
scoreboard objectives add _age dummy
scoreboard objectives add mass dummy
scoreboard objectives add r dummy
scoreboard objectives add mradius dummy
scoreboard objectives add x_angle dummy
scoreboard objectives add distsq dummy
scoreboard objectives add flip dummy
scoreboard objectives add pdx dummy
scoreboard objectives add ballz dummy
scoreboard objectives add bally dummy
scoreboard objectives add ballx dummy
scoreboard objectives add nonstick dummy
scoreboard objectives add pdy dummy
scoreboard objectives add pdz dummy
scoreboard objectives add _id dummy
scoreboard objectives add sz dummy
scoreboard objectives add roll_angle dummy
scoreboard objectives add minradsq dummy
scoreboard objectives add Debug dummy
scoreboard objectives add dy dummy
scoreboard objectives add dx dummy
scoreboard objectives add dz dummy
scoreboard objectives add sx dummy
scoreboard objectives add step dummy
scoreboard objectives add y dummy
scoreboard objectives add leftz dummy
scoreboard objectives add lefty dummy
scoreboard objectives add leftx dummy
scoreboard objectives add dirx dummy
scoreboard objectives add diry dummy
scoreboard objectives add current_ball dummy
scoreboard objectives add ball dummy
scoreboard objectives add sizesq dummy
scoreboard objectives add curdx dummy
scoreboard objectives add curdy dummy
scoreboard objectives add curdz dummy
scoreboard objectives add roll_dir dummy
scoreboard objectives add forward dummy
scoreboard objectives add dirz dummy
scoreboard objectives add mass_ratio dummy
scoreboard objectives add stuck dummy
scoreboard objectives add current dummy
scoreboard objectives add obj_angle dummy
scoreboard objectives add ry dummy
scoreboard objectives add rx dummy
scoreboard objectives add py dummy
scoreboard objectives add px dummy
scoreboard objectives add pz dummy
scoreboard objectives add rollarc dummy
scoreboard objectives add size dummy
scoreboard objectives add speedsq dummy
scoreboard objectives add pdist dummy
scoreboard objectives add vz dummy
scoreboard objectives add vy dummy
scoreboard objectives add vx dummy
scoreboard objectives add ballvy dummy
scoreboard objectives add ballvz dummy
scoreboard objectives add radius dummy
scoreboard objectives add do_roll dummy
scoreboard objectives add _unique dummy
scoreboard objectives add ballvx dummy
scoreboard objectives add flipangle dummy
scoreboard objectives add dist dummy
scoreboard objectives add ang dummy
scoreboard objectives add Constant dummy
scoreboard players set c360 Constant 360
scoreboard players set c256 Constant 256
scoreboard players set c4 Constant 4
scoreboard players set c150 Constant 150
scoreboard players set c7 Constant 7
scoreboard players set c60 Constant 60
scoreboard players set minus Constant -1
scoreboard players set c3 Constant 3
scoreboard players set c5 Constant 5
scoreboard players set c2 Constant 2
scoreboard objectives add scratch6 dummy
scoreboard objectives add scratch5 dummy
scoreboard objectives add scratch4 dummy
scoreboard objectives add scratch3 dummy
scoreboard objectives add scratch2 dummy
scoreboard objectives add scratch1 dummy
scoreboard objectives add scratch0 dummy
execute as @e[type=minecraft:slime,name=Katamari] at @s rotated as @s run tp @s ~ -100 ~
kill @e[type=minecraft:slime,name=Katamari]
kill @e[type=minecraft:armor_stand,name=Angle]
kill @e[scores={stuck=1..}]
execute as @a at @s positioned ~ ~1.6 ~ positioned ^ ^ ^5 run function katamari:execute2
scoreboard players set Global Debug 0
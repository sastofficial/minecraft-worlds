data merge entity @s {Pose:{LeftLeg:[0f,0f,15f]}}
scoreboard players add @s cvt_leftlegpose 1
playsound minecraft:entity.item_frame.rotate_item master @a
tag @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:"{\"text\":\"left leg\"}"}}}},tag=!cvt_signalled] add cvt_signalled
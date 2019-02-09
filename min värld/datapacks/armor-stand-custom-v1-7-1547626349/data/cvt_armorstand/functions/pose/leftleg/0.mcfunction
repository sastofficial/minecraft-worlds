data merge entity @s {Pose:{LeftLeg:[0f,0f,0f]}}
scoreboard players set @s cvt_leftlegpose 0
playsound minecraft:entity.item_frame.rotate_item master @a
tag @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:"{\"text\":\"left leg\"}"}}}},tag=!cvt_signalled] add cvt_signalled
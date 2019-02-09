data merge entity @s {Pose:{RightLeg:[0f,0f,0f]}}
scoreboard players set @s cvt_rightlegpose 0
playsound minecraft:entity.item_frame.rotate_item master @a
tag @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:"{\"text\":\"right leg\"}"}}}},tag=!cvt_signalled] add cvt_signalled
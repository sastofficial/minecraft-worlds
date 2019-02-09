data merge entity @s {Pose:{RightLeg:[-90f,30f,0f]}}
scoreboard players add @s cvt_rightlegpose 1
playsound minecraft:entity.item_frame.rotate_item master @a
tag @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:"{\"text\":\"right leg\"}"}}}},tag=!cvt_signalled] add cvt_signalled
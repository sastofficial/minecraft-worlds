data merge entity @s {Pose:{RightArm:[-10f,0f,10f]}}
scoreboard players set @s cvt_rightarmpose 0
playsound minecraft:entity.item_frame.rotate_item master @a
tag @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:"{\"text\":\"right arm\"}"}}}},tag=!cvt_signalled] add cvt_signalled
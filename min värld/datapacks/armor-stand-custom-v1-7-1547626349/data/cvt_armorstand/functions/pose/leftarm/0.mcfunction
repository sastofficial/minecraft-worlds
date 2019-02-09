data merge entity @s {Pose:{LeftArm:[-10f,0f,-10f]}}
scoreboard players set @s cvt_leftarmpose 0
playsound minecraft:entity.item_frame.rotate_item master @a
tag @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:"{\"text\":\"left arm\"}"}}}},tag=!cvt_signalled] add cvt_signalled
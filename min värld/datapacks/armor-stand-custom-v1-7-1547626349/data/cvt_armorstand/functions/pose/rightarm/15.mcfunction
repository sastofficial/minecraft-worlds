data merge entity @s {Pose:{RightArm:[135f,0f,0f]}}
scoreboard players add @s cvt_rightarmpose 1
playsound minecraft:entity.item_frame.rotate_item master @a
tag @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:"{\"text\":\"right arm\"}"}}}},tag=!cvt_signalled] add cvt_signalled
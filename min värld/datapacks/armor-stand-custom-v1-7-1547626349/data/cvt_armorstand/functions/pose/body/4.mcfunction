data merge entity @s {Pose:{Body:[0f,5f,0f]}}
scoreboard players add @s cvt_bodypose 1
playsound minecraft:entity.item_frame.rotate_item master @a
tag @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:"{\"text\":\"body\"}"}}}},tag=!cvt_signalled] add cvt_signalled
data merge entity @s {Pose:{Head:[0f,45f,0f]}}
scoreboard players add @s cvt_headpose 1
playsound minecraft:entity.item_frame.rotate_item master @a
tag @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:"{\"text\":\"head\"}"}}}},tag=!cvt_signalled] add cvt_signalled
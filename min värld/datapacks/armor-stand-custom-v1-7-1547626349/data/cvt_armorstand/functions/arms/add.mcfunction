data merge entity @s {ShowArms:1b,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],RightArm:[-10f,0f,10f],LeftArm:[-10f,0f,-10f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
playsound minecraft:entity.item_frame.add_item master @a
kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:stick",Count:2b}},tag=!cvt_removed]

# For Posing
scoreboard players set @s cvt_headpose 0
scoreboard players set @s cvt_bodypose 0
scoreboard players set @s cvt_leftarmpose 0
scoreboard players set @s cvt_rightarmpose 0
scoreboard players set @s cvt_leftlegpose 0
scoreboard players set @s cvt_rightlegpose 0